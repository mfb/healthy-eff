require 'rails_helper'
require 'spec_helper'

RSpec.describe InvitationsController, :type => :controller do

  describe 'non-admin' do
    before :each do
      @request.env["devise.mapping"] = Devise.mappings[:user]
      @user = User.new(:email=>'meow@meow.com', :password=>'meowmeowbeans', :password_confirmation=>'meowmeowbeans')
      sign_in @user
      InvitationsController.any_instance.should_receive(:current_user).at_least(1).and_return @user
      allow(request.env['warden']).to receive(:authenticate!).and_return(@user)
    end
    it 'should not be able to send invitations' do
      post :new
      expect(response).to redirect_to(root_path)
      flash[:notice].should eql('You are not authorized to send invites!')
    end
  end
end
