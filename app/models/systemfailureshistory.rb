class Systemfailureshistory < ApplicationRecord
  belongs_to :systemfailure, optional: true
end
