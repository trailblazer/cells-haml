require 'tilt/haml'

module Cell
  module Haml
    def template_options_for(options)
      {
        template_class: ::Tilt::HamlTemplate,
        escape_html:    false,
        escape_attrs:   false,
        suffix:         "haml"
      }
    end

    attr_writer :output_buffer

    if Object.const_defined?(:ActionView)
      require "cell/haml/rails"
      include Cell::Haml::Rails
    end
  end
end
