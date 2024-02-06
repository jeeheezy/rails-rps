class HomeController < ApplicationController
  def homepage
    render({ :template => "game_templates/home" })
  end
end
