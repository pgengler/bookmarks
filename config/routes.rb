Bookmarks::Application.routes.draw do
	resources :sections
	resources :links

	root :to => 'sections#index'
end
