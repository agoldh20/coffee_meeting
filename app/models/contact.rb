class Contact < ApplicationRecord

  responses = ["Yes", "No"]

  def full_name
    "#{last_name}, #{first_name}"
  end
end
