##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /
#
# frozen_string_literal: true

require 'spec_helper.rb'

describe 'TollfreeVerification' do
  it "can fetch" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.tollfree_verifications('HHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://messaging.twilio.com/v1/Tollfree/Verifications/HHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "HHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "customer_profile_sid": "BU3344409f7e067e279523808d267e2d85",
          "trust_product_sid": "BU3344409f7e067e279523808d267e2d88",
          "regulated_item_sid": "RA3344409f7e067e279523808d267e2d89",
          "date_created": "2021-01-27T14:18:35Z",
          "date_updated": "2021-01-27T14:18:36Z",
          "business_name": "Agent",
          "business_street_address": "927 Terrace St",
          "business_street_address2": "Unit 4",
          "business_city": "Tempe",
          "business_state_province_region": "AZ",
          "business_postal_code": "85281",
          "business_country": "USA",
          "business_website": "www.ghost.com",
          "business_contact_first_name": "Vikram",
          "business_contact_last_name": "Amar",
          "business_contact_email": "vikram@gmail.com",
          "business_contact_phone": "+16504988765",
          "notification_email": "vikram@gmail.com",
          "use_case_categories": [
              "TWO_FACTOR_AUTHENTICATION",
              "MARKETING"
          ],
          "use_case_summary": "test",
          "production_message_sample": "test1",
          "opt_in_image_urls": [
              "https://zipwhiptestbusiness.com/images/image1.jpg",
              "https://zipwhiptestbusiness.com/images/image2.jpg"
          ],
          "opt_in_type": "VERBAL",
          "message_volume": "1,000",
          "additional_information": "info",
          "tollfree_phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "status": "TWILIO_APPROVED",
          "url": "https://messaging.twilio.com/v1/Tollfree/Verifications/HHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "resource_links": {
              "customer_profile": "https://trusthub.twilio.com/v1/CustomerProfiles/BU3344409f7e067e279523808d267e2d85",
              "trust_product": "https://trusthub.twilio.com/v1/TrustProducts/BU3344409f7e067e279523808d267e2d88",
              "channel_endpoint_assignment": "https://trusthub.twilio.com/v1/TrustProducts/BU3344409f7e067e279523808d267e2d88/ChannelEndpointAssignments/RA3344409f7e067e279523808d267e2d89"
          }
      }
      ]
    ))

    actual = @client.messaging.v1.tollfree_verifications('HHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').fetch()

    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.tollfree_verifications.list()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://messaging.twilio.com/v1/Tollfree/Verifications',
    ))).to eq(true)
  end

  it "receives read responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "meta": {
              "page": 0,
              "page_size": 50,
              "first_page_url": "https://messaging.twilio.com/v1/Tollfree/Verifications?Status=TWILIO_APPROVED&TollfreePhoneNumberSid=PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0",
              "previous_page_url": null,
              "next_page_url": null,
              "key": "verifications",
              "url": "https://messaging.twilio.com/v1/Tollfree/Verifications?Status=TWILIO_APPROVED&TollfreePhoneNumberSid=PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa&PageSize=50&Page=0"
          },
          "verifications": [
              {
                  "sid": "HHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "customer_profile_sid": "BU3344409f7e067e279523808d267e2d85",
                  "trust_product_sid": "BU3344409f7e067e279523808d267e2d88",
                  "regulated_item_sid": "RA3344409f7e067e279523808d267e2d89",
                  "date_created": "2021-01-27T14:18:35Z",
                  "date_updated": "2021-01-27T14:18:36Z",
                  "business_name": "Agent",
                  "business_street_address": "927 Terrace St",
                  "business_street_address2": "Unit 4",
                  "business_city": "Tempe",
                  "business_state_province_region": "AZ",
                  "business_postal_code": "85281",
                  "business_country": "USA",
                  "business_website": "www.ghost.com",
                  "business_contact_first_name": "Vikram",
                  "business_contact_last_name": "Amar",
                  "business_contact_email": "vikram@gmail.com",
                  "business_contact_phone": "+16504988765",
                  "notification_email": "vikram@gmail.com",
                  "use_case_categories": [
                      "TWO_FACTOR_AUTHENTICATION",
                      "MARKETING"
                  ],
                  "use_case_summary": "test",
                  "production_message_sample": "test1",
                  "opt_in_image_urls": [
                      "https://zipwhiptestbusiness.com/images/image1.jpg",
                      "https://zipwhiptestbusiness.com/images/image2.jpg"
                  ],
                  "opt_in_type": "VERBAL",
                  "message_volume": "1,000",
                  "additional_information": "info",
                  "tollfree_phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "status": "TWILIO_APPROVED",
                  "url": "https://messaging.twilio.com/v1/Tollfree/Verifications/HHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "resource_links": {
                      "customer_profile": "https://trusthub.twilio.com/v1/CustomerProfiles/BU3344409f7e067e279523808d267e2d85",
                      "trust_product": "https://trusthub.twilio.com/v1/TrustProducts/BU3344409f7e067e279523808d267e2d88",
                      "channel_endpoint_assignment": "https://trusthub.twilio.com/v1/TrustProducts/BU3344409f7e067e279523808d267e2d88/ChannelEndpointAssignments/RA3344409f7e067e279523808d267e2d89"
                  }
              }
          ]
      }
      ]
    ))

    actual = @client.messaging.v1.tollfree_verifications.list()

    expect(actual).to_not eq(nil)
  end

  it "can create" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.tollfree_verifications.create(business_name: 'business_name', business_website: 'business_website', notification_email: 'notification_email', use_case_categories: ['use_case_categories'], use_case_summary: 'use_case_summary', production_message_sample: 'production_message_sample', opt_in_image_urls: ['opt_in_image_urls'], opt_in_type: 'VERBAL', message_volume: 'message_volume', tollfree_phone_number_sid: 'PNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')
    }.to raise_exception(Twilio::REST::TwilioError)

    values = {
        'BusinessName' => 'business_name',
        'BusinessWebsite' => 'business_website',
        'NotificationEmail' => 'notification_email',
        'UseCaseCategories' => Twilio.serialize_list(['use_case_categories']) { |e| e },
        'UseCaseSummary' => 'use_case_summary',
        'ProductionMessageSample' => 'production_message_sample',
        'OptInImageUrls' => Twilio.serialize_list(['opt_in_image_urls']) { |e| e },
        'OptInType' => 'VERBAL',
        'MessageVolume' => 'message_volume',
        'TollfreePhoneNumberSid' => 'PNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    }
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://messaging.twilio.com/v1/Tollfree/Verifications',
        data: values,
    ))).to eq(true)
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::Response.new(
        201,
      %q[
      {
          "sid": "HHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "regulated_item_sid": null,
          "customer_profile_sid": "BU3344409f7e067e279523808d267e2d85",
          "trust_product_sid": null,
          "status": "PENDING_REVIEW",
          "date_created": "2021-01-27T14:18:35Z",
          "date_updated": "2021-01-27T14:18:36Z",
          "business_name": "Agent",
          "business_street_address": "927 Terrace St",
          "business_street_address2": "Unit 4",
          "business_city": "Tempe",
          "business_state_province_region": "AZ",
          "business_postal_code": "85281",
          "business_country": "USA",
          "business_website": "www.ghost.com",
          "business_contact_first_name": "Vikram",
          "business_contact_last_name": "Amar",
          "business_contact_email": "vikram@gmail.com",
          "business_contact_phone": "+16504988765",
          "notification_email": "vikram@gmail.com",
          "use_case_categories": [
              "TWO_FACTOR_AUTHENTICATION",
              "MARKETING"
          ],
          "use_case_summary": "test",
          "production_message_sample": "test1",
          "opt_in_image_urls": [
              "https://zipwhiptestbusiness.com/images/image1.jpg",
              "https://zipwhiptestbusiness.com/images/image2.jpg"
          ],
          "opt_in_type": "VERBAL",
          "message_volume": "1,000",
          "additional_information": "info",
          "tollfree_phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "resource_links": {},
          "url": "https://messaging.twilio.com/v1/Tollfree/Verifications/HHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.messaging.v1.tollfree_verifications.create(business_name: 'business_name', business_website: 'business_website', notification_email: 'notification_email', use_case_categories: ['use_case_categories'], use_case_summary: 'use_case_summary', production_message_sample: 'production_message_sample', opt_in_image_urls: ['opt_in_image_urls'], opt_in_type: 'VERBAL', message_volume: 'message_volume', tollfree_phone_number_sid: 'PNXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX')

    expect(actual).to_not eq(nil)
  end

  it "can update" do
    @holodeck.mock(Twilio::Response.new(500, ''))

    expect {
      @client.messaging.v1.tollfree_verifications('HHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()
    }.to raise_exception(Twilio::REST::TwilioError)

    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'post',
        url: 'https://messaging.twilio.com/v1/Tollfree/Verifications/HHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
    ))).to eq(true)
  end

  it "receives update responses" do
    @holodeck.mock(Twilio::Response.new(
        200,
      %q[
      {
          "sid": "HHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "regulated_item_sid": null,
          "customer_profile_sid": "BU3344409f7e067e279523808d267e2d85",
          "trust_product_sid": null,
          "status": "PENDING_REVIEW",
          "date_created": "2021-01-27T14:18:35Z",
          "date_updated": "2021-01-27T14:18:36Z",
          "business_name": "Agent",
          "business_street_address": "927 Terrace St",
          "business_street_address2": "Unit 4",
          "business_city": "Tempe",
          "business_state_province_region": "AZ",
          "business_postal_code": "85281",
          "business_country": "USA",
          "business_website": "www.ghost.com",
          "business_contact_first_name": "Vikram",
          "business_contact_last_name": "Amar",
          "business_contact_email": "vikram@gmail.com",
          "business_contact_phone": "+16504988765",
          "notification_email": "vikram@gmail.com",
          "use_case_categories": [
              "TWO_FACTOR_AUTHENTICATION",
              "MARKETING"
          ],
          "use_case_summary": "test",
          "production_message_sample": "test1",
          "opt_in_image_urls": [
              "https://zipwhiptestbusiness.com/images/image1.jpg",
              "https://zipwhiptestbusiness.com/images/image2.jpg"
          ],
          "opt_in_type": "VERBAL",
          "message_volume": "1,000",
          "additional_information": "info",
          "tollfree_phone_number_sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "resource_links": {},
          "url": "https://messaging.twilio.com/v1/Tollfree/Verifications/HHaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))

    actual = @client.messaging.v1.tollfree_verifications('HHXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX').update()

    expect(actual).to_not eq(nil)
  end
end