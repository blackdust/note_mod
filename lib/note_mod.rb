# 引用 rails engine
require 'note_mod/engine'
module NoteMod
  mattr_accessor :user_class
  class << self
    def note_mod_config
      self.instance_variable_get(:@note_mod_config) || {}
    end

    def set_mount_prefix(mount_prefix)
      config = NoteMod.note_mod_config
      config[:mount_prefix] = mount_prefix
      NoteMod.instance_variable_set(:@note_mod_config, config)
    end
    
    def get_mount_prefix
      note_mod_config[:mount_prefix]
    end
  end
end
require 'note_mod/engine'
require 'note_mod/rails_routes'
