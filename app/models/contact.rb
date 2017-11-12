class Contact < ApplicationRecord

  responses = ["Yes", "No"]

  def full_name
    "#{last_name}, #{first_name}"
  end

  def nice_notes
    notes.split(",") unless nil
  end

  
end
