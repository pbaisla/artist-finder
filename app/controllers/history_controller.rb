class HistoryController < ApplicationController
  
  before_action :authenticate_user!

  def searchhistory
  	@history = History.where(user_id: current_user.id)
  end
end
