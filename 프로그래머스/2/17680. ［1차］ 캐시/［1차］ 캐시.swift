func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    guard cacheSize != 0 else { return cities.count * 5 }
    
    var cache = [String]()
    var runtime = 0
    
    for city in cities {
        let lowerCity = city.lowercased()
        if let index = cache.firstIndex(of: lowerCity) {
            cache.remove(at: index)
            cache.append(lowerCity)
            runtime += 1
        } else {
            if cache.count == cacheSize {
                cache.removeFirst()
            }
            cache.append(lowerCity)
            runtime += 5
        }
    }
    
    return runtime
}