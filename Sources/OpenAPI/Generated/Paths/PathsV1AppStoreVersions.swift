// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appStoreVersions: AppStoreVersions {
		AppStoreVersions(path: path + "/appStoreVersions")
	}

	public struct AppStoreVersions {
		/// Path: `/v1/appStoreVersions`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppStoreVersionCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppStoreVersionResponse> {
			Request(path: path, method: "POST", body: body, id: "appStoreVersions_createInstance")
		}
	}
}
