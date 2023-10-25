  def generate_matrix(n, k)
    matrix = Array.new(n) { Array.new(n) }

    n.times do |i|
      n.times do |j|
        matrix[i][j] = k+2
      end
      matrix[i][i] = 2
    end

    return matrix
  end

def generate_vector(n)
  vector = (1..n).to_a
  return vector
end

def print_matrix(matrix)
  matrix.each do |row|
    puts row.join("\t")
  end
end

def print_vector(vector)
  vector.join("\t")
end

def gauss_elimination(matrix)

  n = matrix.size

  (0..n-1).each do |i|
    max_row = i
    (i+1..n-1).each { |j| max_row = j if matrix[j][i].abs > matrix[max_row][i].abs }
    matrix[i], matrix[max_row] = matrix[max_row], matrix[i]

    (i+1..n-1).each do |j|
      factor = matrix[j][i].to_f / matrix[i][i]
      (i..n).each { |k| matrix[j][k] -= factor * matrix[i][k] }
    end
  end

  x = Array.new(n)
  (n-1).downto(0).each do |i|
    x[i] = matrix[i][n].to_f / matrix[i][i]
    (i-1).downto(0).each { |j| matrix[j][n] -= matrix[j][i] * x[i] }
  end

  return x
end

puts "Enter a size: "
n = gets.chomp.to_i

if n < 3 || n > 9
  puts "Wrong size! Enter the value between 3 and 9"
  exit
end

k = 5
matrix_A = generate_matrix(n, k)
puts "\nMatrix:"
print_matrix(matrix_A)

vector_b = generate_vector(n)
puts "\nVector:"
puts vector_b

solution = gauss_elimination(matrix_A.map(&:clone).zip(vector_b).map(&:flatten))

puts "\nResult:"
(0..n-1).each { |i| puts "x#{i+1} = #{solution[i]}" }
