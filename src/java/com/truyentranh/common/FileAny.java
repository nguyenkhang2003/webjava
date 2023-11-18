// 
// Decompiled by Procyon v0.5.36
// 

package com.truyentranh.common;

import java.io.InputStream;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.CopyOption;
import java.io.File;

import javax.servlet.http.Part;
import javax.servlet.http.HttpServletRequest;

public class FileAny
{

    public static String createFolder(final HttpServletRequest request, final String newFolder, final String folderName)
    {
        final String folder = "/" + folderName + "/";
        final String basePath = request.getServletContext().getRealPath("") + folder;
        final File fodlerToSave = new File(basePath + newFolder);

        final String basePathWorkspace = request.getServletContext().getRealPath("").replace("\\build", "") + folder;
        final File folderToSaveWS = new File(basePathWorkspace + newFolder);

        System.out.println("folder: " + folder.toString());

        System.out.println("basePath: " + basePath.toString());
        System.out.println("fodlerToSave: " + fodlerToSave.toString());
        System.out.println("basePathWorkspace: " + basePathWorkspace.toString());
        System.out.println("fileToSaveWS: " + folderToSaveWS.toString());
        
        if(!folderToSaveWS.exists()){
            if(folderToSaveWS.mkdirs()){
                System.out.println("Create folder successfully");
            }
}
        return folderName + "/" + newFolder;
    }
    public static String upload(final HttpServletRequest request, final Part file, final String folderName, final String newFileName) {
        try (
                final InputStream is = file.getInputStream();
                final InputStream isWS = file.getInputStream()
            ) 
        {
                String fileName;
                final String folder = "/" + folderName + "/";
                if(newFileName == null)
                    fileName = file.getSubmittedFileName().replaceAll("[\\w]{1,}[^.]+[?=.]", System.currentTimeMillis() + ".");
                else
                    fileName = newFileName;
                final String basePath = request.getServletContext().getRealPath("") + folder;
                final File fileToSave = new File(basePath + fileName);
                Files.copy(is, fileToSave.toPath(), new CopyOption[0]);
                final String basePathWorkspace = request.getServletContext().getRealPath("").replace("\\build", "") + folder;
                File fileToSaveWS = new File(basePathWorkspace + fileName);
                Files.copy(isWS, fileToSaveWS.toPath(), new CopyOption[0]);
                System.out.println("is: " + is.toString());
                System.out.println("isWS: " + isWS.toString());
                System.out.println("folder: " + folder.toString());
                System.out.println("fileNa"
                        + "me: " + fileName.toString());
                System.out.println("basePath: " + basePath.toString());
                System.out.println("fileToSave: " + fileToSave.toString());
                System.out.println("basePathWorkspace: " + basePathWorkspace.toString());
                System.out.println("fileToSaveWS: " + fileToSaveWS.toString());
                
                
                
                is.close();
                isWS.close();
                return folderName + "/" + fileName;
        }
        catch (IOException e) {
            System.out.println(e.getMessage());
            return "";
        }
    }
    
    public static void delete(final HttpServletRequest request, final String folderName, final String fileName) {
        try {
            final String folder = folderName + File.separator;
            final String basePath = request.getServletContext().getRealPath("") + File.separator + folder;
            final File fserver = new File(basePath + fileName);
            fserver.delete();
            System.out.println("basePath: " + basePath);
            final String basePathWS = request.getServletContext().getRealPath("").replace("\\build", "") + File.separator + folder;
            final File fws = new File(basePathWS + fileName);
            fws.delete();
            System.out.println("delete basePathWS: " + basePathWS);
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static void delete(final HttpServletRequest request, final String fileName) {
        try {
            final String basePath = request.getServletContext().getRealPath("") + File.separator + fileName;
            final File fserver = new File(basePath);
            fserver.delete();
            final String basePathWS = request.getServletContext().getRealPath("").replace("\\build", "") + File.separator + fileName;
            final File fws = new File(basePathWS);
            fws.delete();
        }
        catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public static void main(String[] args) {
        
    }
}