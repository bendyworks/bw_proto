BwProto::Application.routes.draw do
  get '/*pagename', to: 'pages#any_page'
end
