Bookmarks::Application.routes.draw do
	resources :sections

	root :to => 'sections#index'
end
