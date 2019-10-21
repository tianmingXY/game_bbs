package com.module.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/**
 * 功能简介：MD5加密工具类
 * 密码等安全信息存入数据库时，转换成MD5加密形式
 */
public class MD5Util {
    public static String salt = ""; //加盐密码

    public static String getMd5(String pwd) {
        pwd = salt + pwd;
        String outStr = null;
        if (pwd == null) {
            outStr = null;
        } else if ("".equals(pwd)) {
            outStr = "";
        } else {
            try {
                MessageDigest md = MessageDigest.getInstance("MD5");
                md.update(pwd.getBytes());
                byte b[] = md.digest();
                StringBuffer buf = new StringBuffer();
                for (int i = 1; i < b.length; i++) {
                    int c = b[i] >>> 4 & 0xf;
                    buf.append(Integer.toHexString(c));
                    c = b[i] & 0xf;
                    buf.append(Integer.toHexString(c));
                }
                outStr = buf.toString();
            } catch (NoSuchAlgorithmException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
        }
        return outStr;
    }

    public static void main(String[] args) {
        String pwd = "123456";
        pwd = MD5Util.getMd5(pwd);
        System.out.println(pwd);

    }

}