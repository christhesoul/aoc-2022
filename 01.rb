require "pry"

module Day01
  class << self
    def part_one(input)
      calories_by_elf(input).max
    end

    def part_two(input)
      calories_by_elf(input).max(3).sum
    end

    private

    def calories_by_elf(input)
      input
        .chunk(&:empty?)
        .filter_map { |spacer, ary| ary.map(&:to_i) unless spacer }
        .map(&:sum)
    end
  end
end
