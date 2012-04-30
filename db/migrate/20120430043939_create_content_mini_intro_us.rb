class CreateContentMiniIntroUs < ActiveRecord::Migration
  def change
    create_table :content_mini_intro_us do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
