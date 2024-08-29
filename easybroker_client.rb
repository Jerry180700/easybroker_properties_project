require 'easy_broker'
require 'json'

class EasyBrokerClient
  def self.fetch_property_titles
    # Configura la gema
    EasyBroker.configure do |config|
      config.api_key = 'l7u502p8v46ba3ppgvj5y2aad50lb9'
      config.api_root_url = 'https://api.stagingeb.com/v1'
    end

    # Crea una instancia del cliente de la API
    client = EasyBroker::ApiClient.new
    # Realiza una solicitud a la API para obtener propiedades
    response = client.get('/properties')
    # Parsear el JSON de la respuesta
    properties = JSON.parse(response.body)
    # Extraer los títulos
    titles = properties['content'].map { |property| property['title'] }
    titles.join(', ')
  end
end
# Llama al método para obtener los títulos de las propiedades
titles_string = EasyBrokerClient.fetch_property_titles
# Muestra los resultados
puts "Títulos de las propiedades:"
puts titles_string
