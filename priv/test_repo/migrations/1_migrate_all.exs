defmodule ExMachina.TestRepo.Migrations.MigrateAll do
  use Ecto.Migration

  def change do
    create table(:sites) do
      add :name, :string
    end

    create table(:users) do
      add :name, :string
      add :admin, :boolean
      add :site_id, :integer
      add :net_worth, :decimal
    end

    create table(:articles) do
      add :title, :string
      add :author_id, :integer
      add :editor_id, :integer
      add :site_id, :integer
      add :publisher_id, :integer
      add :visits, :decimal
    end

    create table(:comments) do
      add :author, :map
      add :links, {:array, :map}, default: []
    end
  end
end
