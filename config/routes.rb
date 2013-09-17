BwProto::Application.routes.draw do
  get '/foo', to: 'pages#foo'
  get '/bar', to: 'pages#bar'
end
