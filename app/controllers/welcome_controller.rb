class WelcomeController < ApplicationController
  def index
  end

  def new_item
    @prefecture = Prefecture.all
  end
  def mypage
  end
  def identification
    @prefecture = Prefecture.all
  end
  def useredit
  end
  def new
  end
  def registration
  end
  def sms
  end
  def address
    @prefecture = Prefecture.all
  end
  def payment
  end
  def finish
  end
end
