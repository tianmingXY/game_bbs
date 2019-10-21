public class zaoData {

    public static void main(String[] args) {
        String sql = "INSERT INTO `student` VALUES (0, '20160510', '张三{a}', '18314463789', '456456@qq.com', '2342423', '无', '2019-05-05 22:54:49');";

        for (int i = 1; i <50; i++) {
            String s = sql.replace("{a}", i + "");
            System.out.println(s);
        }

    }

}
