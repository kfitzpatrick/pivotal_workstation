include_recipe "pivotal_workstation::git"

run_unless_marker_file_exists("git_aliases") do
  
  bash_profile_include("git_aliases")
  execute "set alias st=status" do
    command "git config --global alias.st status"
    user WS_USER
  end
end