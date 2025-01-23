class HomeController < ApplicationController
  def index
  end

  def quote


    token = params[:token]

    random_id = Quote.pluck(:id).sample
    quote = Quote.find(random_id)

    quote.display_count += 1
    quote.save
    Log.create(token: token, quote: quote)
    redirect_to single_quote_path(quote.uuid)


  end

  def single_quote 

    @quote = Quote.find_by(uuid: params[:uuid])

  end


end
