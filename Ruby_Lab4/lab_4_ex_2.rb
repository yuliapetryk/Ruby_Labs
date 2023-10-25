def trace_of_matrix(matrix)
  trace = 0
  matrix.each_with_index do |row, i|
    trace += row[i]
  end
  return trace
end

def generate_matrix(n)
  matrix = Array.new(n) { Array.new(n) }

  n.times do |i|
    n.times do |j|
      matrix[i][j] = rand(10)
    end
  end

  return matrix
end


matrix_B = generate_matrix(8)


puts "Matrix:"
matrix_B.each do |row|
  puts row.join("\t")
end

trace_B = trace_of_matrix(matrix_B)
puts "\nTrace of matrix: #{trace_B}"
