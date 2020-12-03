items = File.open('data').read.split("\n")

valid_passwords_count = 0;
items.each do |item|
  min, max, letter, password = item.match(/^([0-9]+)-([0-9]+)\s([a-z]): (.*)$/).captures
  min = min.to_i
  max = max.to_i

  times_included = password.scan(/(?=#{letter})/).count

  if times_included >= min && times_included <= max
    p "#{min}, #{max}, #{letter}, #{password}, #{times_included}"
    valid_passwords_count += 1
  end
end

p "#{valid_passwords_count} valid passwords"
