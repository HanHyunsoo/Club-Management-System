class CreateVideos < ActiveRecord::Migration[5.0]
  def change
    create_table :videos do |t|
      
      t.string :title
      t.text :content
      t.belongs_to  :user
      
      t.timestamps
    end
  end
end
