package com.booking;

import org.junit.runner.RunWith;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import io.cucumber.junit.CucumberOptions.SnippetType;



@RunWith(Cucumber.class)
@CucumberOptions(
		plugin = {"pretty:target/cucumber/cucumber.txt",
				"com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:",
				//"html:target/cucumber/report",
				"json:target/cucumber/cucumber.json",
				"com.api.utils.MyTestListener"
		}
		,features= {"src/test/resources/features/"}
		,glue = {"com.booking.stepdefinitions"}
		,dryRun = false
		,monochrome = true
//		,snippets = SnippetType.CAMELCASE
		//,tags = "@deleteBookingIDs"
		//,publish = true
		)

public class TestRunner {
}