class Node
  attr_accessor :value, :next_node
  def initialize value,next_node
    @value = value
    @next_node = next_node
    puts value
  end
end

class LinkedList
  def initialize
    @head = nil
  end

  def head
    return @head
  end

  def append(value)
    if(@head.nil?)
      @head = Node.new(value,nil)
    else
      current = @head
      while current.next_node != nil
        current = current.next_node
      end
      current.next_node = Node.new(value,nil)
    end
  end

  def find(index,number_noise)
    current=@head
    (index).times do
      current=current.next_node
    end
    puts current.value
    (number_noise).times do
      current=current.next_node
      return current.value
    end
  end

  def includes?(value)
    current=@head
    if current == nil
      puts "There is nothing in this list"
      return nil
    else
      while current != nil
        if(current.value == value)
          return true
        else
          current = current.next_node
        end
      end
      return false
    end
  end

  def count
    counter=0
    current=@head
    while current != nil
      current = current.next_node
      counter +=1
    end
    puts counter
    return counter
  end

  def pop
    current=@head
    if(current.nil?)
      puts 'The linked list was empty'
      return nil
    elsif current.next_node.nil?
      puts "Now your list is empty"
      @head = nil
      return current
    else
      while (current.next_node.next_node != nil)
        current=current.next_node
      end
      return_value=current
      return_value.next_node=nil
      return return_value
    end
  end


  def insert(index,value)
    current = @head
    (index-1).times do
      raise "List not long enough" if current.nil?
      current = current.next_node
    end
    incoming_node = Node.new(value, current.next_node)
    current.next_node = incoming_node
  end

  def prepend(value)
    incoming_node = Node.new(value, @head)
    @head=incoming_node
  end


  def system_speak
    system("say -v boing -r 500 " + self.to_string)
  end

  def to_string
    current = @head
    full_list = []
    while current.next_node != nil
      full_list += [current.value.to_s]
      current = current.next_node
    end
    full_list += [current.value.to_s]
    full_list = full_list.join(" ")
    return full_list
  end
end
