class CreateLogsheets < ActiveRecord::Migration[5.2]
  def change
    create_table :logsheets do |t|
      t.string :char
      t.float :gold
      t.integer :treasurcp
      t.integer :downtime
      t.integer :renown
      t.string :race
      t.string :dci
      t.integer :advcp
      t.belongs_to :user, foreign_key: true

      t.timestamps
    end
  end
end
