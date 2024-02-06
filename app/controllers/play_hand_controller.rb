class PlayHandController < ApplicationController
  
  def initialize
    @random_move = ["rock", "paper", "scissors"]
  end
  
  def hand_selection
    @computer_move = @random_move.sample
    @player_move = params["choice"]
    if @player_move == "rock"
      if @computer_move == "rock"
        @outcome = "tied"
      elsif @computer_move == "paper"
        @outcome = "lost"
      else @computer_move == "scissors"
        @outcome = "won"
      end
    elsif @player_move == "paper"
      if @computer_move == "paper"
        @outcome = "tied"
      elsif @computer_move == "scissors"
        @outcome = "lost"
      else @computer_move == "rock"
        @outcome = "won"
      end
    elsif @player_move == "scissors"
      if @computer_move == "scissors"
        @outcome = "tied"
      elsif @computer_move == "rock"
        @outcome = "lost"
      else @computer_move == "paper"
        @outcome = "won"
      end
    end
    render({ :template => "game_templates/choice" })
  end
end
