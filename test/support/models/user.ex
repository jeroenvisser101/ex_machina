defmodule ExMachina.User do
  use Ecto.Schema

  schema "users" do
    field :name, :string
    field :admin, :boolean
    field :net_worth, :decimal
    field :password, :string, virtual: true

    belongs_to :site,   ExMachina.Site
    has_many :articles, ExMachina.Article
    has_many :editors, through: [:articles, :editor]
    has_one :best_article, ExMachina.Article
  end
end
