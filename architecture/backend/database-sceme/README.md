# user table
stores
* id
* name
* username
* password
* avatar
* previously selected interface language
* avatar URL
* FOREIGN KEY (user_role) for the user_role table
# test table
stores
* the date the test was assigned
* the date the coach verified it
* the start and end date of the test
* the deadline of the test
* the status of the test
* FOREIGN KEYS 
  * (user_id, id of the user who passed the test) for the waist user,
  * (coach_id, id of the user who checked the test) for the waist user,
  * (level_id) level of the test
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
# error_report table
stores
* id
* report_body
* FOREIGN KEYS
   * (question_id) to the question table,
   * (test_id) to the test table
# answer table
stores
* answer text
* correct marker
* FOREIGN KEY (question_id) to the question table
# file_answer table
stores
* a link to the user's audio file
* a FOREIGN KEYS
  * (question_id) to the question table
  * (test_id) to the test 
# content_file table
stores
* a link to the task audio file
# question_content_file table
stores
* FOREIGN KEYS
  * (question_id) to the question table
  * (content_file_id) to the content_file table
# chosen_option table
stores
* FOREIGN KEYS
    * (test_id) to test (id) table,
    * (question_id) to the question table (id),
    * (chosen_answer_id) to the answer (id) table
#coach_grade table
stores
* grade for question of 3 or 4 module
* FOREIGN KEYS
  * (test_id) to test (id) table,
  * (question_id) to the question table (id)
# module_grade table
stores
* grade for a single module of a test
* FOREIGN KEYS
  * (test_id) to the test (id) table
  * (question_id) to the question (id) table
    
