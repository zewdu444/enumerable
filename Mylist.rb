load 'MyEnumerable.rb'

class MyList
  def initialize (*args)
    @list = args
  end

  def each
    @list.each do |item|
      yield item if block_given?
    end
  end

  include MyEnumerable
end