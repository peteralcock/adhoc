require 'csv'

namespace :slcsp do
  desc "Calculate SLCSP for each ZIP code in slcsp.csv"
  task calculate: :environment do
    CSV.foreach('path/to/slcsp.csv', headers: true) do |row|
      rate = Slcsp.calculate_for_zip(row['zipcode'])
      puts "#{row['zipcode']},#{rate}"
    end
  end
end

