
feature 'Viewing bookmarks' do
  feature 'visiting the homepage' do
    scenario 'the page title is visible' do
      visit '/'

      expect(page).to have_content 'Bookmark Manager'
    end
  end

  feature 'viewing bookmarks' do
    scenario 'bookmarks are visible' do
      # Add the test data

      Bookmark.create(url: "http://www.makersacademy.com", title: 'Makers Academy')
      Bookmark.create(url: "http://www.destroyallsoftware.com", title: 'Destroy All Software')
      Bookmark.create(url: "http://www.google.com", title: 'Google')

      visit '/bookmarks'

      expect(page).to have_content('Makers Academy')
      expect(page).to have_content('Destroy All Software')
      expect(page).to have_content('Google')
    end
  end
end
