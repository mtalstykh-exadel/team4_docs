# Swagger Guide

## Authorization
1. Go to `https://untitled-testing-system.herokuapp.com/swagger-ui.html`
2. Send `/login` request using Swagger:
   * Click on the `Try it out` button
      ![img_2.png](img_2.png)
      
   * Enter login and password here:
      ![img_3.png](img_3.png)
        
   
There are 8 users in the database now:
   
   |       Username  |        Login             |   Password        |
   |-----------------|--------------------------|-------------------|
   | Russian User    | rus_user@northsixty.com  | rus_user_password |
   | English User    | eng_user@northsixty.com  | eng_user_password |
   | Russian HR      | rus_hr@northsixty.com    | rus_hr_password   |
   | English HR      | eng_hr@northsixty.com    | eng_hr_password   |
   | Russian Coach   | rus_coach@northsixty.com | rus_coach_password|
   | English Coach   | eng_coach@northsixty.com | eng_coach_password|
   | Russian Admin   | rus_admin@northsixty.com | rus_admin_password|
   | English Admin   | eng_admin@northsixty.com | eng_admin_password|

   Your JSON will look like this:
````
{
"login": "rus_user@northsixty.com",
"password": "rus_user_password"
}
````


   * Click on this button
  ![img_5.png](img_5.png)
   
   * You will get JWT token. It'll look like this:

     ![img_6.png](img_6.png)

   * Copy the JWT token

3) Click on the `Authorize` button
![img_7.png](img_7.png)
   
4) Type `Bearer`, paste your JWT token here and click on the authorize button:
![img_9.png](img_9.png)
   

   ___________________________________________________
   
You can test all requests now

##Examples

1) Let's assign a test for the user with id = 3:
   ![img_10.png](img_10.png)

   Success:
   ![img_11.png](img_11.png)


2) Let's get created test (id = 2):
   ![img_12.png](img_12.png)
   Success:
   ![img_13.png](img_13.png)