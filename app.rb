require 'sinatra'
require 'net/http'

def fetch(uri)
  Net::HTTP.get(URI.parse(uri))
end

SUCCESS = fetch('https://img.shields.io/badge/build-passing-brightgreen.svg')
FAILING = fetch('https://img.shields.io/badge/build-failing-red.svg')
UNKNOWN = fetch('https://img.shields.io/badge/build-unknown-lightgrey.svg')

get '/:source/:org/:repo.svg' do
  content_type 'image/svg+xml;charset=utf-8'
  base = 'https://circleci.com'
  uri = "#{base}/#{params[:source]}/#{params[:org]}/#{params[:repo]}"\
        '.svg?style=svg'
  uri = "#{uri}&circle-token=#{params[:token]}" if params[:token]
  result = fetch(uri)
  match = /<rect x="0" fill="#(\S{6})"/.match(result)
  return UNKNOWN unless match
  color = match.captures.first.downcase
  return SUCCESS if color == '229922'
  return FAILING if color == 'c13737'
  UNKNOWN
end
