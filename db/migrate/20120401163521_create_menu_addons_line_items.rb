class CreateMenuAddonsLineItems < ActiveRecord::Migration
  def change
    create_table :menu_addons_line_items do |t|


      t.timestamps
    end
  end
end
