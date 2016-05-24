require "./JungleBeats.rb"


class JungleBeats
  def initialize
    @list= LinkedList.new
  end

  def list
    return @list
  end

  def count
    return @list.count
  end

  def play
    @list.system_speak
  end

  def append(string)
    beats= string.split(" ").to_a
    beats.each do |beat|
      @list.append(beat)
    end
  end


  def prepend(string)
    beats= string.split(" ").to_a
    beats.each do |beat|
      @list.prepend(beat)
    end
  end
end

# tester=JungleBeats.new
# tester.list.append("bottom bottom bottom")
# tester.list.prepend("top top top")
# tester.list.system_speak
# puts tester.list.to_string
