require './lib/triangles'

@previous_triangles = []

def triangle_typer
  puts "Press 'n' to enter new triangle dimensions, 'l' to list all the triangles entered and 'x' to exit the program."
  choice = gets.chomp
  if choice == 'n'
    add_triangle
  elsif choice == 'l'
    list_triangles
    triangle_typer
  elsif choice == 'x'
    puts "Goodbye, we'll miss you."
  else puts "Apparently you can't understand basic directions. Try again."
    triangle_typer
  end
end

def add_triangle
  puts "Please enter the lengths of all three sides. Letters will be converted to 0."
  @side_a = gets.chomp.to_i
  @side_b = gets.chomp.to_i
  @side_c = gets.chomp.to_i

  new_triangle = Triangle.new(@side_a, @side_b, @side_c)
  @previous_triangles << new_triangle

  puts "Your triangle is #{new_triangle.type_of_triangle}!!!"
  triangle_typer
end

def list_triangles
  @previous_triangles.each do |triangle|
    puts "Your previous triangles were #{triangle.type_of_triangle}!"
  end
end
triangle_typer
