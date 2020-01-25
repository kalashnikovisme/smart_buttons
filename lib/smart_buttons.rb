# frozen_string_literal: true

require 'smart_buttons/version'

module SmartButtons
  def delete_button(url, form_options: {}, button_options: {})
    form_tag url, method: :delete, **form_options do
      button_tag **button_options do
        yield if block_given?
      end
    end
  end
end
