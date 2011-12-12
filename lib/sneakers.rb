class Sneakers
  def initialize
    puts 'Enter a phrase to sneakerize:'
    @phrase = gets.chomp
    @length = @phrase.length
    @control = Array.new(@phrase.size, 0)
  end

  def display
    system('clear')
    sneakerize
    puts
  end

  def sneakerize
    Thread.new do
      sleep 2
      loop do
        index = Kernel.rand(@length)
        blank = @control[index]
        if blank == 0
          @control[index] = 1
          finish if @control.include?(0) == false
          sleep 0.1
        end
      end
    end

    loop do
      print_line
      sleep 0.1
    end
  end

  def print_line(overwrite=true)
    print output
    if overwrite
      @phrase.length.times do
        print "\x08"
      end
    end
  end

  def finish
    print_line(false)
    puts
    puts "Done!"
    exit
  end

private
  def output
    out = ""
    @control.each_with_index do |c, i|
      if c == 0
        out += random_char
      else
        out += @phrase[i]
      end
    end
    out
  end

  def random_char
    (45..126).to_a[Kernel.rand(81)].chr
  end
end
