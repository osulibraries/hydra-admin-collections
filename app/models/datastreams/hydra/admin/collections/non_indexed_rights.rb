module Hydra::Admin::Collections
  # class NonIndexedRights < Hydra::Datastream::RightsMetadata 
  # Just guessing...
  class NonIndexedRights < Hydra::AccessControls::Permissions   
    def to_solr(solr_doc=Hash.new)
      return solr_doc
    end
  end
end
