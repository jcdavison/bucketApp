json.photos @photos do |photo|
  json.id photo.id
  json.url photo.url
  json.caption photo.caption
  json.userName photo.user.name
end
