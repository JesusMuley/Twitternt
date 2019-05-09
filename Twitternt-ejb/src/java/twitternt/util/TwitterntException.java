package twitternt.util;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author adry1
 */
public class TwitterntException extends RuntimeException{
    
    public TwitterntException(){
        super();
    }
    
    public TwitterntException(String msg){
        super(msg);
    }
}
