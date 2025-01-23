require 'rubygems'
require 'yaml'
require 'json'
  require 'json'


namespace :quotes do

  desc "Open and process a JSON file with quotes"
    task import: :environment do
    # Path to your JSON file
    file_path = Rails.root.join('data', 'quotes_two.json')
    # Open and parse the JSON file
    if File.exist?(file_path)
      file_content = File.read(file_path)
      quotes = JSON.parse(file_content)
      # Example: Output each quote and author
      quotes.each do |quote|
        Quote.create(data: quote['quote'], author: quote['author'])
        puts "Quote: #{quote['quote']} by: #{quote['author']}"
        puts "-----------------------------"
      end
      puts "Successfully processed #{quotes.size} quotes."
    else
      puts "File not found: #{file_path}"
    end
	end
 
end