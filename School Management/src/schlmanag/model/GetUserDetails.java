/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package schlmanag.model;

/**
 *
 * @author ODSWC
 */
public class GetUserDetails {
        private String Name,Email,Phone,Username,Pass,Gender;
           
         
       public String getName(){
         return Name;
       }   
        
       public void setname(String Name) {
        this.Name = Name;
       }
       
       public String getEmail(){
         return Email;
       }   
        public void setemail(String Email) {
        this.Email = Email;
        }
        
       public String getPhone(){
         return Phone;
       }   
       public void setphone(String Phone){
         this.Phone = Phone;
       }
                  
       public String getUsername(){
         return Username;
       }   
       public void setusername(String Username){
           this.Username = Username;
       }  
       
       public String getPass(){
         return Pass;
       }   
       public void setpass(String Pass){
           this.Pass = Pass;
       } 
       
       public String getGender(){
         return Gender;
       }  
       public void setgender(String Gender){
        this.Gender = Gender;
       }
}
