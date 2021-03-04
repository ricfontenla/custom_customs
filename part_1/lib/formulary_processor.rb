class FormularyProcessor

  attr_reader :csv, :organized_list

  #construtor
  def initialize(csv)
    @csv = csv
    @organized_list = answers_organizer()
  end

  #metodos
  def answers_count()
    total_answers = 0
    organized_list.each do |group|
      total_answers += group.count
    end
    return total_answers
  end
  

  #metodos privados
  private
  def answers_organizer()
    list = []
    group = []
    answers= []

    csv.each do |line|
      if line[0].nil? == false
        group << line[0].split('')
      else
        group.each do |array|
          answers.concat(array)
        end
        list << answers.uniq 
        answers = []
        group = []
      end
    end
    return list
  end

end