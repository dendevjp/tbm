class CreateRconfigs < ActiveRecord::Migration[5.2]
  def change
    create_table :rconfigs do |t|
      t.string :maincode
      t.string :subcode
      t.string :title
      t.string :description
      t.string :deleteflg

      t.timestamps
    end
  end
end
