Rails.application.routes.draw do
  get("/", { :controller => "home", :action => "homepage"})
  get("/:choice", { :controller => "play_hand", :action => "hand_selection" })
end
