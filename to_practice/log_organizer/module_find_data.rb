module FindData

  ##extract time, convert it to date object
  def self.find_date(string)
    date_raw = string.scan(/\d+-\d+-\d+ \d+:\d+:\d+/) #get date
      unless date_raw.nil?
        year = date_raw.join.split(" ") [0].split("-")
        hour = date_raw.join.split(" ")[1].split(":")
        date_object = Time.new(year[0],year[1],year[2], hour[0], hour[1], hour[2] )
        date_object
      end
  end

  #to put this in seperate module
  #Day, date, Month year hour format, example: Tue, 26 Jun 2018 15:18:23
  # def  self.find_date_2(string)
  #   date_raw = string.scan(/\d+ [A-Z][a-z]{2} \d{4} \d+:\d+:\d+/)[0]
  #   date_raw = date_raw.split(" ")
  #   hour_raw = date_raw[3].split(":")
  #   find_date = Time.new(date_raw[2], date_raw[1], date_raw[0], hour_raw[0],hour_raw[1], hour_raw[2])
  #   find_date
  # end

  #extract servers, on which log was generated- source_server
  # ip_source_server 10.0.1.251
  def self.find_ip_source_server(string)
    ip_source_server = string.scan(/\d+\.\d+\.\d+\.\d+/)[0]
    ip_source_server
  end

  #extract request method/action
  def self.find_request_method(string)
    http_header = string.scan(/[A-Z]+/)[0]
  end

  #extract cs-uri-stem- target of the action
  def self.find_action_target(string)
    action_target =string.scan(/\/[A-z \/ \.]+/).join
    action_target
  end

  #Find server Port s-port The server port number that is configured for the service.
  def self.find_port_source_server(string)
    port_source_server = string.scan(/- \d+/)
    port_source_server[0].tr(' -', '')
  end

  #Client IP Address c-ip -The IP address of the client that made the request.
  def self.find_ip_client_requester(string)
    ip_client_requester = string.scan(/\d+\.\d+\.\d+\.\d+/)[1]
    ip_client_requester
  end

  #Win32 Status -sc-win32-status - The Windows status code.
  def self.find_status(string)
      status_request_raw = string.scan(/- \d{3} \d+ \d+ \d+/).join.split(" ")
      status_request = status_request_raw[1] + "." + status_request_raw[2]
      status_request
  end

  def self.put_data_from_line_into_object(line)
    Node.new(
     FindData.find_date(line), FindData.find_status(line),
     FindData.find_ip_source_server(line), FindData.find_request_method(line),
     FindData.find_action_target(line), FindData.find_port_source_server(line),
     FindData.find_ip_client_requester(line)
    )
  end

end
