package com.website.db;

import com.website.bean.Emp;

import java.util.HashMap;
import java.util.Map;

public class DBUtil {
    public  static Map<String,Emp> map = new HashMap<String,Emp>();
    static {
        map.put("101", new Emp("101", "AA", "123456", "AA@qq.com"));
        map.put("102", new Emp("102", "BB", "123456", "BB@qq.com"));
        map.put("103", new Emp("103", "CC", "123456", "CC@qq.com"));
        map.put("104", new Emp("104", "DD", "123456", "DD@qq.com"));
        map.put("105", new Emp("105", "FF", "123456", "FF@qq.com"));
    }

    /**
     * 判断用户名和密码是否正确
     */
    public static boolean selectEmpByAccountAndPassword(Emp emp) {
        boolean flag = false;
        for(String key : map.keySet()) {
            Emp e = map.get(key);
            if (emp.getAccount().equals(e.getAccount()) && emp.getPassword().equals(e.getPassword())) {
                flag = true;
                break;
            }
        }
        return flag;
    }
}
