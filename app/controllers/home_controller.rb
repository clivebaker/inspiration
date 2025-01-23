class HomeController < ApplicationController
  def index
  end

  def quote


    token = params[:token]

    random_id = Quote.pluck(:id).sample
    @quote = Quote.find(random_id)

    @quote.display_count += 1
    @quote.save

    Log.create(token: token, quote: @quote)
    
  end

end
