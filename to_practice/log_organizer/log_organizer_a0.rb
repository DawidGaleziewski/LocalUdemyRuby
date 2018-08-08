require_relative "module_find_data"
require_relative "module_info"
require_relative "class_node"
require_relative "module_filter"

#explain iis log information -- https://stackify.com/how-to-interpret-iis-logs/
#used for testing:
#string = "2018-06-17 20:28:40 10.0.1.251 POST /WSVulnerabilityCore/VulCore.asmx - 443 - 10.28.35.129 Microsoft-ATL-Native/14.00 - 200 0 0 250"

file_to_open = "D:/Programy Instalki/ruby/to_practice/log_organizer/logs/u_ex180617.log"
find_time_from = Time.new(2018, 06, 17, 13)
find_time_to = Time.new(2018, 06, 17, 13, 59)
find_status = "bad"

##blocks with tasks that the node info will be yielded to
#Procs for simple exposition
puts_date = Proc.new {|node_object| puts node_object.date}
puts_status_general = Proc.new {|node_object, line| puts "#{node_object.status_general} --  #{line}"}
puts_status_detail = Proc.new {|node_object, line| puts "#{node_object.status_detail} -- #{line}"}
explain_status = Proc.new {|node_object, line| puts "#{node_object.status_detail} -- #{Info.explain_status(node_object.status_detail)} -- #{line}"}


#core functionalitie of opening doc and putting lines to objects
def core_iis(file_to_open)
  File.open(file_to_open).each do |line|
    #exclude # as those are out of ordinary strings
    unless line[0]== "#"
      node_object = FindData.put_data_from_line_into_object(line)
      yield(node_object, line) #there cannot be space between yield and variables passed
    end
  end
end

p core_iis(file_to_open, &explain_status)
#further add functionalieties with procs or lambdas
# how to add filters that I can use easier, module or lambdas?
