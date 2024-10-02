// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterMatchmakingQueues.WithID.Metrics {
	public var matchmakingQueueSizes: MatchmakingQueueSizes {
		MatchmakingQueueSizes(path: path + "/matchmakingQueueSizes")
	}

	public struct MatchmakingQueueSizes {
		/// Path: `/v1/gameCenterMatchmakingQueues/{id}/metrics/matchmakingQueueSizes`
		public let path: String

		public func get(parameters: GetParameters) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingQueueSizesV1MetricResponse> {
			Request(path: path, method: "GET", query: parameters.asQuery, id: "gameCenterMatchmakingQueues_matchmakingQueueSizes_getMetrics")
		}

		public struct GetParameters {
			public var granularity: Granularity
			public var sort: [Sort]?
			public var limit: Int?

			public enum Granularity: String, Codable, CaseIterable {
				case p1d = "P1D"
				case pt1h = "PT1H"
				case pt15m = "PT15M"
			}

			public enum Sort: String, Codable, CaseIterable {
				case count
				case minuscount = "-count"
				case averageNumberOfRequests
				case minusaverageNumberOfRequests = "-averageNumberOfRequests"
				case p50NumberOfRequests
				case minusp50NumberOfRequests = "-p50NumberOfRequests"
				case p95NumberOfRequests
				case minusp95NumberOfRequests = "-p95NumberOfRequests"
			}

			public init(granularity: Granularity, sort: [Sort]? = nil, limit: Int? = nil) {
				self.granularity = granularity
				self.sort = sort
				self.limit = limit
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(granularity, forKey: "granularity")
				encoder.encode(sort, forKey: "sort")
				encoder.encode(limit, forKey: "limit")
				return encoder.items
			}
		}
	}
}
