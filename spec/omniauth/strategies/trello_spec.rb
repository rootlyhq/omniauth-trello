require 'spec_helper'

describe OmniAuth::Strategies::Trello do
  subject do
    OmniAuth::Strategies::Trello.new({})
  end

  context "client options" do
    it "should have correct site" do
      expect(subject.options.client_options.site).to eq("https://trello.com")
    end

    it "should have correct authorize path" do
      expect(subject.options.client_options.authorize_path).to eq("/1/OAuthAuthorizeToken")
    end

    it "should have the correct request token path" do
      expect(subject.options.client_options.request_token_path).to eq("/1/OAuthGetRequestToken")
    end

    it "should have the correct access token path" do
      expect(subject.options.client_options.access_token_path).to eq("/1/OAuthGetAccessToken")
    end
  end

  describe '#callback_url' do
    let(:base_url) { 'https://example.com' }

    context 'no script name present' do
      it 'has the correct default callback path' do
        allow(subject).to receive(:full_host) { base_url }
        allow(subject).to receive(:script_name) { '' }
        allow(subject).to receive(:query_string) { '' }
        expect(subject.callback_url).to eq(base_url + '/auth/trello/callback')
      end
    end

    context 'script name' do
      it 'should set the callback path with script_name' do
        allow(subject).to receive(:full_host) { base_url }
        allow(subject).to receive(:script_name) { '/v1' }
        allow(subject).to receive(:query_string) { '' }
        expect(subject.callback_url).to eq(base_url + '/v1/auth/trello/callback')
      end
    end
  end
end
