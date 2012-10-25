class AddBooleanToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :coffee_type, :string
    add_column :subscriptions, :is_gift, :boolean
  end
end
