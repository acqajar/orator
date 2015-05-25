json.array!(@templates) do |template|
  json.extract! template, :id, :html, :css, :js
  json.url template_url(template, format: :json)
end
