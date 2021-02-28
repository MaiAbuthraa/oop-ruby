require 'forwardable'

class Memory
  def details
    "16 GB 2133 MHz LPDDR3"
  end
end

class Computer
  extend Forwardable

  def initialize(memory)
    @memory = memory
  end

  def_delegators :@memory, :details
end

memory = Memory.new
computer = Computer.new(memory)

puts computer.details
