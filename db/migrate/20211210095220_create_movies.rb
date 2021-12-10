class CreateMovies < ActiveRecord::Migration[6.0]
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :year
      t.float :rating
      t.string :actors
      t.string :genre
      t.integer :object_id

      t.timestamps
    end
  end
end
