#Erlang format float with 2 decimal points
:io.format("~4.2f~n", [5.234])
#Elixir environment variables
System.get_env
#Elixir one environment variable
System.get_env("USER")
#Elixir get functions for a module
File.__info__(:functions)
#Elixir get info for a file
File.lstat("media")
#Get a file extension
Path.extname('io.exs')
#Current pid
System.get_pid()
#Info about current processes
Process.info(Kernel.self)

@doc "
 Get current folder where the process is running
 # Uses :file.get_cwd Erlang
 #
"
System.cwd()
@doc "
Example of using the group leader.
#In this case I'm outputting the string to the group leader process
"
IO.puts Process.group_leader, "Group leader speaking"
@doc "
Convert a string containing JSON into Elixir data structure
"
# Check cookie_parser/mix.exs
# created after reading
# http://elixir-lang.org/getting-started/mix-otp/introduction-to-mix.html
@doc "
On Type http://learnyousomeerlang.com/types-or-lack-thereof

"

@doc "
Execute a command in yoru operating system's shell
"
System.cmd("ls", [])

System.cmd('iex', ['--sname '])
