module Log

  def log(log_entry)
    # In the future we will write this to a file or database
    puts "#{Time.now}: #{log_entry}"
    # %x{ say "#{log_entry}"}
  end
  
end
