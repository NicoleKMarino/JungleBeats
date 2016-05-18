class Node
  attr_accessor :value, :next_node
  def initialize val,next_node
    @value = val
    @next_node = next_node
    puts "Initialized a Node with value:  " + value.to_s
  end
end

class LinkedList
  def initialize val
    @head = Node.new(val,nil)
  end

  def add(value)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(value,nil)
  end


  def insert_at_index(index,value)
    current = @head
    (index-1).times do
      raise "List not long enough" if current.nil?
      current = current.next_node
    end
    incoming_node = Node.new(value, current.next_node)
    current.next_node = incoming_node
  end



  def delete(val)
    current = @head
    if current.value == val
      @head = @head.next_node
    else
      current = @head
      while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
        current = current.next_node
      end

      if (current != nil) && (current.next_node != nil)
        current.next_node = (current.next_node).next_node
      end
    end
  end

  def system_speak
    system("say -v Albert -r 500 " + self.display)
  end

  def display
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


def counter
  puts ObjectSpace.each_object(Node).count
end

def play_beats
  noise = LinkedList.new("plop")
  noise.add("bloop")
  noise.add("suu")
  noise.add("dop")
  noise.add("woo")

  puts noise.display
  noise.insert_at_index(2,"test")
  puts noise.display
  noise.system_speak
end

play_beats
