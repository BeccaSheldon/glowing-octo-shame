class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.string :character
      t.references :movie_id, index: true
      t.references :star_id, index: true

      t.timestamps
    end
  end
end
