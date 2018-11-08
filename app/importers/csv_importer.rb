require 'csv'
class CsvImporter
  def initialize(file)
    @file = file
    @user = ::User.batch_user
  end
  def import
    CSV.foreach(@file) do |row|
      image = Image.new
      image.title = [row[1]]
    end
  end
end