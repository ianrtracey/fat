class AddAmountToAccounts < ActiveRecord::Migration
  def self.up
    add_column :accounts, :amount, :decimal, :precision => 12, :scale => 2
  end

  def self.down
    add_column :accounts, :amount
  end
end
