MyBlog::Application.routes.draw do
  root 'index#no_w'

  get "w", to: "index#w", as: "w"
  get "w/2", to: "index#w2", as: "w2"
  get "w/3", to: "index#w3", as: "w3"
  get "w/4", to: "index#w4", as: "w4"
  get "w/5", to: "index#w5", as: "w5"
  get "w/6", to: "index#w6", as: "w6"
  get "w/7", to: "index#w7", as: "w7"
  get "w/8", to: "index#w8", as: "w8"
  get "w/9", to: "index#w9", as: "w9"

  get "w/a-fighters", to: "index#afighters", as: "afighters"

end
