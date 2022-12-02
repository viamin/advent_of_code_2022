class Day1
  def initialize
    @data = File.read("./data/day1.txt")
  end

  def go!
    puts "Part 1: #{part_1}"
    puts "Part 2: #{part_2}"
  end

  private

  def part_1
    @elf_burdens = @data.split("\n\n").map { |line| line.split("\n").map(&:to_i) }
    @elf_totals = @elf_burdens.map do |elf|
      elf.reduce(0) do |total, calories|
        total + calories
      end
    end
    @part_1 = @elf_totals.max
  end

  def part_2
    @top_three_carriers = @elf_totals.max(3)
    @part_2 = @top_three_carriers.sum
  end
end

Day1.new.go!
