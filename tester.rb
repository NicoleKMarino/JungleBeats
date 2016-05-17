class Node
  attr_accessor :data, :next_node

  def initialize(data, next_node)
    @data = data
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail
  def initialize (head)
      raise "LinkedList must be initialized with a Node." unless head.is_a?(Node)

      @head = head
      @tail = head
  end
node_1=Node.new("plop",nil)
node_2=Node.new("doop",nil)

# Insert Node after the tail of the LinkedList.
def insert(node)
    @tail.next = node
    @tail = @tail.next
end


def add(data)
  current = @head
  while current.next != nil
    current = current.next
  end
  current.next = Node.new(data, nil)
end

  def delete(data)
    current.next = @head
    if current.data = data
      @head = current.next
    else
      while (current.next != nil) && (current.next.data != data)
        current = current.next
      end
      unless current.next == nil
        current.next = current.next.next
      end
    end
  end

   def print
       current_node = @head

       while current_node != nil
           puts "\tLL Node dataue = #{current_node.dataue}"
           current_node = current_node.next
       end
   end
