// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var gameCenterLeaderboardSetMemberLocalizations: GameCenterLeaderboardSetMemberLocalizations {
		GameCenterLeaderboardSetMemberLocalizations(path: path + "/gameCenterLeaderboardSetMemberLocalizations")
	}

	public struct GameCenterLeaderboardSetMemberLocalizations {
		/// Path: `/v1/gameCenterLeaderboardSetMemberLocalizations`
		public let path: String

		public func get(parameters: GetParameters) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetMemberLocalizationsResponse> {
			Request(path: path, method: "GET", query: parameters.asQuery, id: "gameCenterLeaderboardSetMemberLocalizations_getCollection")
		}

		public struct GetParameters {
			public var filterGameCenterLeaderboardSet: [String]
			public var filterGameCenterLeaderboard: [String]
			public var fieldsGameCenterLeaderboardSetMemberLocalizations: [FieldsGameCenterLeaderboardSetMemberLocalizations]?
			public var fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]?
			public var fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsGameCenterLeaderboardSetMemberLocalizations: String, Codable, CaseIterable {
				case name
				case locale
				case gameCenterLeaderboardSet
				case gameCenterLeaderboard
			}

			public enum FieldsGameCenterLeaderboardSets: String, Codable, CaseIterable {
				case referenceName
				case vendorIdentifier
				case gameCenterDetail
				case gameCenterGroup
				case groupLeaderboardSet
				case localizations
				case gameCenterLeaderboards
				case releases
			}

			public enum FieldsGameCenterLeaderboards: String, Codable, CaseIterable {
				case defaultFormatter
				case referenceName
				case vendorIdentifier
				case submissionType
				case scoreSortType
				case scoreRangeStart
				case scoreRangeEnd
				case recurrenceStartDate
				case recurrenceDuration
				case recurrenceRule
				case archived
				case gameCenterDetail
				case gameCenterGroup
				case groupLeaderboard
				case gameCenterLeaderboardSets
				case localizations
				case releases
			}

			public enum Include: String, Codable, CaseIterable {
				case gameCenterLeaderboardSet
				case gameCenterLeaderboard
			}

			public init(filterGameCenterLeaderboardSet: [String], filterGameCenterLeaderboard: [String], fieldsGameCenterLeaderboardSetMemberLocalizations: [FieldsGameCenterLeaderboardSetMemberLocalizations]? = nil, fieldsGameCenterLeaderboardSets: [FieldsGameCenterLeaderboardSets]? = nil, fieldsGameCenterLeaderboards: [FieldsGameCenterLeaderboards]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.filterGameCenterLeaderboardSet = filterGameCenterLeaderboardSet
				self.filterGameCenterLeaderboard = filterGameCenterLeaderboard
				self.fieldsGameCenterLeaderboardSetMemberLocalizations = fieldsGameCenterLeaderboardSetMemberLocalizations
				self.fieldsGameCenterLeaderboardSets = fieldsGameCenterLeaderboardSets
				self.fieldsGameCenterLeaderboards = fieldsGameCenterLeaderboards
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(filterGameCenterLeaderboardSet, forKey: "filter[gameCenterLeaderboardSet]")
				encoder.encode(filterGameCenterLeaderboard, forKey: "filter[gameCenterLeaderboard]")
				encoder.encode(fieldsGameCenterLeaderboardSetMemberLocalizations, forKey: "fields[gameCenterLeaderboardSetMemberLocalizations]")
				encoder.encode(fieldsGameCenterLeaderboardSets, forKey: "fields[gameCenterLeaderboardSets]")
				encoder.encode(fieldsGameCenterLeaderboards, forKey: "fields[gameCenterLeaderboards]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}

		public func post(_ body: AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetMemberLocalizationCreateRequest) -> Request<AppStoreConnect_Swift_SDK.GameCenterLeaderboardSetMemberLocalizationResponse> {
			Request(path: path, method: "POST", body: body, id: "gameCenterLeaderboardSetMemberLocalizations_createInstance")
		}
	}
}
