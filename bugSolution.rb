```ruby
class MyClass
  def initialize(value)
    @value = value
    unless @value.is_a?(Integer)
      raise TypeError, "Value must be an Integer"
    end
  end

  def value
    @value
  end

  def value=(new_value)
    unless new_value.is_a?(Integer)
      raise TypeError, "New value must be an Integer"
    end
    @value = new_value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10
my_object.value = 20
puts my_object.value # => 20

begin
  my_object.value = "hello"
rescue TypeError => e
  puts e.message # => "New value must be an Integer"
end
```