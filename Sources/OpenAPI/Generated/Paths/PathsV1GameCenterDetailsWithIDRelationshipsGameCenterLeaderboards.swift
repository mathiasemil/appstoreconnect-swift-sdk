// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.GameCenterDetails.WithID.Relationships {
	public var gameCenterLeaderboards: GameCenterLeaderboards {
		GameCenterLeaderboards(path: path + "/gameCenterLeaderboards")
	}

	public struct GameCenterLeaderboards {
		/// Path: `/v1/gameCenterDetails/{id}/relationships/gameCenterLeaderboards`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.GameCenterDetailGameCenterLeaderboardsLinkagesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(limit), id: "gameCenterDetails_gameCenterLeaderboards_getToManyRelationship")
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func patch(_ body: AppStoreConnect_Swift_SDK.GameCenterDetailGameCenterLeaderboardsLinkagesRequest) -> Request<Void> {
			Request(path: path, method: "PATCH", body: body, id: "gameCenterDetails_gameCenterLeaderboards_replaceToManyRelationship")
		}
	}
}
