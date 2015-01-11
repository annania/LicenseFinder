require 'feature_helper'

describe "Pip Dependencies" do
  # As a Python developer
  # I want to be able to manage Pip dependencies

  let(:user) { LicenseFinder::TestingDSL::User.new }

  specify "are shown in reports" do
    LicenseFinder::TestingDSL::PipProject.create
    user.run_license_finder
    expect(user).to be_seeing_line 'argparse, 1.2.1, "Python Software Foundation License"'
  end
end
