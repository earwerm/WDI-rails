module ApplicationHelper
  def is_admin?
    @auth.present? && @auth.is_admin?
  end

  def intellinav
    links = ''
    links << "<li>#{link_to('list albums', albums_path)}</li>"
    links << "<li>#{link_to('list artists', artists_path)}</li>"
    links << "<li>#{link_to('list songs', songs_path)}</li>"
    links << "<li>#{link_to('list genres', genres_path)}</li>"
    if @auth.present?
      if @auth.is_admin?
        links << "<li>#{link_to('add album', new_album_path)}</li>"
        links << "<li>#{link_to('add artist', new_artist_path)}</li>"
        links << "<li>#{link_to('add song', new_song_path)}</li>"
        links << "<li>#{link_to('add genre', new_genre_path)}</li>"
        links << "<li>#{link_to("show users", users_path)}</li>"
      end
      links << "<li>#{link_to('account', edit_users_path)}</li>"
      links << "<li>#{link_to('logout ' + @auth.name, login_path, :method => :delete, :confirm => "Are you sure?")}</li>"
      links << "<li>balance: #{ number_to_currency @auth.balance}</li>"
    else
      links << "<li>#{link_to('sign up', new_user_path)}</li>"
      links << "<li>#{link_to('login', login_path)}</li>"
    end
  end
end
