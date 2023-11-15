# script/calculate_slcsp.rb
require 'csv'

output_file_path = 'path/to/output.csv'

CSV.open(output_file_path, 'wb') do |csv|
  csv << ['zipcode', 'rate'] # CSV Header

  CSV.foreach('path/to/slcsp.csv', headers: true) do |row|
    slcsp_rate = Slcsp.calculate_for_zip(row['zipcode'])
    csv << [row['zipcode'], slcsp_rate ? '%.2f' % slcsp_rate : nil]
  end
end

puts "SLCSP rates written to #{output_file_path}"

