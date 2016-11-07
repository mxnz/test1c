class CreateContragents < ActiveRecord::Migration[5.0]
  def change
    create_table :contragents do |t|
      t.string :guid
      t.string :name
      t.string :full_name
      t.string :inn
      t.string :kpp
      t.string :legal_address
      t.string :actual_address
      t.string :post_address
      t.string :phone
      t.string :email
      t.string :idais
      t.integer :change_ver 
      t.boolean :delete_flag
      t.boolean :was_changed

      t.timestamps
    end
  end
end
