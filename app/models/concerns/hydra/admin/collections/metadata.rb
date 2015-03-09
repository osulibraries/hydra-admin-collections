module Hydra::Admin::Collections::Metadata
  # extend ActiveSupport::Concern
  # included do
    # has_metadata 'descMetadata', type: ActiveFedora::SimpleDatastream do |sds|
    #   sds.field :name, :string
    #   sds.field :description, :string
    #   sds.field :publisher, :string
    #   sds.field :type, :string
    #   sds.field :language, :string
    #   sds.field :coverage, :string
    #   sds.field :creator, :string
    # end

    property :title, predicate: RDF::DC.title, multiple: false do |index|
     index.as :stored_searchable
    end
    property :description, predicate: RDF::DC.description, multiple: false do |index|
      index.type :text
      index.as :stored_searchable
    end
    property :publisher, predicate: RDF::DC.publisher do |index|
      index.as :stored_searchable, :facetable
    end
    property :language, predicate: RDF::DC.language do |index|
      index.as :stored_searchable, :facetable
    end
    property :creator, predicate: RDF::DC.creator do |index|
      index.as :stored_searchable, :facetable
    end
    
    # has_attributes :description, :name, :publisher, :type, :language, :coverage, datastream: :descMetadata, multiple: false
    # has_attributes :creator, datastream: :descMetadata, multiple: true
  # end
end

