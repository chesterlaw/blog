MyBlog::Application.routes.draw do
  root 'index#no_w'

  scope :w do
    get '', to: "index#index", as: :index
    get 'dynamic-colors', to: "index#dynamic_colors", as: "dynamic_colors"
    get "a-fighters", to: "index#a_fighters", as: "a_fighters"
  end

end
