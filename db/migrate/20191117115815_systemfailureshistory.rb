class Systemfailureshistory < ActiveRecord::Migration[5.2]
  def change
    create_table :systemfailureshistory do |t|
      t.string :systemfailure_number
      t.string :subsystem_name
      t.string :time
      t.datetime :occur_date
      t.string :title
      t.string :department
      t.string :reporter
      t.datetime :update_deadline
      t.datetime :confirm_deadline
      t.string :signal
      t.string :status
      t.string :hayakawa_comment
      t.string :chargecomment
      t.string :exchange_status
      t.string :hayakawa_show
      t.string :report_path
      t.string :followup
      t.string :evidence_update
      t.string :overall_check
      t.string :quality_status
      t.string :occurrence_year
      t.string :occurrence_month
      t.datetime :permanent_planday
      t.datetime :recurrence_Preventday

      t.timestamps
    end
  end
end
