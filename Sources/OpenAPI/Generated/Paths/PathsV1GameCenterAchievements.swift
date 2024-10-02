// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterAchievements: GameCenterAchievements {
		GameCenterAchievements(path: path + "/gameCenterAchievements")
	}

	public struct GameCenterAchievements {
		/// Path: `/v1/gameCenterAchievements`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterAchievementCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterAchievementResponse> {
			Request(path: path, method: "POST", body: body, id: "gameCenterAchievements_createInstance")
		}
	}
}
