require 'spec_helper'

describe WelcomeController do
  let(:api) do 
    WelcomeController.new
  end
  context "sanity" do

    describe "#render_to_string" do
      let(:response) { api.render_to_string( "welcome/index" ) }

      it "should be okay" do
        expect { response }.to raise_error ActionView::Template::Error
      end

    end
  end

  context "usage" do
    let(:presenter) do
      HeaderNavigation::Presenter.from_nothing
    end

    describe "#render_to_string" do
      let(:response) { api.render_to_string :partial => "header_navigation/header_navigation", :locals => {:presenter => presenter} }

      it "should've rendered the view partial as per my demands" do
        expect { response }.not_to raise_error
        response.should be_a String
        response.should =~ /<ul class='nav'/
        response.should =~ /<a href/
      end
    end
  end
  

end