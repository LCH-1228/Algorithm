func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    var totalTime = 0
    var cache = [String]()
    
    for city in cities {
        let lowerCased = city.lowercased()
        if cache.contains(lowerCased) {
            let index = cache.firstIndex(of: lowerCased)!
            let remove = cache.remove(at: index)
            cache.append(lowerCased)
            totalTime += 1
        } else {
            cache.append(lowerCased)
            totalTime += 5
        }
        
        if cache.count > cacheSize {
            cache.removeFirst()
        }
        
    }
    
    return totalTime
}