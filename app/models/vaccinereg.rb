class Vaccinereg < ApplicationRecord
    validates :idpass, uniqueness: { case_sensitive: false }
    #validates :insuranceid, uniqueness: { case_sensitive: false }
end
