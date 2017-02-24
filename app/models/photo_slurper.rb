class PhotoSlurper
  DIR = 'sample-pics'

  def self.slurp
    user_id = User.first.id
    files.each do |file|
      data = File.read(file)
      user_id = User.first ? User.first.id : '1'
      PhotoResource.write_to_s3(data, user_id)
    end
  end

  def self.files
    Dir.entries(DIR).select {|f| f.match(/jpg|png/) }.map {|f| "#{DIR}/#{f}" }
  end

end
