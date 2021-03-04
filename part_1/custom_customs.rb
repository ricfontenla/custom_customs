require 'csv'
require_relative './lib/formulary_processor.rb'

puts 'Custom Customs'

file = File.read('./../data/answers.txt')

csv = CSV.parse(file)

list = FormularyProcessor.new(csv)

puts("O total de respostas dos passageiros foi de: #{list.answers_count}")