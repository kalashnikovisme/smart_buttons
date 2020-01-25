# frozen_string_literal: true

require 'smart_buttons/version'

module SmartButtons
  def patch_button(record:, controller:, action:, parameters:, model_name:, attributes: {}, form_options: {}, button_options: {})
    simple_form_for record, url: { controller: controller, action: action, id: record.id }.merge(parameters), method: :patch, html: form_options do |f|
      attributes.each do |attr|
        concat f.input attr[0], input_html: { value: attr[1], id: "#{model_name}_#{attr[0]}", name: "#{model_name}[#{attr[0]}]" }, as: :hidden
      end
      concat(button_tag(type: :submit, **button_options) do
        yield if block_given?
      end)
    end
  end

  def delete_button(url:, form_options: {}, button_options: {})
    form_tag url, method: :delete, **form_options do
      button_tag(**button_options) do
        yield if block_given?
      end
    end
  end
end
