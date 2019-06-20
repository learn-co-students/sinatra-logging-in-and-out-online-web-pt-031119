class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |info|
      info.string :username
      info.string :password
      info.integer :balance
    end

  end
  
end