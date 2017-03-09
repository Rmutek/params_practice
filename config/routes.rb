Rails.application.routes.draw do
  get "/query_params_url" => "params_examples#query_params_method"
  get "/url_segment_params_url/:variable" => "params_examples#url_segment_params_method"
  get "/form_params_url" => "params_examples#form_params_method"
  post "/form_results_url" => "params_examples#form_results_method"
end
