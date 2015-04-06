require_relative "clipboard_formatter/version"

require 'rspec/core/formatters'
require 'clipboard'

class ClipboardFormatter
  RSpec::Core::Formatters.register self, :dump_summary

  def initialize(*)
  end

  def dump_summary(notification)
    if notification.failed_examples.present?
      locations = Hash.new{ |h,k| h[k] = [] }

      notification.failed_examples.each{ |fe|
        locations[fe.metadata[:file_path]] << fe.metadata[:line_number]
      }

      Clipboard.copy "rspec " + locations.map{ |file_path, line_numbers|
        [file_path, *line_numbers]*":"
      }*" "
    end
  end
end

