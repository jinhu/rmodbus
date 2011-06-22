# RModBus - free implementation of ModBus protocol on Ruby.
#
# Copyright (C) 2008-2011  Timin Aleksey
#
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
module ModBus
  # Implementation clients(master) ModBusTCP
  class TCPClient < Client
    include TCP
        
    protected
    def open_connection(ipaddr, port = 502, opts = {})
      open_tcp_connection(ipaddr, port, opts)
    end
    
    def get_slave(uid, io)
      TCPSlave.new(uid, io)
    end
  end
end
