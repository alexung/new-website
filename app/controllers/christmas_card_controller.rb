class ChristmasCardController < ApplicationController

  def index
  end

  def password
  end

  def password_entered
    if params["christmas_card"]["password"]
      if params["christmas_card"]["password"] == "ilovemommyanddaddy"
        redirect_to christmas_card_2014_path, notice: "Correct!"
      elsif params["christmas_card"]["password"] == "iloveyay"
        redirect_to christmas_yay_path, notice: "Correct!"
      elsif params["christmas_card"]["password"] == "owm"
        redirect_to christmas_owm_path, notice: "Correct!"
      elsif params["christmas_card"]["password"] == "vutheaandpha"
        redirect_to christmas_vuthea_pha_path, notice: "Correct!"
      elsif params["christmas_card"]["password"] == "poovuth"
        redirect_to christmas_poo_path, notice: "Correct!"
      else
        redirect_to christmas_card_2014_password_path, notice: "Wrong Password!"
      end
    end
  end

end
