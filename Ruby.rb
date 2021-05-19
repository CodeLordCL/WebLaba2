#Коментарии разработчика
#Да. Второе имя этой программы - 
#"Зачем использовать нормадлнцю логику, когда можно построить всё на костылях?"
#-----------------------------------------------
#Подключаем гемы
require 'json'
require 'sinatra'
require_relative 'csv_reports/csv_processor.rb'

set :bind, '0.0.0.0'
set :port, 5678


#-----------------------------------------------
#Это начальная старница

hash = {
    "moscow" => 25,
    "tagil" => -10,
    "chita" => 30,
    "novoyrengoi" => 27
}

get '/' do
    hash.to_json
end

get '/:city' do 
    hash[params['city']].to_json
end

post '/' do
    hash[params['city']] = params['temp']
end

delete '/:city' do 
    hash.delete(params['city'])
end