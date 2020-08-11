class CreateCreditCards < ActiveRecord::Migration[6.0]
  def change
    create_table :credit_cards do |t|
      t.string :card_company, null:false
      t.string :card_yaer, null:false
      t.string :card_manth, null:false
      t.string :card_pass, null:false
      t.references :user, null:false,foreign_key: true
      t.timestamps
    end
  end
end
