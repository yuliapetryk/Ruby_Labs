def find_area(vertices)
  $n = vertices.length
  $result = 0
  for i in 0...$n-1
    $result += (vertices[i][0] * vertices[i+1][1]) - (vertices[i+1][0] * vertices[i][1])
  end
  $result += (vertices[$n-1][0] * vertices[0][1]) - (vertices[0][0] * vertices[$n-1][1])
  $result = ($result.abs / 2.0)

end

vertices = [
  [42, 51], [76, 48], [117, 48], [150, 42], [204, 41],
  [228, 85], [240, 133], [243, 193], [272, 221], [265, 275],
  [207,274], [149, 271], [103, 261], [75, 229], [93, 172],
  [84, 149], [48, 134], [26, 107], [26, 86], [27, 71],[37, 57]
]

$result =find_area(vertices)
puts 'Result: '+ $result.to_s