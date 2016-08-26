class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.string :f_name, null: false
      t.string :l_name
      t.string :email
      t.string :home_phone
      t.string :mobile_phone
      t.string :work_phone
      t.string :street
      t.string :city
      t.string :state, length: 2
      t.string :zip
      
      t.timestamps null: false
    end
  end
end
