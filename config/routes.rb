PusherExample::Application.routes.draw do
  post 'chat' => 'main#chat', :as => "chat"
  post 'other_chat' => 'main#other_chat', :as => "other_chat"
  root :to => "main#index"
end
