module NoteMod
  class Routing
    # NoteMod::Routing.mount "/file_part_upload", :as => 'file_part_upload'
    def self.mount(prefix, options)
      NoteMod.set_mount_prefix prefix
      
      Rails.application.routes.draw do
        mount NoteMod::Engine => prefix, :as => options[:as]
      end
    end
  end
end
