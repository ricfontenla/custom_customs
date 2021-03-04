require 'csv'
require_relative './lib/formulary_processor.rb'

puts 'Custom Customs'

file = File.read('./../data/answers.txt')

csv = CSV.parse(file)

list = FormularyProcessor.new(csv)

puts("A soma das respostas iguals de cada grupo é: #{list.answers_count}")