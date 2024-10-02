// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterMatchmakingQueues {
	public func id(_ id: String) -> WithID {
		WithID(path: "\(path)/\(id)")
	}

	public struct WithID {
		/// Path: `/v1/gameCenterMatchmakingQueues/{id}`
		public let path: String

		public func get(fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]? = nil, include: [Include]? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingQueueResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsGameCenterMatchmakingQueues, include), id: "gameCenterMatchmakingQueues_getInstance")
		}

		private func makeGetQuery(_ fieldsGameCenterMatchmakingQueues: [FieldsGameCenterMatchmakingQueues]?, _ include: [Include]?) -> [(String, String?)] {
			let encoder = URLQueryEncoder(explode: false)
			encoder.encode(fieldsGameCenterMatchmakingQueues, forKey: "fields[gameCenterMatchmakingQueues]")
			encoder.encode(include, forKey: "include")
			return encoder.items
		}

		public enum FieldsGameCenterMatchmakingQueues: String, Codable, CaseIterable {
			case referenceName
			case classicMatchmakingBundleIDs = "classicMatchmakingBundleIds"
			case ruleSet
			case experimentRuleSet
		}

		public enum Include: String, Codable, CaseIterable {
			case ruleSet
			case experimentRuleSet
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterMatchmakingQueueUpdateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterMatchmakingQueueResponse> {
			Request(path: path, method: "PATCH", body: body, id: "gameCenterMatchmakingQueues_updateInstance")
		}

		public var delete: Request<Void> {
			Request(path: path, method: "DELETE", id: "gameCenterMatchmakingQueues_deleteInstance")
		}
	}
}
