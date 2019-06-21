package com.axelor.testresteasy.controller;

import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

@Path("/manage")
public class ArticleService {
	
	public ArticleService() {
		System.out.println("....ArticleService......");
	}
	
    @GET
    @Produces(MediaType.TEXT_PLAIN)
    public String getArticle() {
       return "Hello from ArticleService.!";
    }
   
}
