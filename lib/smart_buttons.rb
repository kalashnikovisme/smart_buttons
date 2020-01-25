# frozen_string_literal: true

require 'smart_buttons/version'
require 'smart_buttons/patch_button'
require 'smart_buttons/delete_button'

module SmartButtons
  include DeleteButton
  include PatchButton
end
