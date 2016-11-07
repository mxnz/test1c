Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get 'GetCustomers', to: "contragents#index"
  post 'SendReply', to: "replies#ok"
end
