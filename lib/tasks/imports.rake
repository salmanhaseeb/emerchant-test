require 'csv'

namespace :imports do
  task admins: :environment do
    puts 'Importing admins.......'
    csv_file_path ||= File.read('admins.csv')
    csv ||= CSV.parse(csv_file_path, col_sep: ',', row_sep: :auto, skip_blanks: true)
    csv.each_with_index do |row, index|
      Admin.create(email: row[0], password: row[1]) if index > 0
    end
    puts 'Import Completed....'
  end

  task merchants: :environment do
    puts 'Importing merchants.......'
    csv_file_path ||= File.read('merchants.csv')
    csv ||= CSV.parse(csv_file_path, col_sep: ',', row_sep: :auto, skip_blanks: true)
    csv.each_with_index do |row, index|
      Merchant.create(name: row[0], email: row[1], password: row[2], description: row[3], status: row[4]) if index > 0
    end
    puts 'Import Completed....'
  end
end
