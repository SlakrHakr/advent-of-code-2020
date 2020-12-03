items = File.open('data').read.split("\n")

valid_passwords_count = 0;
items.each do |item|
  position1, position2, letter, password = item.match(/^([0-9]+)-([0-9]+)\s([a-z]): (.*)$/).captures
  position1 = position1.to_i
  position2 = position2.to_i

  first_character = password[position1 - 1]
  second_character = password[position2 - 1]
  if (first_character == letter || second_character == letter) && first_character != second_character
    p "#{position1}:#{first_character}, #{position2}:#{second_character}, #{letter}, #{password}"
    valid_passwords_count += 1
  end
end

p "#{valid_passwords_count} valid passwords"
