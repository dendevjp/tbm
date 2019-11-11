class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :email
      t.string :division
      t.string :team
      t.string :password_digest
      t.string :admin

      t.timestamps
    end
  end
end
