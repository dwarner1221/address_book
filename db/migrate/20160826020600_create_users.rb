class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :f_name, null: false
      t.string :l_name, null: false
      t.string :email, null: false
      t.string :password
      t.timestamps null: false
    end
  end
end
