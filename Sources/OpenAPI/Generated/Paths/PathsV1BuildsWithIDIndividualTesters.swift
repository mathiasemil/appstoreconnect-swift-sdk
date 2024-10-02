// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.Builds.WithID {
	public var individualTesters: IndividualTesters {
		IndividualTesters(path: path + "/individualTesters")
	}

	public struct IndividualTesters {
		/// Path: `/v1/builds/{id}/individualTesters`
		public let path: String

		public func get(fieldsBetaTesters: [FieldsBetaTesters]? = nil, limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaTestersWithoutIncludesResponse> {
			Request(path: path, method: "GET", query: makeGetQuery(fieldsBetaTesters, limit), id: "builds_individualTesters_getToManyRelated")
		}

		private func makeGetQuery(_ fieldsBetaTesters: [FieldsBetaTesters]?, _ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(fieldsBetaTesters, forKey: "fields[betaTesters]", explode: false)
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public enum FieldsBetaTesters: String, Codable, CaseIterable {
			case firstName
			case lastName
			case email
			case inviteType
			case state
			case apps
			case betaGroups
			case builds
		}
	}
}
