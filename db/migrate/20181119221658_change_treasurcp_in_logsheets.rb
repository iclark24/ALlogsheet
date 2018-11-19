class ChangeTreasurcpInLogsheets < ActiveRecord::Migration[5.2]
  def change
    rename_column :logsheets, :advcp, :exp
  end
end
