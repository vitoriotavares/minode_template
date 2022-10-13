class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :primeiro
      t.string :segundo

      t.timestamps
    end
  end
end
