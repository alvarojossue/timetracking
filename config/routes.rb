Rails.application.routes.draw do

resources :projects do 
  resources :time_entries
end


end
