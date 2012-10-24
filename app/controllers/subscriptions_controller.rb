class SubscriptionsController < ApplicationController
  
  inherit_resources
  
  def create
    @subscription = Subscription.new(params[:subscription])
    if @subscription.save_with_payment
      redirect_to subscription_confirmation_path, :notice => "Thank you for subscribing!"
    else
      render :new
    end
  end
  
  def subscription_confirmation
    
  end
  
end