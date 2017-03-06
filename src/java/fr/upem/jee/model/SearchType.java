package fr.upem.jee.model;

public enum SearchType {

	CAFE("cafe"),
	HOTSPOT("hotspot");
	
	private String db_name;
	
	private SearchType(String db_name) {
		this.db_name = db_name;
	}
	
	public String dbName() {
		return this.db_name;
	}
	
}
