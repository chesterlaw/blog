class WController < ApplicationController
  def index
  end

  def twitter
    redirect_to "http://twitter.com/chesterlaww"
  end

  def instagram
    redirect_to "http://instagram.com/chesterlaw"
  end

end
