// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1 {
	public var appEventScreenshots: AppEventScreenshots {
		AppEventScreenshots(path: path + "/appEventScreenshots")
	}

	public struct AppEventScreenshots {
		/// Path: `/v1/appEventScreenshots`
		public let path: String

		public func post(_ body: AppStoreConnect_Swift_SDK.AppEventScreenshotCreateRequest) -> Request<AppStoreConnect_Swift_SDK.AppEventScreenshotResponse> {
			Request(path: path, method: "POST", body: body, id: "appEventScreenshots_createInstance")
		}
	}
}
