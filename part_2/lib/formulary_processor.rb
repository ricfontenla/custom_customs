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
    
    organized_list.each do |hash|
      i = 0
      letters = ('a'..'z').to_a
      intersect = []
      while i <= (hash.count - 1)
        letters = letters & hash[i].split('')
        i += 1
      end
      total_answers += letters.count
    end
    return total_answers
  end
  
  #metodos privados
  private
  def answers_organizer()
    list = []
    group = []

    csv.each do |line|
      if line[0].nil? == false
        group << line[0]
      else
        list << group
        group = []
      end
    end
    return list
  end

end