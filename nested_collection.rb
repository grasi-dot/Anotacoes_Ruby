#matrizes aninhadas

test_scores = [
    [97, 76, 79, 93],
    [79, 84, 76, 79],
    [88, 67, 64, 76],
    [94, 55, 67, 81]
  ]
  
  teacher_mailboxes = [
    ["Adams", "Baker", "Clark", "Davis"],
    ["Jones", "Lewis", "Lopez", "Moore"],
    ["Perez", "Scott", "Smith", "Young"]
  ]
  
  teacher_mailboxes[0][0]
  #=> "Adams"
  teacher_mailboxes[1][0]
  #=> "Jones"
  teacher_mailboxes[2][0]
  #=> "Perez"
  
  teacher_mailboxes[0][-1]
  #=> "Davis"
  teacher_mailboxes[-1][0]
  #=> "Perez"
  teacher_mailboxes[-1][-2]
  #=> "Smith"
  
  teacher_mailboxes[3][0]
  #=> NoMethodError
  teacher_mailboxes[0][4]
  #=> nil
  
  teacher_mailboxes.dig(3, 0)
  #=> nil
  teacher_mailboxes.dig(0, 4)
  #=> nil
  
  #criacao
  
  mutable = Array.new(3, Array.new(2))
  #=> [[nil, nil], [nil, nil], [nil, nil]]
  mutable[0][0] = 1000
  #=> 1000
  mutable
  #=> [[1000, nil], [1000, nil], [1000, nil]]
  
  immutable = Array.new(3) { Array.new(2) }
  #=> [[nil, nil], [nil, nil], [nil, nil]]
  immutable[0][0] = 1000
  #=> 1000
  immutable
  #=> [[1000, nil], [nil, nil], [nil, nil]]
  
  #ADICIONANDO E REMEOVENDO ELEMENTOS
  
  test_scores << [100, 99, 98, 97]
  #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
  test_scores[0].push(100)
  #=> [97, 76, 79, 93, 100]
  test_scores
  #=> [[97, 76, 79, 93, 100], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81], [100, 99, 98, 97]]
  
  
  test_scores.pop
  #=> [100, 99, 98, 97]
  test_scores[0].pop
  #=> 100
  test_scores
  #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
  
  #ITERANDO Each_with_indexmétodo
  
  teacher_mailboxes.each_with_index do |row, row_index|
    puts "Row:#{row_index} = #{row}"
  end
  #=> Row:0 = ["Adams", "Baker", "Clark", "Davis"]
  #=> Row:1 = ["Jones", "Lewis", "Lopez", "Moore"]
  #=> Row:2 = ["Perez", "Scott", "Smith", "Young"]
  #=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]
  
  teacher_mailboxes.each_with_index do |row, row_index|
    row.each_with_index do |teacher, column_index|
      puts "Row:#{row_index} Column:#{column_index} = #{teacher}"
    end
  end
  #=> Row:0 Column:0 = Adams
  #=> Row:0 Column:1 = Baker
  #=> Row:0 Column:2 = Clark
  #=> Row:0 Column:3 = Davis
  #=> Row:1 Column:0 = Jones
  #=> Row:1 Column:1 = Lewis
  #=> Row:1 Column:2 = Lopez
  #=> Row:1 Column:3 = Moore
  #=> Row:2 Column:0 = Perez
  #=> Row:2 Column:1 = Scott
  #=> Row:2 Column:2 = Smith
  #=> Row:2 Column:3 = Young
  #=> [["Adams", "Baker", "Clark", "Davis"], ["Jones", "Lewis", "Lopez", "Moore"], ["Perez", "Scott", "Smith", "Young"]]
  
  teacher_mailboxes.flatten.each do |teacher|
    puts "#{teacher} is amazing!"
  end
  #=> Adams is amazing!
  #=> Baker is amazing!
  #=> Clark is amazing!
  #=> Davis is amazing!
  #=> Jones is amazing!
  #=> Lewis is amazing!
  #=> Lopez is amazing!
  #=> Moore is amazing!
  #=> Perez is amazing!
  #=> Scott is amazing!
  #=> Smith is amazing!
  #=> Young is amazing!
  #=> ["Adams", "Baker", "Clark", "Davis", "Jones", "Lewis", "Lopez", "Moore", "Perez", "Scott", "Smith", "Young"]
  
  
  test_scores = [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
  #=> [[97, 76, 79, 93], [79, 84, 76, 79], [88, 67, 64, 76], [94, 55, 67, 81]]
  
  test_scores.any? do |scores|
    scores.all? { |score| score > 80 }
  end
  #=> false
  
  test_scores.all? do |scores|
    scores.any? { |score| score > 80 }
  end
  #=> true
  
  #hashes aninhados
  
  vehicles = {
    alice: {year: 2019, make: "Toyota", model: "Corolla"},
    blake: {year: 2020, make: "Volkswagen", model: "Beetle"},
    caleb: {year: 2020, make: "Honda", model: "Accord"}
  }
  
  #acessando dados
  
  vehicles[:alice][:year]
  #=> 2019
  vehicles[:blake][:make]
  #=> "Volkswagen"
  vehicles[:caleb][:model]
  #=> "Accord"
  
  vehicles[:zoe][:year]
  #=> NoMethodError
  vehicles.dig(:zoe, :year)
  #=> nil
  vehicles[:alice][:color]
  #=> nil
  vehicles.dig(:alice, :color)
  #=> nil
  
  
  