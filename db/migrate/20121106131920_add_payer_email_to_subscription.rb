class AddPayerEmailToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :payer_email, :string
  end
end
