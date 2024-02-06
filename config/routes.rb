Rails.application.routes.draw do
  get("/", { :controller => "home", :action => "homepage"})
  get("/:choice", { :controller => "play_hand", :action => "hand_selection" })
  # get("/paper", { :controller => "play_hand", :action => "play_paper" })
  # get("/scissors", { :controller => "play_hand", :action => "play_scissors" })
end
