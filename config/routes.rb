PusherExample::Application.routes.draw do
  post 'send_message' => 'main#send_message', :as => "send_message"
  root :to => "main#index"
end
