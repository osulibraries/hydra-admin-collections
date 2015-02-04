module Hydra::Admin::Collections
  # class NonIndexedRights < Hydra::Datastream::RightsMetadata 
  # Just guessing...
  # TypeError: superclass must be a Class (Module given)
  class NonIndexedRights < Hydra::AdminPolicy  
    def to_solr(solr_doc=Hash.new)
      return solr_doc
    end
  end
end
