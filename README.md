# ScrubberPhoenix

This is the project repository for the Scrubber Project.

The main idea for this project (apart from learning Elixir and Phoenix) is to parse
CSV files uploaded by a User of the app and create key:value Records off of them, so
the main layout of the app looks something like this:


User
|--Document
   |--Record

(A User has many Documents, and a Document has many Records.)

So, once a User uploads a file, it saves some information about it (such as the filename
it was uploaded as and what it was saved as in the filesystem) and the app should let 
him/her choose if the CSV file has a header, and how to map each column to predetermined
fields to save (since the format for the files is not exactly consistent, or they shouldn't
be trusted to be.) Once that has been done, the app processes the file and saves the
obtained Records to the database.
