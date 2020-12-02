items = File.open('data').read.split("\n").map(&:to_i)

items.each do |primary|
  items.each do |secondary|
    if (primary + secondary) == 2020
      p "#{primary} + #{secondary} = #{primary + secondary}"
      p "#{primary} * #{secondary} = #{primary * secondary}"

      return
    end
  end
end
