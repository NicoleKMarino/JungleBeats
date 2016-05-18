class Node
  attr_accessor :value, :next_node
  def initialize value,next_node
    @value = value
    @next_node = next_node
    puts "Initialized a Node with value:  " + value.to_s
  end
end

class LinkedList
  def initialize val
    @head = Node.new(val,nil)
  end

  def append(value)
    current = @head
    while current.next_node != nil
      current = current.next_node
    end
    current.next_node = Node.new(value,nil)
  end

def find_node(index)
  current=@head
  (index).times do
  current=current.value
end
  puts current
#   (number_noises).times do
#   end
# end
#   puts current
  return current
end



def pop_list
  current=@head
  while (current.next_node.next_node != nil)
    current=current.next_node
  end
    return_value=current
    return_value.next_node=nil
    return return_value
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

  def prepend_to_list(value)
    incoming_node = Node.new(value, @head)
    @head=incoming_node
  end

  # def delete(val)
  #   current = @head
  #   if current.value == val
  #     @head = @head.next_node
  #   else
  #     current = @head
  #     while (current != nil) && (current.next_node != nil) && ((current.next_node).value != val)
  #       current = current.next_node
  #     end
  #
  #     if (current != nil) && (current.next_node != nil)
  #       current.next_node = (current.next_node).next_node
  #     end
  #   end
  # end

  def system_speak
    system("say -v Albert " + self.display)
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
  noise.append("bloop")
  noise.append("suu")
  noise.append("dop")
  noise.append("woo")
  puts noise.display
  noise.find_node(2)
  # noise.pop_list
  # noise.insert_at_index(2,"test")
  # noise.prepend_to_list("Nicole was here")
  # puts noise.display
  # noise.system_speak
end

play_beats
