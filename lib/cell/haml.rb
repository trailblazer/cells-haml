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
  end
end
