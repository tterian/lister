Rails.application.routes.draw do

  root             'pages#home'
  get 'help'    => 'pages#help'
  get 'about'   => 'pages/about'

end
