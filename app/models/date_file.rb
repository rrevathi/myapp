class DateFile < ActiveRecord::Base
def self.save(upload)
    name =  upload['datefile'].original_filename
    directory = "/home/chilambarasan/Desktop/dummy/public/data"
    # create the file path
    path = File.join(directory, name)
    # write the file
    File.open(path, "wb") { |f| f.write(upload['datefile'].read) }
  end
end
