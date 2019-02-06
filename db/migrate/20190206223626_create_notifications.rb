class CreateNotifications < ActiveRecord::Migration[5.2]
  def change
    create_table :notifications do |t|
      t.bigint :recipient_id
      t.bigint :actor_id
      t.datetime :read_at
      t.string :action
      t.bigint :notifiable_id
      t.string :notifiable_type

      t.timestamps
    end
  end
end
