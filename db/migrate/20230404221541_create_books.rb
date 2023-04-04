class CreateClients < ActiveRecord::Migration[6.1]
  def change
    create_table :clients do |t|
      t.username :string
    end
  end
end
