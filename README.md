# Cells::Haml

Haml support for Cells.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'cells-haml'
```

This gem currently only works properly with Haml 4.1.0.beta.1 or newer.

## HTML Escaping

Cells doesn't escape except when you tell it to do. However, you may run into problems when using Rails helpers. Internally, those helpers often blindly escape. This is not Cells' fault but a design flaw in Rails.

As a first step, try this and see if it helps.

```ruby
class SongCell < Cell::ViewModel
  include ActionView::Helpers::FormHelper
  include Cell::Haml # include Haml _after_ AV helpers.

  # ..
end
```

If that doesn't work, [read the docs](http://trailblazer.to/gems/cells/cells4.html#html-escaping).

## Dependencies

This gem works with Tilt 1.4 and 2.0, and hence allows you to use it from Rails 3.2 upwards.
