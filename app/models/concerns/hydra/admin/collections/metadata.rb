module Hydra::Admin::Collections::Metadata
  extend ActiveSupport::Concern
  included do
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

  end
end

