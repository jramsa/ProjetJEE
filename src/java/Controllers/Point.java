package Controllers;

public class Point {

	private final double lat;
	private final double lon;

	public Point(double lat, double lon) {
		this.lat = lat;
		this.lon = lon;
	}

	public double dist(Point p) {
		return 6378 * (Math.PI / 2
				- Math.asin(Math.sin(p.lat) * Math.sin(lat) + Math.cos(p.lon - lon) * Math.cos(p.lat) * lat));
		// 6378 x {PI/2 - ASIN(SIN(LatP) x SIN(Lat) + COS( LonP - Lon) x COS
		// (Latitude P2) x Latitude P1 )) }
	}
}
