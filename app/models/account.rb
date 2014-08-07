class Account < ActiveRecord::Base
  belongs_to :user
  validate :is_gender
  validate :is_valid_age
  def is_gender
	  if (gender != "male") && (gender != "female") && (gender != "N/A")
		  errors.add(:gender, "not a valid gender")
	  end
  end
  def is_valid_age
	  if age <20 || age >100
		  errors.add(:age, "not a valid age")
	  end
  end
  
  
end
