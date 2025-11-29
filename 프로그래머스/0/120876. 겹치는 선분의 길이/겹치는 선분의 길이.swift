import Foundation

// Line Sweep Algorithms
func solution(_ lines:[[Int]]) -> Int {
    var markers = [(point: Int, weight: Int)]()
    
    for line in lines {
        let start = line[0]
        let end = line[1]
        markers.append((start, +1))
        markers.append((end, -1))
    }
    
    markers.sort {
        if $0.point == $1.point {
            return $0.weight > $1.weight
        }
        return $0.point < $1.point
    }
    
    var overlap = 0
    var active = 0
    var lastPoint = markers[0].point
    
    for marker in markers {
        let currentPoint = marker.point
        
        if active >= 2 {
            overlap += currentPoint - lastPoint
        }
        
        active += marker.weight
        lastPoint = currentPoint
    }
    
    return overlap
}