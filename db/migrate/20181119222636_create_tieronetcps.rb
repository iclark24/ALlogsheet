class CreateTieronetcps < ActiveRecord::Migration[5.2]
  def change
    create_table :tieronetcps do |t|
      t.integer :amount
      t.belongs_to :logsheet, foreign_key: true

      t.timestamps
    end
  end
end
