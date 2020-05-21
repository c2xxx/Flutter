package com.chen.flutter003.test;

public class LoginBean {
    /**
     * code : 0
     * message : Success
     * data : {"expire":604800,"type":1,"token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWF0IjoxNTg1MTM0MjA3LCJleHAiOjE1ODU3MzkwMDd9.rCPEo4ze0_iqZv_WH9BtUmcw1sXGULVA6dj7ZCq_8j4dY_2d7Mk06nPQ3hplY8W33A26Yk00SBSTNYHouEXVcg"}
     * ok : true
     */

    private int code;
    private String message;
    private DataBean data;
    private boolean ok;

    public int getCode() {
        return code;
    }

    public void setCode(int code) {
        this.code = code;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public DataBean getData() {
        return data;
    }

    public void setData(DataBean data) {
        this.data = data;
    }

    public boolean isOk() {
        return ok;
    }

    public void setOk(boolean ok) {
        this.ok = ok;
    }

    public static class DataBean {
        /**
         * expire : 604800
         * type : 1
         * token : eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWF0IjoxNTg1MTM0MjA3LCJleHAiOjE1ODU3MzkwMDd9.rCPEo4ze0_iqZv_WH9BtUmcw1sXGULVA6dj7ZCq_8j4dY_2d7Mk06nPQ3hplY8W33A26Yk00SBSTNYHouEXVcg
         */

        private int expire;
        private int type;
        private String token;

        public int getExpire() {
            return expire;
        }

        public void setExpire(int expire) {
            this.expire = expire;
        }

        public int getType() {
            return type;
        }

        public void setType(int type) {
            this.type = type;
        }

        public String getToken() {
            return token;
        }

        public void setToken(String token) {
            this.token = token;
        }
    }
//    {
//        "code": 0,
//            "message": "Success",
//            "data": {
//        "expire": 604800,
//                "type": 1,
//                "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiJ9.eyJzdWIiOiIxIiwiaWF0IjoxNTg1MTM0MjA3LCJleHAiOjE1ODU3MzkwMDd9.rCPEo4ze0_iqZv_WH9BtUmcw1sXGULVA6dj7ZCq_8j4dY_2d7Mk06nPQ3hplY8W33A26Yk00SBSTNYHouEXVcg"
//    },
//        "ok": true
//    }


}
