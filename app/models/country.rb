class Country
  include HTTParty

  default_options.update(verify: false)
  base_uri 'https://restcountries.eu/rest/v2'

  format :json

  def self.all
    countries = get('/all')

    countries.each do |country|
      country['borders'].map! do |country_code|
        countries.find { |c| c['alpha3Code'] == country_code }['name']
      end
      country['languages'].map! { |language| language['name'] }
    end

    countries
  end
end
