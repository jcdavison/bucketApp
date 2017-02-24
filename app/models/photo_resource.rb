class PhotoResource < ApplicationRecord
  belongs_to :user

  def self.write_to_s3(data, user_id = 1)
    resource = create(user_id: user_id)
    S3StorageRequest.new(photo_resource: resource, data: data).process
  end

  def self.all_active
    where(deleted: false)
  end
end
