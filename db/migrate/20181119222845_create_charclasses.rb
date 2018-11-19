class CreateCharclasses < ActiveRecord::Migration[5.2]
  def change
    create_table :charclasses do |t|
      t.string :name
      t.integer :lvls
      t.belongs_to :logsheet, foreign_key: true

      t.timestamps
    end
  end
end
