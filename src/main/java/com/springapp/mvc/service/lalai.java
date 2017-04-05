package com.springapp.mvc.service;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.*;

@Controller
public class lalai {
    @RequestMapping(value = "a/b/c/uploadFile1", method = RequestMethod.POST)
    @ResponseBody
    public String uploadFile1(@RequestParam("file") MultipartFile file, HttpServletRequest request) {
        String name = null;


        if (!file.isEmpty()) {
            try {
                byte[] bytes = file.getBytes();

                name = file.getOriginalFilename();

                String rootPath = "path\\";  //try also "C:\path\"
                File dir = new File(rootPath + File.separator + "loadFiles");

                if (!dir.exists()) {
                    dir.mkdirs();
                }

                File uploadedFile = new File(dir.getAbsolutePath() + File.separator + "1.jpg");

                BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(uploadedFile));
                stream.write(bytes);
                stream.flush();
                stream.close();


                return "STAT'YA " + name + "USPESHNO OPUBLIKOVAN :-)))))";

            } catch (Exception e) {
                return "OSHIBKA ZAGRUZKI FOTO :-(((((((((((" + name + " => " + e.getMessage();
            }
        } else {
            return "FAIL NE ZAGRUJEN" + name + "ON NE DOLJNO BYT' PUSTYM!!!!!!!!! ";
        }
    }
}
