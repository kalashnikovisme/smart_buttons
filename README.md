# SmartButtons [![Build Status](https://github.com/kalashnikovisme/smart_buttons/workflows/Ruby/badge.svg)](https://github.com/kalashnikovisme/smart_buttons/actions)

Replacement of magical `link_to` method with static HTML

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'smart_buttons'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smart_buttons

## Usage

**Don't forget include SmartButtons to your ApplicationHelper**

*app/helpers/application_helper.rb*
```ruby
module ApplicationHelper
  include SmartButtons
end
```

### HTTP / DELETE

If you need button with HTTP/DELETE method, just use

```ruby
delete_button url, form_options: { class: :some_form_class }, button_options: { class: :some_button_class } do
  here_content_which_will_be_inside_of_button
end
```

### HTTP / PATCH

If you need to make changes with ActiveRecord model, just use

```ruby
patch_button(
  record: some_record_you_gonna_change,
  controller: ControllerWhichWilChangeYourModel,
  action: :action_in_this_controller,
  parameters: { url: parameters },
  attributes: { attribute1: value, attribute2: value },
  model_name: record.model_name,
  button_options: { class: :some_button_class },
  form_options: { class: :some_form_class }
) do
  here_content_which_will_be_inside_of_button
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/smart_buttons.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
