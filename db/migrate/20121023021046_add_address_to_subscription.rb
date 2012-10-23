class AddAddressToSubscription < ActiveRecord::Migration
  def change
    add_column :subscriptions, :address, :string
    add_column :subscriptions, :address2, :string
    add_column :subscriptions, :city, :string
    add_column :subscriptions, :state, :string
    add_column :subscriptions, :zip, :string
    add_column :subscriptions, :phone_number, :string
  end
end
