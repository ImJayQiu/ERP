class Covid19case < ApplicationRecord

    validates :id_pass, presence:true, uniqueness: {case_sensitive: false}

end
