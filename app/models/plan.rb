class Plan < ApplicationRecord
  scope :silver, -> { where(metal_level: 'Silver') }

  def self.silver_plans_in_rate_area(rate_area)
    silver.where(rate_area: rate_area)
  end
end

