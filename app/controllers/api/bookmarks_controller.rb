module Api
  class BookmarksController < Api::ApplicationController
    def index
      @bookmarks = Bookmark.all
      render json: { bookmarks: @bookmarks, app: current_application.name, doorkeeper_token: doorkeeper_token }
    end
  end
end
