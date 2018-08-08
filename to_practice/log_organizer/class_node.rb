#one node
class Node

  attr_accessor :date, :status_general, :status_detail, :ip_source_server, :request_method, :action_target, :port_source_server, :client_requester

  def initialize(date, status_detail ,ip_source_server, request_method, action_target, port_source_server, client_requester)
    # ,status_general = true, status_detail = nil, ip_source_server = nil, request_method = nil, action_target = nil, port_source_server = nil, client_requester = nil)
    #general data
    @date = date
    #by default true, assuming all works fine

    @status_detail = status_detail
    @status_general = status_general

    #mostly for iis
    @ip_source_server = ip_source_server
    @request_method = request_method
    @action_target = action_target
    @port_source_server = port_source_server
    @client_requester = client_requester
  end

  def status_general
    if @status_detail.to_f < 299
      "good"
    else
      "bad"
    end
  end
end

#do next correct above
#why this is not working?
#also wath procs 2
