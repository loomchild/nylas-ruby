require 'restful_model'
require 'event'

module Nylas
  class Calendar < RestfulModel

    parameter :name
    parameter :description
    parameter :read_only

    def events
      @events ||= RestfulModelCollection.new(Event, @_api, {:calendar_id=>@id})
    end

  end
end
