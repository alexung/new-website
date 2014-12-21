class ChristmasCardController < ApplicationController

  def index
  end

  def password
  end

  def password_entered
    if params["christmas_card"]["password"]
      if params["christmas_card"]["password"] == "ilovemommyanddaddy"
        redirect_to christmas_card_2014_path, notice: "Correct!"
      else
        redirect_to christmas_card_2014_password_path, notice: "Wrong Password!"
      end
    end
  end

end
