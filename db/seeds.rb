require "csv"

Movie.delete_all
ProductionCompany.delete_all

# Rails.root... ./db/top_movies.csv
filename = Rails.root.join("db/top_movies.csv")

puts "Importing CSV data from: #{filename}"

csv_data = File.read(filename)
movies = CSV.parse(csv_data, headers: true, encoding: "utf-8")

movies.each do |m|
  puts "Movie Title: #{m['original_title']}"
end
