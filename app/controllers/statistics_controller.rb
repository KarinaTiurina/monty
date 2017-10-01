class StatisticsController < ApplicationController
  def new
    @game = set_game.shuffle!
    session[:game] = @game
  end

  def show
    @game = session[:game]
    choice2 = params[:id].to_i
    choice1 = session[:choice1]

    @statistic = Statistic.first_statistic

    @status = game_status(@game, choice2)

    @statistic.change_statistic(@status, choice1, choice2)

    @statistic.save!
  end

  def edit
    @choice1 = params[:id].to_i
    @game = session[:game]
    @open_door = choose_door(@choice1)

    session[:choice1] = @choice1
  end

  private

  def set_game
    ['goat', 'goat', 'money']
  end

  def choose_door(choice)
    @game.each_with_index do |value, i|
      unless i == choice
        if value == 'goat'
          return i
        end
      end
    end
  end

  def game_status(game, choice)
    if game[choice] == 'money'
      :won
    else
      :fail
    end
  end
end
