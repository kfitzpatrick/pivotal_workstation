class Chef::Recipe
  def bash_profile_include(bash_file)
    include_recipe "kevins_workstation_fork::bash_profile"

    template "#{BASH_INCLUDES_SUBDIR}/#{bash_file}.sh" do
      source "bash_profile-#{bash_file}.sh.erb"
      owner WS_USER
      backup false
    end
  end
end