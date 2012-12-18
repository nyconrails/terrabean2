class Subscription < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :string, :stripe_card_token, :plan_id, :address, :city, :state, :zip, :phone_number, :coffee_type, :is_gift, :payer_email
  validates_presence_of :email, :coffee_type, :first_name, :last_name, :address, :city, :state, :zip, :phone_number
  
  
  attr_accessor :stripe_card_token, :plan_id
  
  
  
  def save_with_payment
    if valid?
      customer = Stripe::Customer.create(description: email, plan: plan_id, card: stripe_card_token)
      self.stripe_customer_token = customer.id
      save!
    end
  rescue Stripe::InvalidRequestError => e
    logger.error "Stripe error while creating customer: #{e.message}"
    errors.add :base, "There was a problem with your credit card."
    false
  end
  
end
