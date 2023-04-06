require_relative 'my_enumerable'

class MyList
  def initialize(*args)
    @list = args
  end

  def each(&block)
    @list.each(&block) if block_given?
  end

  include MyEnumerable
end
