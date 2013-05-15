Bookmarks::Application.routes.draw do
	resources :sections do
		resources :links
	end

	root to: 'sections#index'
end
