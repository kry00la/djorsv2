class CreateContentAboutUs < ActiveRecord::Migration
  def change
    create_table :content_about_us do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
