class CreateTiertwotcps < ActiveRecord::Migration[5.2]
  def change
    create_table :tiertwotcps do |t|
      t.integer :amount
      t.belongs_to :logsheet, foreign_key: true

      t.timestamps
    end
  end
end
