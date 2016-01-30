MyBlog::Application.routes.draw do
  root 'index#no_w'

  scope :w do
    get '', to: "index#index", as: :index
    get "2", to: "index#index_2", as: "index_2"
    get "3", to: "index#index_3", as: "index_3"
    get "4", to: "index#index_4", as: "index_4"
    get "5", to: "index#index_5", as: "index_5"
    get "6", to: "index#index_6", as: "index_6"
    get "7", to: "index#index_7", as: "index_7"
    get "a-fighters", to: "index#afighters", as: "afighters"
  end

end
