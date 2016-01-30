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
    get "8", to: "index#index_8", as: "index_8"
    get "9", to: "index#index_9", as: "index_9"
    get "10", to: "index#index_10", as: "index_10"
    get "11", to: "index#index_11", as: "index_11"
    get "12", to: "index#index_12", as: "index_12"
    get "13", to: "index#index_13", as: "index_13"

    get "a-fighters", to: "index#afighters", as: "afighters"
  end

end
