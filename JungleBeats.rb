class Node
  attr_accessor :data, :next_node
  def initialize(data, next_node)
    @data = data
    @next_node = next_node
  end
end

class LinkedList
  attr_accessor :head, :tail
  # Initialize head and tail to same initial Node.
  def initialize (head)
    raise "LinkedList must be initialized with a Node." unless head.is_a?(Node)
    @head = head
    @tail = head
  end
  def insert(node)
    @tail.next = node
    @tail = @tail.next
  end
  # Print out all the values of the LinkedList in order.
  def print
    current_node = @head
    while current_node != nil
      puts "\tLL Node Value = #{current_node.value}"
      current_node = current_node.next
    end
  end
  def delete(data)
    current_node.next = @head
    if current_node.data = data
      @head = current_node.next
    else
      while (current.next != nil) && (current_node.next.data != data)
        current_node = current_node.next
      end
      unless current_node.next == nil
        current_node.next = current_node.next.next
      end
    end
  end
end

node_1=Node.new("plop",nil)
list = LinkedList.new(node_1)



# 1) Initialize count as 0
# 2) Initialize a node pointer, current = head.
# 3) Do following while current is not NULL
#      a) current = current -> next
#      b) count++;
# 4) Return count
# http://geeksquiz.com/find-length-of-a-linked-list-iterative-and-recursive/
