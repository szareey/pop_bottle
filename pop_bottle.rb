cash = 10
@total_bottles = cash / 2

def buy!(bottles, caps)
  puts "You had a total of #{@total_bottles} bottles"
  puts "You currently have #{bottles} bottles left"
  puts "You have #{caps} caps"
  gets.chomp
  if bottles >= 2 || caps >= 4
    new_bottles = 0
    new_bottles = bottles / 2
    new_bottles += caps / 4
    bottles %= 2
    caps %= 4
    caps += new_bottles
    bottles += new_bottles
    @total_bottles += new_bottles
    buy!(bottles, caps) unless bottles < 2 && caps < 4
  end
end


buy!(@total_bottles, @total_bottles)
puts "You had a total of #{@total_bottles} bottles"