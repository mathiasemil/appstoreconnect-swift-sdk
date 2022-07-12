// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation
import URLQueryEncoder

extension APIEndpoint.BetaTesters.WithID.Relationships {
	public var apps: Apps {
		Apps(path: path + "/apps")
	}

	public struct Apps {
		/// Path: `/v1/betaTesters/{id}/relationships/apps`
		public let path: String

		public func get(limit: Int? = nil) -> Request<AppStoreConnect_Swift_SDK.BetaTesterAppsLinkagesResponse> {
			.get(path, query: makeGetQuery(limit))
		}

		private func makeGetQuery(_ limit: Int?) -> [(String, String?)] {
			let encoder = URLQueryEncoder()
			encoder.encode(limit, forKey: "limit")
			return encoder.items
		}

		public func delete(_ body: AppStoreConnect_Swift_SDK.BetaTesterAppsLinkagesRequest) -> Request<Void> {
			.delete(path, body: body)
		}
	}
}