class CreateMagicitems < ActiveRecord::Migration[5.2]
  def change
    create_table :magicitems do |t|
      t.string :name
      t.boolean :consumable
      t.integer :tcpvalue
      t.belongs_to :logsheet, foreign_key: true

      t.timestamps
    end
  end
end
