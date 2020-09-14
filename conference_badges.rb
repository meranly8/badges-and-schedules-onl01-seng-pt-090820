def badge_maker(name)
  "Hello, my name is #{name}."
end

# def batch_badge_creator(array)
#   attendees = []
#   array.each{|name| attendees << badge_maker(name)}
#   attendees
# end

def batch_badge_creator(array)
  array.collect{|name| badge_maker(name)}
end

def assign_rooms(array)
  room_assignments = []
  array.each_with_index{|speaker, room| room_assignments << "Hello, #{speaker}! You'll be assigned to room #{room + 1}!"}
  room_assignments
end


def printer(array)
  batch_badge_creator(array).each{|badge| puts badge}
  
  assign_rooms(array).each{|room| puts room}
end