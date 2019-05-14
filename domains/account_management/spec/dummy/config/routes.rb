Rails.application.routes.draw do
  mount Domains::AccountManagement::Engine => "/account_management"
end
