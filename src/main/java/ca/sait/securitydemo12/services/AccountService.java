package ca.sait.securitydemo12.services;

import ca.sait.securitydemo12.dataaccess.UserDB;
import ca.sait.securitydemo12.models.User;
import java.util.HashMap;
import java.util.UUID;

public class AccountService {

    public User login(String email, String password) {
        UserDB userDB = new UserDB();

        try {
            User user = userDB.get(email);
            if (password.equals(user.getPassword())) {
                return user;
            }
        } catch (Exception e) {

        }

        return null;
    }

    public void resetPassword(String email, String path, String url) {
        UserDB userDB = new UserDB();
        String uuid = UUID.randomUUID().toString();
        String link = url + "?uuid=" + uuid;

        try {
            User user = userDB.get(email);
            user.setResetPasswordUUID(uuid);
            userDB.update(user);

            String to = user.getEmail();
            String subject = "NoteKeepr Password";
            String template = path + "/emailtemplates/resetpassword.html";

            HashMap<String, String> tags = new HashMap<>();
            tags.put("firstname", user.getFirstName());
            tags.put("lastname", user.getLastName());
            tags.put("link", link);

            GmailService.sendMail(to, subject, template, tags);
        } catch (Exception e) {
        }
    }

    public boolean changePassword(String uuid, String password) {
        UserDB userDB = new UserDB();
        try {
            User user = userDB.getByUUID(uuid);
            user.setPassword(password);
            user.setResetPasswordUUID(null);
            userDB.update(user);
            return true;
        } catch (Exception ex) {
            return false;
        }
    }
}
