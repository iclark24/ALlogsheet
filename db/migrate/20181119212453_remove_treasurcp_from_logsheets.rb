class RemoveTreasurcpFromLogsheets < ActiveRecord::Migration[5.2]
  def change
    remove_column :logsheets, :treasurcp, :string
  end
end
