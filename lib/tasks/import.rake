# lib/tasks/import.rake
require 'csv'

namespace :import do
  desc "Import ZIP codes from CSV file"
  task zips: :environment do
    CSV.foreach('path/to/zips.csv', headers: true) do |row|
      Zip.create!(row.to_hash)
    end
  end

  desc "Import plans from CSV file"
  task plans: :environment do
    CSV.foreach('path/to/plans.csv', headers: true) do |row|
      Plan.create!(row.to_hash)
    end
  end
end

