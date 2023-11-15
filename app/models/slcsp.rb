class Slcsp < ApplicationRecord
  def self.calculate_for_zip(zip_code)
    zip = Zip.find_by(code: zip_code)
    return nil unless zip

    rate_area = zip.rate_area
    rates = 
Plan.silver_plans_in_rate_area(rate_area).pluck(:rate).uniq.sort

    # Return the second item in the sorted list, or nil if it doesn't 
exist
    rates[1]
  end
end

