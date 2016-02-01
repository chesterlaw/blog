MyBlog::Application.routes.draw do
  root 'index#no_w'

  scope :w do
    get '', to: "index#index", as: :index
    get 'new', to: "index#index_new", as: :index_new
    get "2", to: "index#index_2", as: "index_2"
    get "a-fighters", to: "index#afighters", as: "afighters"
  end

end
