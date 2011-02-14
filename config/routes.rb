GemRatings::Application.routes.draw do
   resources :rubygems, path: 'gems', id: Rubygem::ROUTE_MATCHER
end
