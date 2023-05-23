class AddPrimaryAffiliationToAffiliation < ActiveRecord::Migration[6.1]
  def change
    add_column :affiliations, :primary_affiliation, :boolean, default: false
  end
end
