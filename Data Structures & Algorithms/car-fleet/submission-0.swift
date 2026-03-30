class Solution {
    func carFleet(_ target: Int, _ positions: [Int], _ speeds: [Int]) -> Int {
        var carsWithArrivalTime = [(position: Int, arrivalTime: Float)]()
        var fleetArrivalTimes = [Float]()

        for index in 0 ..< positions.count {
            let distanceToTarget = target - positions[index]
            let arrivalTime = Float(distanceToTarget) / Float(speeds[index])
            carsWithArrivalTime.append((positions[index], arrivalTime))
        }
        
        for (carPosition, carArrivalTime) in carsWithArrivalTime.sorted(by: { $0.position < $1.position }) {
            if fleetArrivalTimes.isEmpty {
                fleetArrivalTimes.append(carArrivalTime)
                continue
            }

            if fleetArrivalTimes.last! <= carArrivalTime {
                while let fleetArrivalTime = fleetArrivalTimes.last, fleetArrivalTime <= carArrivalTime {
                    fleetArrivalTimes.removeLast()
                }
                fleetArrivalTimes.append(carArrivalTime)
            } else {
                fleetArrivalTimes.append(carArrivalTime)
            }
        }

        return fleetArrivalTimes.count
    }
}
