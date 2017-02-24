class S3StorageRequest
  attr_reader :photo_resource, :data
  FOTO_SUFFIX = '-gantri-pic.jpg'
  S3_URI = 'https://s3-us-west-2.amazonaws.com/gantribucket/'

  def initialize(photo_resource:, data:)
    @photo_resource = photo_resource
    @data = data
  end

  def process
    resource = Aws::S3::Resource.new
    bucket = resource.bucket('gantribucket')
    remote_file = bucket.put_object({
      acl: 'public-read',
      body: data,
      key: foto_file_name,
      content_type: 'image/jpeg'
    })
    save_remote_url(remote_file.key)
  end

  private 
  def save_remote_url(s3_key)
    photo_resource.update_attributes(url: full_url(s3_key))
  end

  def foto_file_name
    SecureRandom.hex << FOTO_SUFFIX
  end

  def full_url(file_location)
    "#{S3_URI}#{file_location}"
  end
end

