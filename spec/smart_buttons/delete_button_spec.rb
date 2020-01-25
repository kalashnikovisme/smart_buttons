# frozen_string_literal: true

RSpec.describe SmartButtons do
  it 'returns delete button HTML' do
    html = <<-HTML
      <form action="/delete_this_object" accept-charset="UTF-8" method="post">
        <input name="utf8" type="hidden" value="&#x2713;" />
        <input type="hidden" name="_method" value="delete" />
        <button name="button" type="submit"></button>
      </form>
    HTML
    expect(delete_button(url: '/delete_this_object')).to(
      eq(html.to_s.gsub(/\n\s\s*/, '').gsub(/^\s\s*/, '').gsub("\n", '')))
  end

  it 'returns delete button HTML with HTML inside' do
    html = <<-HTML
      <form action="/delete_this_object" accept-charset="UTF-8" method="post">
        <input name="utf8" type="hidden" value="&#x2713;" />
        <input type="hidden" name="_method" value="delete" />
        <button name="button" type="submit">one_more_tag</button>
      </form>
    HTML
    expect(delete_button(url: '/delete_this_object') { 'one_more_tag' }).to(
      eq(html.to_s.gsub(/\n\s\s*/, '').gsub(/^\s\s*/, '').gsub("\n", ''))
    )
  end

  it 'returns delete button HTML with form options' do
    html = <<-HTML
      <form class="some_class" action="/delete_this_object" accept-charset="UTF-8" method="post">
        <input name="utf8" type="hidden" value="&#x2713;" />
        <input type="hidden" name="_method" value="delete" />
        <button name="button" type="submit"></button>
      </form>
    HTML
    expect(delete_button(url: '/delete_this_object', form_options: { class: :some_class })).to(
      eq(html.to_s.gsub(/\n\s\s*/, '').gsub(/^\s\s*/, '').gsub("\n", ''))
    )
  end

  it 'returns delete button HTML with button options' do
    html = <<-HTML
      <form action="/delete_this_object" accept-charset="UTF-8" method="post">
        <input name="utf8" type="hidden" value="&#x2713;" />
        <input type="hidden" name="_method" value="delete" />
        <button name="button" type="submit" class="some_class"></button>
      </form>
    HTML
    expect(delete_button(url: '/delete_this_object', button_options: { class: :some_class })).to(
      eq(html.to_s.gsub(/\n\s\s*/, '').gsub(/^\s\s*/, '').gsub("\n", ''))
    )
  end
end
