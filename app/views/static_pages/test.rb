<div class="twitter">
  <h2> These are your top 50 Twitter followers </h2>
  <ol><% 10.times do |i| %>
    <li> Username: <a href = "http://twitter.com/<%=@twitter_parsed[i][:username] %>" target = "blank"> <%=@twitter_parsed[i][:username] %></a>
      <ul>
        <li> Bio: <%= @twitter_parsed[i][:bio] %></li>
        <li> Followers: <%=@twitter_parsed[i][:followers_count] %> </li>
        <li> Location: <%=@twitter_parsed[i][:location] %> </li>
      </ul>
    <% end %>
  </ol>
</div>


<div class="instagram">
  <h2> These are your top 50 Instagram followers </h2>
  <ol><% 10.times do |i| %>
    <li> Username: <a href = "http://instagram.com/<%=@instagram_parsed[i][:username] %>" target = "blank"> <%=@instagram_parsed[i][:username] %></a>
      <ul>
        <li> Bio: <%= @instagram_parsed[i][:bio] %></li>
        <li> Followers: <%=@instagram_parsed[i][:followers_count] %> </li>
      </ul>
    <% end %>
  </ol>
</div><!-- Closing Instagram Class -->