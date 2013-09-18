BwProto::Application.routes.draw do
  root to: 'pages#index'
  get '/*pagename', to: 'pages#any_page'
end
