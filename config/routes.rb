Rails.application.routes.draw do
  devise_for :users

  root "posts#index"

  get "posts/index" => "posts#index"
  get "posts/new" => "posts#new"
  post "posts/create" => "posts#create"
  get "posts/:id/show" => "posts#show"
  get "posts/:id/edit" => "posts#edit"
  post "posts/:id/update" => "posts#update"
  get "posts/:id/destroy" => "posts#destroy"

  post "posts/:id/comments" => "comments#create", as: "posts_comments_create"
  get "posts/:id/post_likes" => "post_likes#create"
  get "comments/:id/comment_likes" => "comment_likes#create"
end
