Bookmarks::Application.routes.draw do
	resources :sections

	root :to => 'section#index'
end
