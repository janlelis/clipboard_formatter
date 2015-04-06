# RSpec Clipboard Formatter [![[version]](https://badge.fury.io/rb/clipboard_formatter.svg)](http://badge.fury.io/rb/clipboard_formatter)

Copies the command to run all failed examples to your clipboard.

## Setup

Add the gem to your `Gemfile`:

```ruby
gem 'clipboard_formatter'
```

Add the formatter to your rspec options, e.g. in a `.rspec` file. You probably want to set it as an additional one, instead of the only one:

```
--format documentation
--require clipboard_formatter --format ClipboardFormatter
```


## Usage

Run your RSpec suite, but let some tests fail. Then use your clipboard.


## MIT License

Copyright (C) 2015 Jan Lelis <http://janlelis.com>. Released under the MIT license.

