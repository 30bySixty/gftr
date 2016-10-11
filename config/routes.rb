Rails.application.routes.draw do
  root 'pages#index'

  get 'users/new' => 'users#new'
  post 'users', to: 'users#create'
  
  get 'unsubscribes/new' => 'unsubscribes#new'
  post 'unsubscribes', to: 'unsubscribes#create'

  get 'visitors/new' => 'visitors#new'
  post 'visitors', to: 'visitors#create'

  get 'pages/media' => 'pages#media'
  get 'pages/thankyou' => 'pages#thankyou'
  get 'pages/unsubscribe' => 'pages#unsubscribe'
  get 'pages/about-us' => 'pages#about'

#  get 'ideas/index' => 'ideas#index'
  # get '/ideas' => 'ideas#index'
  get 'ideas/one' => 'ideas#one'
  get 'ideas/ONE' => 'ideas#one'
  get 'ideas/moreinfo' => 'ideas#moreinfo'
  get 'ideas/thankyou' => 'ideas#thankyou'
  get 'ideas/saveideas' => 'ideas#saveideas'
  get 'ideas/inspireme' => 'ideas#inspireme'
  #Concept Test
  get 'ideas/ae4lh' => 'ideas#ae4lh'
  get 'ideas/euoy6' => 'ideas#euoy6'
  get 'ideas/ixy4t' => 'ideas#ixy4t'
  get 'ideas/g0dwp' => 'ideas#g0dwp'
  get 'ideas/duh2y' => 'ideas#duh2y'
  get 'ideas/r8xpb' => 'ideas#r8xpb'
  get 'ideas/e5rd6' => 'ideas#e5rd6'
  get 'ideas/bto30' => 'ideas#bto30'

  get 'familyfriends' => 'familyfriends#index'
  get 'familyfriends/may16' => 'familyfriends#may16'
  get 'familyfriends/june16' => 'familyfriends#june16'
  get 'familyfriends/august16' => 'familyfriends#august16'
  
  post 'clicks', to: "clicks#create"

  PagesController.action_methods.each do |action|
    get "/#{action}", to: "pages##{action}", as: "#{action}_page"
  end

  #  IdeasController.action_methods.each do |action|
  #   get "/#{action}", to: "ideas##{action}", as: "#{action}_page"
  # end
end
