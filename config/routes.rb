MeetupApi::Application.routes.draw do
  resources :events, except: [:index, :new, :edit]

  match '/*path' => 'application#cors_preflight_check', :via => :options

end
