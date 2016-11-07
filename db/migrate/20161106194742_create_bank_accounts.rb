class CreateBankAccounts < ActiveRecord::Migration[5.0]
  def change
    create_table :bank_accounts do |t|
      t.references :contragent, foreign_key: true
      t.string :number
      t.string :bik
      t.string :bank_name
      t.integer :currency_code
      t.boolean :primary
      t.string :korr_number

      t.timestamps
    end
  end
end
