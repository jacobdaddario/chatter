class AddDoubleIndexToSubscription < ActiveRecord::Migration[6.0]
  def change
		add_index :subscriptions, [:user_id, :chatroom_id], unique: true
  end
end
