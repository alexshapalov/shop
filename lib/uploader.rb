require 'net/ssh'
require 'net/sftp'

# Net::SFTP.start("localhost", "user") do |sftp|
#   sftp.upload! "/local/file.tgz", "/remote/file.tgz"
# end

class Uploader

  def initialize
    @host = "hotdigit.ftp.tools"
    @user = "hotdigit_nazd"
    @password = "Ey33a7gE9B"
  end
 
  def upload
    Net::SFTP.start(@host, @user, :password => @password) do |sftp|
      puts "Status OK"
      sftp.upload! "/local/file.tgz", "/remote/file.tgz"
    end

    # Net::SFTP.start(@host, @user, :password => @password) do |sftp|
    #   puts "Status OK"

    #   # sftp.upload!(local_file_path, remote_file_path) do |event, uploader, *args|
    #   #   case event
    #   #   when :open
    #   #     Rails.logger("Starting upload...")
    #   #   when :finished
    #   #     Rails.logger("Finishing upload...")
    #   #   end
    #   # end
    # end
  end
end

up = Uploader.new
up.upload