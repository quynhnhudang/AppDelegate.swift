import Foundation

class SleepMonitorService {
    private let api = SleepMonitorAPI()
    
    func fetchSleepData(completion: @escaping ([HeartbeatData]?) -> Void) {
        // Implement logic to fetch data from the server
        api.fetchSleepData { result in
            switch result {
            case .success(let data):
                completion(data)
            case .failure(let error):
                print("Error fetching data: \(error.localizedDescription)")
                completion(nil)
            }
        }
    }
}
