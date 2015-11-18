def friend(name)
  a_friend = Proc.new { puts "Hello #{name}" }
  a_friend.call
end

friend("Jay")

names = %w[jack ally kt george will]
greet = Proc.new { |name| puts "Hi #{name} How are you?" }
names.each(&greet)

puts "*" * 10

only_symbols = ['henry', :hero, 'jack', :power]

symbol_check = Proc.new { |x| x.is_a? Symbol }

symbols = only_symbols.select(&symbol_check)

puts symbols

