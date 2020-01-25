# frozen_string_literal: true

RSpec.describe SmartButtons do
  it 'returns delete button HTML' do
    html = '<form action="/delete_this_object" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="delete" /><button name="button" type="submit"></button></form>'
    expect(delete_button('/delete_this_object')).to eq html
  end

  it 'returns delete button HTML with HTML inside' do
    html = '<form action="/delete_this_object" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="delete" /><button name="button" type="submit">one_more_tag</button></form>'
    expect(delete_button('/delete_this_object') { 'one_more_tag' }).to eq html
  end

  it 'returns delete button HTML with form options' do
    html = '<form class="some_class" action="/delete_this_object" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="delete" /><button name="button" type="submit"></button></form>'
    expect(delete_button('/delete_this_object', form_options: { class: :some_class })).to eq html
  end

  it 'returns delete button HTML with button options' do
    html = '<form action="/delete_this_object" accept-charset="UTF-8" method="post"><input name="utf8" type="hidden" value="&#x2713;" /><input type="hidden" name="_method" value="delete" /><button name="button" type="submit" class="some_class"></button></form>'
    expect(delete_button('/delete_this_object', button_options: { class: :some_class })).to eq html
  end
end
