# frozen_string_literal: true
require 'rails_helper'
require 'active_fedora/cleaner'
RSpec.describe CsvImporter do
  let(:one_line_example)       { 'spec/fixtures/one_line_example.csv' }
  let(:three_line_example)     { 'spec/fixtures/three_line_example.csv' }
  let(:user) { ::User.batch_user }
  before do
    DatabaseCleaner.clean
    ActiveFedora::Cleaner.clean!
  end

  it "puts the title into the title field" do
    CsvImporter.new(one_line_example).import
    imported_image = Image.first
    expect(imported_image.title.first).to eq 'A Cute Dog'
  end


end
