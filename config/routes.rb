BwProto::Application.routes.draw do
  get "/articles", :to => "articles#show"
 root to: 'pages#index'
 get '/*pagename', to: 'pages#any_page'


end