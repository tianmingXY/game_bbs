package com.module.util;

import java.util.Random;

/**
 * 生成随机字符串工具类
 */
public class RandomNumber {
    /**
     * 生成方法
     *
     * @param length 生成字符串长度
     * @return
     */
    public static String getRandomString(int length) {
        String str = "1234567890abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
        Random random = new Random();

        StringBuffer sb = new StringBuffer();

        for (int i = 0; i < length; i++) {

            int number = random.nextInt(62);

            sb.append(str.charAt(number));
        }
        return sb.toString();
    }
}
