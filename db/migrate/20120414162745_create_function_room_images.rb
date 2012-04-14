class CreateFunctionRoomImages < ActiveRecord::Migration
  def change
    create_table :function_room_images do |t|
      t.integer :function_room_id

      t.timestamps
    end
  end
end
