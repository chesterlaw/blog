MyBlog::Application.routes.draw do
  root 'index#no_w'

  get "w", to: "index#w"
  get "w/2", to: "index#w2"
  get "w/a-fighters", to: "index#afighters", as: "afighters"

end
