Rails.application.routes.draw do
  get "/apartments", to: "apartments#index"
  resource :apartments
end
