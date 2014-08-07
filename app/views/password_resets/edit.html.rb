<h1>Reset Password</h1>

<%= simple_form_for @user, :url => password_reset_path(params[:id]) do |f| %>
<%= f.input :password %>
<%= f.input :password_confirmation %>
<%= f.submit "Update Password" %>
<% end %>

