/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package frame;

/**
 *
 * @author General Manager
 */
public class User {
   
    private String Name,id, Email, Phone_no, Username, Password, Gender, Position;
   
    public User(String id , String Name, String Email, String Phone_no, String Username, String Password, String Gender, String Position)
    {
        this.id=id;
        this.Name=Name;
        this.Email=Email;
        this.Phone_no=Phone_no;
        this.Username=Username;
        this.Password = Password;
        this.Gender=Gender;
        this.Position =Position;

    }
    public String getid(){
        return id;
    }
     public String getName(){
        return Name;
    }
      public String getEmail(){
        return Email;
    }
       public String getPhone_no(){
        return Phone_no;
    }
        public String getUsername(){
        return Username;
    }
         public String getPassword(){
        return Password;
    }
          public String getGender(){
        return Gender;
    }
           public String getPosition(){
        return Position;
    }
     
}