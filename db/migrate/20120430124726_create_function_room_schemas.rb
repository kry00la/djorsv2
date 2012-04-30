class CreateFunctionRoomSchemas < ActiveRecord::Migration
  def change
    create_table :function_room_schemas do |t|

      t.timestamps
    end
  end
end
