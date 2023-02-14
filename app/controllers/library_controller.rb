class LibraryController < ApplicationController
    def index
        @libraries = library.all
      end
end
