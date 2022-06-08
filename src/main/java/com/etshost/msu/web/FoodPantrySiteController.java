package com.etshost.msu.web;

import java.util.List;

import com.etshost.msu.entity.FoodPantrySite;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

/**
 * Controller for the {@link com.etshost.msu.entity.Market} class.
 */
@RequestMapping("/foodpantrysites")
@RestController
public class FoodPantrySiteController {
    protected final Logger logger = LoggerFactory.getLogger(this.getClass());
	
	/**
	 * Returns JSON list of FoodPantrySites
	 * @param start			index of first item
	 * @param length		number of items to return
	 * @param orderField	field to order results by
	 * @param orderDir		order direction (ASC or DESC)
	 * @return				JSON array of results
	 */
	@RequestMapping(value = "/list", method = RequestMethod.GET, produces = "application/json")
	public String list(
			@RequestParam(name = "start", defaultValue = "0") int start,
			@RequestParam(name = "length", defaultValue = "-1") int length,
			@RequestParam(name = "orderField", required = false) String orderField,
			@RequestParam(name = "orderDir", defaultValue = "ASC") String orderDir) {
		List<FoodPantrySite> results = FoodPantrySite.findFoodPantrySiteEntries(start, length, orderField, orderDir);
        results.forEach((r) -> logger.debug(r.toString()));
		return FoodPantrySite.toJsonArray(results);
	}
	

}
