module Twilio
  module REST
    class Messages < ListResource; end

    class Message < InstanceResource
      def initialize(path, client, params={})
        super
        resource :media
      end
    end
  end
end
