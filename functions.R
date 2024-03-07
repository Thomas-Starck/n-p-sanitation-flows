#function to save csv_files in é directory. If directory does not exist, creates it
f_save_csv_files <- function(file_to_save, output_path, file_name){
  
  # Create the directory recursively if it doesn't exist
  if (!file.exists(output_path)) {
    dir.create(output_path, recursive = TRUE)
  }
  
  # Write the CSV file
  write_csv(file_to_save, file = file.path(output_path, file_name))
  
}