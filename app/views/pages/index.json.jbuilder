json.array!(@pages) do |page|
  json.extract! page, :id, :html, :css, :js, :user_id, :template_id
  json.url page_url(page, format: :json)
end
