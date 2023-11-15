class Zip < ApplicationRecord
  def rate_area
    # Assuming each ZIP code has a unique rate area in your dataset
    # Adjust this logic if a ZIP code can span multiple rate areas
    self.rate_area
  end
end

