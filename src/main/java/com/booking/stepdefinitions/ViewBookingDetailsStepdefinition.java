package com.booking.stepdefinitions;

import static org.junit.Assert.*;

import org.apache.log4j.LogManager;
import org.apache.log4j.Logger;

import com.api.utils.ResponseHandler;
import com.api.utils.TestContext;

import io.cucumber.java.en.*;
import io.restassured.module.jsv.JsonSchemaValidator;

public class ViewBookingDetailsStepdefinition {
	private TestContext context;
	private static final Logger LOG = LogManager.getLogger(ViewBookingDetailsStepdefinition.class);
	
	public ViewBookingDetailsStepdefinition(TestContext context) {
		this.context = context;
	}

	@Given("user has access to endpoint {string}")
	public void userHasAccessToEndpoint(String endpoint) {		
		context.session.put("endpoint", endpoint);
	}

}
