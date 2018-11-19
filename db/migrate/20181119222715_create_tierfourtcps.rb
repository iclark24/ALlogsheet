class CreateTierfourtcps < ActiveRecord::Migration[5.2]
  def change
    create_table :tierfourtcps do |t|
      t.integer :amount
      t.belongs_to :logsheet, foreign_key: true

      t.timestamps
    end
  end
end
