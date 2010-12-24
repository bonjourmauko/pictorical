class Dragonfly::ActiveRecordExtensions::Attachment
  def save!
    destroy! if uid_changed?
    self.uid = app.datastore.store(temp_object, parent_model) if has_data_to_store?
  end
end

class Dragonfly::DataStorage::S3DataStore
  def store(temp_object, parent_model)
    uid = generate_uid(temp_object.basename || 'file', parent_model)
    ensure_initialized
    object = use_filesystem ? temp_object.file : temp_object.data
    S3Object.store(uid, object, bucket_name)
    uid
  end

  def generate_uid(suffix, parent_model)
    base = 
      case parent_model.class.to_s
        when "Artist" then "artists"
        when "Writer" then "writers"
        when "Book" then "books"
        when "Gallery" then "books"
        when "GalleryEntry" then "books"
        else parent_model.class.to_s.tableize
      end

      "#{base}/#{parent_model.id}/#{suffix}"
  end
end 