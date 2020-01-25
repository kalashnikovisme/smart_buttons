# frozen_string_literal: true

module SmartButtons::PatchButton
  def patch_button(**options)
    simple_form_for options[:record], url: build_url(options), method: :patch, html: options[:form_options] do |f|
      options[:attributes].each do |attr|
        concat build_input attr, options, f
      end
      concat(button_tag(type: :submit, **options[:button_options]) do
        yield if block_given?
      end)
    end
  end

  private

  def build_url(options)
    {
      controller: options[:controller],
      action: options[:action],
      id: options[:record].id
    }.merge(options[:parameters])
  end

  def build_input(attr, options, form)
    form.input(
      attr[0],
      input_html: {
        value: attr[1],
        id: "#{options[:model_name]}_#{attr[0]}",
        name: "#{options[:model_name]}[#{attr[0]}]"
      },
      as: :hidden
    )
  end
end
