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
                class InsightsQuestionnairesQuestionList < ListResource
                
                    ##
                    # Initialize the InsightsQuestionnairesQuestionList
                    # @param [Version] version Version that contains the resource
                    # @return [InsightsQuestionnairesQuestionList] InsightsQuestionnairesQuestionList
                    def initialize(version)
                        super(version)
                        # Path Solution
                        @solution = {  }
                        @uri = "/Insights/QualityManagement/Questions"
                        
                    end
                    ##
                    # Create the InsightsQuestionnairesQuestionInstance
                    # @param [String] category_sid The SID of the category
                    # @param [String] question The question.
                    # @param [String] answer_set_id The answer_set for the question.
                    # @param [Boolean] allow_na The flag to enable for disable NA for answer.
                    # @param [String] description The description for the question.
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [InsightsQuestionnairesQuestionInstance] Created InsightsQuestionnairesQuestionInstance
                    def create(
                        category_sid: nil, 
                        question: nil, 
                        answer_set_id: nil, 
                        allow_na: nil, 
                        description: :unset, 
                        authorization: :unset
                    )

                        data = Twilio::Values.of({
                            'CategorySid' => category_sid,
                            'Question' => question,
                            'AnswerSetId' => answer_set_id,
                            'AllowNa' => allow_na,
                            'Description' => description,
                        })

                        
                        headers = Twilio::Values.of({ 'Authorization' => authorization, })
                        payload = @version.create('POST', @uri, data: data, headers: headers)
                        InsightsQuestionnairesQuestionInstance.new(
                            @version,
                            payload,
                        )
                    end

                
                    ##
                    # Lists InsightsQuestionnairesQuestionInstance records from the API as a list.
                    # Unlike stream(), this operation is eager and will load `limit` records into
                    # memory before returning.
                    # @param [String] authorization The Authorization HTTP request header
                    # @param [Array[String]] category_sid The list of category SIDs
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Array] Array of up to limit results
                    def list(authorization: :unset, category_sid: :unset, limit: nil, page_size: nil)
                        self.stream(
                            authorization: authorization,
                            category_sid: category_sid,
                            limit: limit,
                            page_size: page_size
                        ).entries
                    end

                    ##
                    # Streams Instance records from the API as an Enumerable.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    # @param [String] authorization The Authorization HTTP request header
                    # @param [Array[String]] category_sid The list of category SIDs
                    # @param [Integer] limit Upper limit for the number of records to return. stream()
                    #    guarantees to never return more than limit.  Default is no limit
                    # @param [Integer] page_size Number of records to fetch per request, when
                    #    not set will use the default value of 50 records.  If no page_size is defined
                    #    but a limit is defined, stream() will attempt to read the limit with the most
                    #    efficient page size, i.e. min(limit, 1000)
                    # @return [Enumerable] Enumerable that will yield up to limit results
                    def stream(authorization: :unset, category_sid: :unset, limit: nil, page_size: nil)
                        limits = @version.read_limits(limit, page_size)

                        page = self.page(
                            authorization: authorization,
                            category_sid: category_sid,
                            page_size: limits[:page_size], )

                        @version.stream(page, limit: limits[:limit], page_limit: limits[:page_limit])
                    end

                    ##
                    # When passed a block, yields InsightsQuestionnairesQuestionInstance records from the API.
                    # This operation lazily loads records as efficiently as possible until the limit
                    # is reached.
                    def each
                        limits = @version.read_limits

                        page = self.page(page_size: limits[:page_size], )

                        @version.stream(page,
                            limit: limits[:limit],
                            page_limit: limits[:page_limit]).each {|x| yield x}
                    end

                    ##
                    # Retrieve a single page of InsightsQuestionnairesQuestionInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] authorization The Authorization HTTP request header
                    # @param [Array[String]] category_sid The list of category SIDs
                    # @param [String] page_token PageToken provided by the API
                    # @param [Integer] page_number Page Number, this value is simply for client state
                    # @param [Integer] page_size Number of records to return, defaults to 50
                    # @return [Page] Page of InsightsQuestionnairesQuestionInstance
                    def page(authorization: :unset, category_sid: :unset, page_token: :unset, page_number: :unset, page_size: :unset)
                        params = Twilio::Values.of({
                            'Authorization' => authorization,
                            
                            'CategorySid' =>  Twilio.serialize_list(category_sid) { |e| e },
                            'PageToken' => page_token,
                            'Page' => page_number,
                            'PageSize' => page_size,
                        })

                        response = @version.page('GET', @uri, params: params)

                        InsightsQuestionnairesQuestionPage.new(@version, response, @solution)
                    end

                    ##
                    # Retrieve a single page of InsightsQuestionnairesQuestionInstance records from the API.
                    # Request is executed immediately.
                    # @param [String] target_url API-generated URL for the requested results page
                    # @return [Page] Page of InsightsQuestionnairesQuestionInstance
                    def get_page(target_url)
                        response = @version.domain.request(
                            'GET',
                            target_url
                        )
                    InsightsQuestionnairesQuestionPage.new(@version, response, @solution)
                    end
                    


                    # Provide a user friendly representation
                    def to_s
                        '#<Twilio.FlexApi.V1.InsightsQuestionnairesQuestionList>'
                    end
                end


                class InsightsQuestionnairesQuestionContext < InstanceContext
                    ##
                    # Initialize the InsightsQuestionnairesQuestionContext
                    # @param [Version] version Version that contains the resource
                    # @param [String] question_sid The SID of the question
                    # @return [InsightsQuestionnairesQuestionContext] InsightsQuestionnairesQuestionContext
                    def initialize(version, question_sid)
                        super(version)

                        # Path Solution
                        @solution = { question_sid: question_sid,  }
                        @uri = "/Insights/QualityManagement/Questions/#{@solution[:question_sid]}"

                        
                    end
                    ##
                    # Delete the InsightsQuestionnairesQuestionInstance
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete(
                        authorization: :unset
                    )

                        
                        headers = Twilio::Values.of({ 'Authorization' => authorization, })
                        @version.delete('DELETE', @uri, headers: headers)
                    end

                    ##
                    # Update the InsightsQuestionnairesQuestionInstance
                    # @param [Boolean] allow_na The flag to enable for disable NA for answer.
                    # @param [String] category_sid The SID of the category
                    # @param [String] question The question.
                    # @param [String] description The description for the question.
                    # @param [String] answer_set_id The answer_set for the question.
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [InsightsQuestionnairesQuestionInstance] Updated InsightsQuestionnairesQuestionInstance
                    def update(
                        allow_na: nil, 
                        category_sid: :unset, 
                        question: :unset, 
                        description: :unset, 
                        answer_set_id: :unset, 
                        authorization: :unset
                    )

                        data = Twilio::Values.of({
                            'AllowNa' => allow_na,
                            'CategorySid' => category_sid,
                            'Question' => question,
                            'Description' => description,
                            'AnswerSetId' => answer_set_id,
                        })

                        
                        headers = Twilio::Values.of({ 'Authorization' => authorization, })
                        payload = @version.update('POST', @uri, data: data, headers: headers)
                        InsightsQuestionnairesQuestionInstance.new(
                            @version,
                            payload,
                            question_sid: @solution[:question_sid],
                        )
                    end


                    ##
                    # Provide a user friendly representation
                    def to_s
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.FlexApi.V1.InsightsQuestionnairesQuestionContext #{context}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        context = @solution.map{|k, v| "#{k}: #{v}"}.join(',')
                        "#<Twilio.FlexApi.V1.InsightsQuestionnairesQuestionContext #{context}>"
                    end
                end

                class InsightsQuestionnairesQuestionPage < Page
                    ##
                    # Initialize the InsightsQuestionnairesQuestionPage
                    # @param [Version] version Version that contains the resource
                    # @param [Response] response Response from the API
                    # @param [Hash] solution Path solution for the resource
                    # @return [InsightsQuestionnairesQuestionPage] InsightsQuestionnairesQuestionPage
                    def initialize(version, response, solution)
                        super(version, response)

                        # Path Solution
                        @solution = solution
                    end

                    ##
                    # Build an instance of InsightsQuestionnairesQuestionInstance
                    # @param [Hash] payload Payload response from the API
                    # @return [InsightsQuestionnairesQuestionInstance] InsightsQuestionnairesQuestionInstance
                    def get_instance(payload)
                        InsightsQuestionnairesQuestionInstance.new(@version, payload)
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        '<Twilio.FlexApi.V1.InsightsQuestionnairesQuestionPage>'
                    end
                end
                class InsightsQuestionnairesQuestionInstance < InstanceResource
                    ##
                    # Initialize the InsightsQuestionnairesQuestionInstance
                    # @param [Version] version Version that contains the resource
                    # @param [Hash] payload payload that contains response from Twilio
                    # @param [String] account_sid The SID of the
                    #   {Account}[https://www.twilio.com/docs/iam/api/account] that created this InsightsQuestionnairesQuestion
                    #   resource.
                    # @param [String] sid The SID of the Call resource to fetch.
                    # @return [InsightsQuestionnairesQuestionInstance] InsightsQuestionnairesQuestionInstance
                    def initialize(version, payload , question_sid: nil)
                        super(version)
                        
                        # Marshaled Properties
                        @properties = { 
                            'account_sid' => payload['account_sid'],
                            'question_sid' => payload['question_sid'],
                            'question' => payload['question'],
                            'description' => payload['description'],
                            'category' => payload['category'],
                            'answer_set_id' => payload['answer_set_id'],
                            'allow_na' => payload['allow_na'],
                            'usage' => payload['usage'] == nil ? payload['usage'] : payload['usage'].to_i,
                            'answer_set' => payload['answer_set'],
                            'url' => payload['url'],
                        }

                        # Context
                        @instance_context = nil
                        @params = { 'question_sid' => question_sid  || @properties['question_sid']  , }
                    end

                    ##
                    # Generate an instance context for the instance, the context is capable of
                    # performing various actions.  All instance actions are proxied to the context
                    # @return [InsightsQuestionnairesQuestionContext] CallContext for this CallInstance
                    def context
                        unless @instance_context
                            @instance_context = InsightsQuestionnairesQuestionContext.new(@version , @params['question_sid'])
                        end
                        @instance_context
                    end
                    
                    ##
                    # @return [String] The SID of the [Account](https://www.twilio.com/docs/iam/api/account) that created the Flex Insights resource and owns this resource.
                    def account_sid
                        @properties['account_sid']
                    end
                    
                    ##
                    # @return [String] The SID of the question
                    def question_sid
                        @properties['question_sid']
                    end
                    
                    ##
                    # @return [String] The question.
                    def question
                        @properties['question']
                    end
                    
                    ##
                    # @return [String] The description for the question.
                    def description
                        @properties['description']
                    end
                    
                    ##
                    # @return [Hash] The Category for the question.
                    def category
                        @properties['category']
                    end
                    
                    ##
                    # @return [String] The answer_set for the question.
                    def answer_set_id
                        @properties['answer_set_id']
                    end
                    
                    ##
                    # @return [Boolean] The flag  to enable for disable NA for answer.
                    def allow_na
                        @properties['allow_na']
                    end
                    
                    ##
                    # @return [String] Integer value that tells a particular question is used by how many questionnaires
                    def usage
                        @properties['usage']
                    end
                    
                    ##
                    # @return [Hash] Set of answers for the question
                    def answer_set
                        @properties['answer_set']
                    end
                    
                    ##
                    # @return [String] 
                    def url
                        @properties['url']
                    end
                    
                    ##
                    # Delete the InsightsQuestionnairesQuestionInstance
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [Boolean] True if delete succeeds, false otherwise
                    def delete(
                        authorization: :unset
                    )

                        context.delete(
                            authorization: authorization, 
                        )
                    end

                    ##
                    # Update the InsightsQuestionnairesQuestionInstance
                    # @param [Boolean] allow_na The flag to enable for disable NA for answer.
                    # @param [String] category_sid The SID of the category
                    # @param [String] question The question.
                    # @param [String] description The description for the question.
                    # @param [String] answer_set_id The answer_set for the question.
                    # @param [String] authorization The Authorization HTTP request header
                    # @return [InsightsQuestionnairesQuestionInstance] Updated InsightsQuestionnairesQuestionInstance
                    def update(
                        allow_na: nil, 
                        category_sid: :unset, 
                        question: :unset, 
                        description: :unset, 
                        answer_set_id: :unset, 
                        authorization: :unset
                    )

                        context.update(
                            allow_na: allow_na, 
                            category_sid: category_sid, 
                            question: question, 
                            description: description, 
                            answer_set_id: answer_set_id, 
                            authorization: authorization, 
                        )
                    end

                    ##
                    # Provide a user friendly representation
                    def to_s
                        values = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.FlexApi.V1.InsightsQuestionnairesQuestionInstance #{values}>"
                    end

                    ##
                    # Provide a detailed, user friendly representation
                    def inspect
                        values = @properties.map{|k, v| "#{k}: #{v}"}.join(" ")
                        "<Twilio.FlexApi.V1.InsightsQuestionnairesQuestionInstance #{values}>"
                    end
                end

            end
        end
    end
end
