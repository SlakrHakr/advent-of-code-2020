items = File.open('data').read.split("\n").map(&:to_i)

items.each do |primary|
  items.each do |secondary|
    items.each do |tertiary|
      if (primary + secondary + tertiary) == 2020
        p "#{primary} + #{secondary} + #{tertiary} = #{primary + secondary + tertiary}"
        p "#{primary} * #{secondary} * #{tertiary} = #{primary * secondary * tertiary}"

        return
      end
    end
  end
end
