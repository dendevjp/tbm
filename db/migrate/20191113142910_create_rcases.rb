class CreateRcases < ActiveRecord::Migration[5.2]
  def change
    create_table :rcases do |t|
      t.string :rnumber
      t.string :rtitle
      t.string :rdetail
      t.string :rdivision
      t.string :rcharge
      t.datetime :rdate
      t.string :rstatus

      t.timestamps
    end
  end
end
