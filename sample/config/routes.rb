Rails.application.routes.draw do
  NoteMod::Routing.mount '/note', as: 'note'
  mount PlayAuth::Engine => '/auth', :as => :auth
end
