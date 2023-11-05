//
//  tN2kDistanceCalculationType.swift
//  N2KLibBuild
//
//  Created by Christopher Alford on 5/11/23.
//

import Foundation

/**
 *  tN2kDistanceCalculationType
 * Enumeration of distance calculation types for navigation according to
 * PGN129284
 *
 * - A great circle is the shortest path between two points along the surface
 *   of a sphere.
 * - A rhumb line is a curve that crosses each meridian at the same angle. This
 *   curve is also referred to as a loxodrome (from the Greek loxos, slanted,
 *   and drome, path). Although a great circle is a shortest path, it is
 *   difficult to navigate because your bearing (or azimuth) continuously
 *   changes as you proceed. Following a rhumb line covers more distance than
 *   following a geodesic, but it is easier to navigate.
 */
enum tN2kDistanceCalculationType: Int {
    case N2kdct_GreatCircle=0,     ///< great circle calculation
         N2kdct_RhumbLine=1        ///< rhumb ine calculation
}
