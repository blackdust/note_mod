module NoteMod
  class Engine < ::Rails::Engine
    isolate_namespace NoteMod
    config.to_prepare do
      ApplicationController.helper ::ApplicationHelper
      Dir.glob(Rails.root + "app/decorators/kc_courses/**/*_decorator.rb").each do |c|
        require_dependency(c)
      end
      User.class_eval do
        has_many :notes, class_name: 'NoteMod::Note'
      end
    end
  end
end