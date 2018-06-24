require "cells"
require "tilt/haml"

module Cell
  module Haml
    def template_options_for(_options)
      {
        template_class: ::Tilt::HamlTemplate,
        escape_html:    false,
        escape_attrs:   false,
        suffix:         "haml"
      }
    end
  end

  class Cell::ViewModelHaml < Cell::ViewModel
    include Cell::Haml
  end
end
