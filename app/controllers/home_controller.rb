class HomeController < ApplicationController
  def index
  end

  def quote


    user = params[:user]
    token = params[:token]

    random_id = Quote.pluck(:id).sample
    quote = Quote.find(random_id)

    quote.display_count += 1
    quote.save
    log = Log.create(token: token, user: user, quote: quote)
    redirect_to single_quote_path(quote.uuid, log.id)


  end

  def single_quote 

    @quote = Quote.find_by(uuid: params[:uuid])
    @log_id = params[:log_id]
    @log = Log.find(@log_id)

  end


  def rating
    log_id = params[:log_id]
    log = Log.find(log_id)
    log.rating = params[:rating]
    log.save
    quote = Quote.find(log.quote_id)

    redirect_to single_quote_path(quote.uuid, log.id)


  end

  def history
    user = params[:user]
    @logs = Log.where(user: user).order(created_at: :desc)
  end

end
