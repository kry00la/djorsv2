class AddAttachmentSchemaToFunctionRoomSchemas < ActiveRecord::Migration
  def self.up
    add_column :function_room_schemas, :schema_file_name, :string
    add_column :function_room_schemas, :schema_content_type, :string
    add_column :function_room_schemas, :schema_file_size, :integer
    add_column :function_room_schemas, :schema_updated_at, :datetime
  end

  def self.down
    remove_column :function_room_schemas, :schema_file_name
    remove_column :function_room_schemas, :schema_content_type
    remove_column :function_room_schemas, :schema_file_size
    remove_column :function_room_schemas, :schema_updated_at
  end
end
