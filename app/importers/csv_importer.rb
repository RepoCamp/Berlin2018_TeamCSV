require 'csv'
 class CsvImporter
  def initialize(file)
    @file = file
    #@user = ::User.batch_user
  end

  def import
    CSV.foreach(@file) do |row|
      byebug
      image = Image.new
      image.title = ["something"]
      image.depositor = "something"
      image.save
    end
  end

end
