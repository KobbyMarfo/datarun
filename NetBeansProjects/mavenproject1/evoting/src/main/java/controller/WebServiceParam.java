/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

public class WebServiceParam {

    private static String PATH = "http://localhost:8083/";
    
    
    public static String REGISTER = PATH+"createUser";
    public static String SMS_AUTH = PATH+"createSMSAuth";
    public static String POST_SMS_AUTH_CODE = PATH+"smsAuth";
    public static String AUTH_USER_LOGIN = PATH+"user/auth";
    public static String UPDATE_PASSWORD = PATH+"updatePassword.jsp";
    public static String GET_CASE_TYPE = PATH+"caseTypes";
    public static String GET_RECIPIENT = PATH+"getRecipient.jsp";
    public static String POST_CASE = PATH+"createCase";
    public static String POST_CASE_WITH_ALERT = PATH+"createCaseWithAlert";
    public static String FCM_PATH = "https://fcm.googleapis.com/fcm/send";
}
