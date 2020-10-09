class ApplicationController < ActionController::Base
  layout(false)

  # Add your actions below this line
  # ================================

  def homepage
    # write code to do work
    render({ :template => "game_templates/rules.html.erb"})
  end

  def play_rock
    # write code to do work
    render({ :template => "game_templates/user_rock.html.erb"})
  end
  
  def play_paper
    # write code to do work
    @compMove = ["rock", "paper", "scissors"].sample 
    
    if @compMove == "rock" 
      @outcome = "We won!"
    elsif @compMove == "paper" 
      @outcome = "We tied!"
    elsif @compMove == "scissors" 
      @outcome = "We lost!"
    end 

    render({ :template => "game_templates/user_paper.html.erb"})
  end
  
  def play_scissors
    # write code to do work
    render({ :template => "game_templates/user_scissors.html.erb"})
  end

end
