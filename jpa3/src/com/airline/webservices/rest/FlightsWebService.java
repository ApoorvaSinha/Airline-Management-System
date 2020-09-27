package com.airline.webservices.rest;

import java.util.List;

import javax.ejb.EJB;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.UriInfo;

import javax.ws.rs.core.MediaType;

import com.airline.models.Flight;
import com.airline.service.FlightService;

@Path("/flights")
public class FlightsWebService {

	@PersistenceContext(unitName = "airline")
	EntityManager em;

	@EJB
	FlightService fs;

	@Context
	UriInfo fUriInfo;

	public FlightsWebService() {

	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	public List<Flight> getFlights() {

		List<Flight> fList = fs.getFlights();

		return fList;
	}

	@GET
	@Produces(MediaType.APPLICATION_JSON)
	@Path("{flight_id}")
	public Flight getFlight(@PathParam("flight_id") Integer flightId) {

		// localhost:9999/Airline/airlineservices/rest/flights
		Flight f = fs.getFlight(flightId);
		return f;
	}

}
