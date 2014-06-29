MyBlog::Application.routes.draw do
  root 'index#no_w'

  get "w", to: "index#w", as: "w"
  get "w/2", to: "index#w2", as: "w2"
  get "w/3", to: "index#w3", as: "w3"
  get "w/a-fighters", to: "index#afighters", as: "afighters"

end
