##
#    This code was generated by
#    ___ _ _ _ _ _    _ ____    ____ ____ _    ____ ____ _  _ ____ ____ ____ ___ __   __
#     |  | | | | |    | |  | __ |  | |__| | __ | __ |___ |\ | |___ |__/ |__|  | |  | |__/
#     |  |_|_| | |___ | |__|    |__| |  | |    |__] |___ | \| |___ |  \ |  |  | |__| |  \
#
#    Twilio - Flex
#    This is the public Twilio REST API.
#
#    NOTE: This class is auto generated by OpenAPI Generator.
#    https://openapi-generator.tech
#    Do not edit the class manually.
#


module Twilio
  module REST
    class FlexApi < FlexApiBase
      class V1 < Version
        class PluginArchiveList < ListResource

          ##
          # Initialize the PluginArchiveList
          # @param [Version] version Version that contains the resource
          # @return [PluginArchiveList] PluginArchiveList
          def initialize(version)
            super(version)
            # Path Solution
            @solution = {  }


          end



          # Provide a user friendly representation
          def to_s
            '#<Twilio.FlexApi.V1.PluginArchiveList>'
          end
        end


        class PluginArchiveContext < InstanceContext
          ##
          # Initialize the PluginArchiveContext
          # @param [Version] version Version that contains the resource
          # @param [String] sid The SID of the Flex Plugin resource to archive.
          # @return [PluginArchiveContext] PluginArchiveContext
          def initialize(version, sid)
            super(version)

            # Path Solution
            @solution = { sid: sid,  }
            @uri = "/PluginService/Plugins/#{@solution[:sid]}/Archive"


          end
          ##
          # Update the PluginArchiveInstance
          # @param [String] flex_metadata The Flex-Metadata HTTP request header
          # @return [PluginArchiveInstance] Updated PluginArchiveInstance
          def update(
            flex_metadata: :unset
          )


            headers = Twilio::Values.of({ 'Flex-Metadata' => flex_metadata, })
            payload = @version.update('POST', @uri, headers: headers)
            PluginArchiveInstance.new(
              @version,
              payload,
              sid: @solution[:sid],
              )
          end


          ##
          # Provide a user friendly representation
          def to_s
            context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.FlexApi.V1.PluginArchiveContext #{context}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
            "#<Twilio.FlexApi.V1.PluginArchiveContext #{context}>"
          end
        end

        class PluginArchivePage < Page
          ##
          # Initialize the PluginArchivePage
          # @param [Version] version Version that contains the resource
          # @param [Response] response Response from the API
          # @param [Hash] solution Path solution for the resource
          # @return [PluginArchivePage] PluginArchivePage
          def initialize(version, response, solution)
            super(version, response)

            # Path Solution
            @solution = solution
          end

          ##
          # Build an instance of PluginArchiveInstance
          # @param [Hash] payload Payload response from the API
          # @return [PluginArchiveInstance] PluginArchiveInstance
          def get_instance(payload)
            PluginArchiveInstance.new(@version, payload)
          end

          ##
          # Provide a user friendly representation
          def to_s
            '<Twilio.FlexApi.V1.PluginArchivePage>'
          end
        end
        class PluginArchiveInstance < InstanceResource
          ##
          # Initialize the PluginArchiveInstance
          # @param [Version] version Version that contains the resource
          # @param [Hash] payload payload that contains response from Twilio
          # @param [String] account_sid The SID of the
          #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this PluginArchive
          #   resource.
          # @param [String] sid The SID of the Call resource to fetch.
          # @return [PluginArchiveInstance] PluginArchiveInstance
          def initialize(version, payload , sid: nil)
            super(version)

            # Marshaled Properties
            @properties = {
              'sid' => payload['sid'],
              'account_sid' => payload['account_sid'],
              'unique_name' => payload['unique_name'],
              'friendly_name' => payload['friendly_name'],
              'description' => payload['description'],
              'archived' => payload['archived'],
              'date_created' => Twilio.deserialize_iso8601_datetime(payload['date_created']),
              'date_updated' => Twilio.deserialize_iso8601_datetime(payload['date_updated']),
              'url' => payload['url'],
            }

            # Context
            @instance_context = nil
            @params = { 'sid' => sid  || @properties['sid']  , }
          end

          ##
          # Generate an instance context for the instance, the context is capable of
          # performing various actions.  All instance actions are proxied to the context
          # @return [PluginArchiveContext] CallContext for this CallInstance
          def context
            unless @instance_context
              @instance_context = PluginArchiveContext.new(@version , @params['sid'])
            end
            @instance_context
          end

          ##
          # @return [String] The unique string that we created to identify the Flex Plugin resource.
          def sid
            @properties['sid']
          end

          ##
          # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Flex Plugin resource and owns this resource.
          def account_sid
            @properties['account_sid']
          end

          ##
          # @return [String] The name that uniquely identifies this Flex Plugin resource.
          def unique_name
            @properties['unique_name']
          end

          ##
          # @return [String] The friendly name this Flex Plugin resource.
          def friendly_name
            @properties['friendly_name']
          end

          ##
          # @return [String] A descriptive string that you create to describe the plugin resource. It can be up to 500 characters long
          def description
            @properties['description']
          end

          ##
          # @return [Boolean] Whether the Flex Plugin is archived. The default value is false.
          def archived
            @properties['archived']
          end

          ##
          # @return [Time] The date and time in GMT when the Flex Plugin was created specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
          def date_created
            @properties['date_created']
          end

          ##
          # @return [Time] The date and time in GMT when the Flex Plugin was last updated specified in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format.
          def date_updated
            @properties['date_updated']
          end

          ##
          # @return [String] The absolute URL of the Flex Plugin resource.
          def url
            @properties['url']
          end

          ##
          # Update the PluginArchiveInstance
          # @param [String] flex_metadata The Flex-Metadata HTTP request header
          # @return [PluginArchiveInstance] Updated PluginArchiveInstance
          def update(
            flex_metadata: :unset
          )

            context.update(
              flex_metadata: flex_metadata,
              )
          end

          ##
          # Provide a user friendly representation
          def to_s
            values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.FlexApi.V1.PluginArchiveInstance #{values}>"
          end

          ##
          # Provide a detailed, user friendly representation
          def inspect
            values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
            "<Twilio.FlexApi.V1.PluginArchiveInstance #{values}>"
          end
        end

      end
    end
  end
end
