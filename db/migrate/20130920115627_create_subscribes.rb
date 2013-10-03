class CreateSubscribes < ActiveRecord::Migration
  def change
    create_table :subscribes do |t|
    	t.string :sub_email
    	t.string :sub_state


      t.timestamps

    end
  end
end
