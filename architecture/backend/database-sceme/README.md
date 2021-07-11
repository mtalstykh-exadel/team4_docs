# user table
stores
* id
* name
* username
* password
* previously selected interface language
* FOREIGN KEY (user_role) for the user_role table
# test table
stores
* the date the test was created
* the date the grade was updated after the teacher checked it
* the start and end date of the test
* the status of the test
* final score
* FOREIGN KEY (id of the user who passed the test) for the waist user
# question table
stores
* question text
* question availability
* FOREIGN KEYS
    * (level_id) to the level table
    * (module_id) to the module table
    * (creator_user_id) to the user table
# test_question table
stores
* FOREIGN KEYS
    * (test_id) to the test table,
    * (question_id) to the question table
# answer table
stores
* answer text
* correct marker
* FOREIGN KEY (question_id) to the question table
# file_answer table
stores
* a link to the user's audio file
* a FOREIGN KEY (question_id) to the question table
# content_file table
stores
* a link to the task audio file
* FOREIGN KEY (question_id) to the question table
# choosen_option table
stores
* FOREIGN KEYS
    * (test_id) to test (id) table,
    * (question_id) to the question table (id),
    * (choosen_answer_id) to the answer (id) table,
    * (file_answer_id) to the file_answer (id) table