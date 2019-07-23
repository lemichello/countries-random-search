class CountriesController < ApplicationController
  def index
    all_countries = Country.all

    limit = params[:limit].to_i
    limit = rand(5..25) if limit.zero?

    @display_countries = all_countries.sample(limit)
    @display_countries.sort! { |a, b| a['name'] <=> b['name'] }
  end
end
