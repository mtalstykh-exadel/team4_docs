# Swagger Guide

## Authorization
1. Go to [https://untitled-testing-system.herokuapp.com/swagger-ui.html](https://untitled-testing-system.herokuapp.com/swagger-ui.html)
2. Send `/login` request using Swagger:
   * Click on the `Try it out` button:
   
    ![img_2](https://user-images.githubusercontent.com/71790626/127183522-84576b59-64eb-42b9-9835-cfcbc0830fbd.png)
      
   * Enter login and password here:
     
    ![img_3](https://user-images.githubusercontent.com/71790626/127183657-3fd9d1e6-43c7-4ccc-9546-f8adbb21b5b6.png)

        
   
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
  
  ![img_5](https://user-images.githubusercontent.com/71790626/127183725-19d41904-dcd7-4b24-b2f7-6006f0479f2a.png)

   
   * You will get `JWT token`. It'll look like this:

   ![img_6](https://user-images.githubusercontent.com/71790626/127183757-69daadd1-2acd-4820-9dec-70edf4b24935.png)


   * Copy the `JWT token`

3) Click on the `Authorize` button

![img_7](https://user-images.githubusercontent.com/71790626/127183896-5ae1f162-aa2e-43e1-8333-8e19af2c999f.png)

   
4) Type `Bearer`, paste your `JWT token` and click on the `Authorize` button:

![img_9](https://user-images.githubusercontent.com/71790626/127183917-3650e9a8-a021-4695-b613-84b961a50147.png)
   

   ___________________________________________________
   
You can test all requests now

## Examples

1) Let's assign a test for the user with id = 3:

![img_10](https://user-images.githubusercontent.com/71790626/127183940-3ebf3bad-a1c0-477b-8b98-f0bf787652ca.png)


Success:
 
 ![img_11](https://user-images.githubusercontent.com/71790626/127183964-ff42dfab-94b2-4568-b528-9b66ee31a801.png)


2) Let's get created test (id = 2):

![img_12](https://user-images.githubusercontent.com/71790626/127183987-a35634ef-3829-4cdd-a734-bd8e62cb8acd.png)


Success:

![img_13](https://user-images.githubusercontent.com/71790626/127184017-86c0935e-216d-4e0f-8fd4-3f06811e6064.png)
