class CreateMusics < ActiveRecord::Migration[5.2]
  def change
    create_table :musics do |t|
      t.string :name
      t.boolean :explicit
      t.references :album, foreign_key: true
      t.references :musical_genre, foreign_key: true

      t.timestamps
    end
  end
end
