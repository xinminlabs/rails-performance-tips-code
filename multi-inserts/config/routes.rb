Rails.application.routes.draw do
  post '/posts/import' => 'posts#import'
end
