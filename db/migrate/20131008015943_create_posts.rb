class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :author
      t.string :permalink
      t.string :articleUrl

      t.timestamps
    end
  end
end
