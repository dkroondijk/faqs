Rails.application.routes.draw do

  resources :faqs do
    post :sort, on: :collection
  end

end
