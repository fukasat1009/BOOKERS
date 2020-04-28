Rails.application.routes.draw do


 root to: 'homes#top'

 get 'books' => 'homes#books'

 get 'books' => 'homes#index'

 post 'books' => 'homes#create'

 get 'books/:id' => 'homes#show', as: 'homes'

 get 'books/:id/edit' => 'homes#edit', as: 'edit_homes'

 patch 'books/:id' => 'homes#update' ,as: 'update_books'

 delete 'books/:id' => 'homes#destroy', as:'destroy_homes'

end