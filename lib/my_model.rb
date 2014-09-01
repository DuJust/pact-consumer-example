class MyModel
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def ==(other)
    other.is_a?(MyModel) && other.name == name
  end
end