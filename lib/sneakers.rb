class Sneakers

  def initialize
    puts 'Enter a phrase to sneakerize:'
    @phrase = gets.chomp

    sneakerize
  end

  def sneakerize
    puts
    100.times do
      print (0...@phrase.length).collect { random_char }.join
      sleep 0.1
      @phrase.length.times do
        print "\x08"
      end
    end
    puts
  end

private
  def random_char
    (45..126).to_a[Kernel.rand(81)].chr
  end
end
