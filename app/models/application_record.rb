class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  def current_user
    session[]
  end

  def current_movie
    Movie.find(session[:movie]["id"])
  end
end
