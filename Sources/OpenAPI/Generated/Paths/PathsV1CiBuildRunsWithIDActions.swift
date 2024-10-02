// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation
import URLQueryEncoder

extension APIEndpoint.V1.CiBuildRuns.WithID {
	public var actions: Actions {
		Actions(path: path + "/actions")
	}

	public struct Actions {
		/// Path: `/v1/ciBuildRuns/{id}/actions`
		public let path: String

		public func get(parameters: GetParameters? = nil) -> Request<AppStoreConnect_Swift_SDK.CiBuildActionsResponse> {
			Request(path: path, method: "GET", query: parameters?.asQuery, id: "ciBuildRuns_actions_getToManyRelated")
		}

		public struct GetParameters {
			public var fieldsCiBuildActions: [FieldsCiBuildActions]?
			public var fieldsCiBuildRuns: [FieldsCiBuildRuns]?
			public var limit: Int?
			public var include: [Include]?

			public enum FieldsCiBuildActions: String, Codable, CaseIterable {
				case name
				case actionType
				case startedDate
				case finishedDate
				case issueCounts
				case executionProgress
				case completionStatus
				case isRequiredToPass
				case buildRun
				case artifacts
				case issues
				case testResults
			}

			public enum FieldsCiBuildRuns: String, Codable, CaseIterable {
				case clean
				case number
				case createdDate
				case startedDate
				case finishedDate
				case sourceCommit
				case destinationCommit
				case isPullRequestBuild
				case issueCounts
				case executionProgress
				case completionStatus
				case startReason
				case cancelReason
				case buildRun
				case builds
				case workflow
				case product
				case sourceBranchOrTag
				case destinationBranch
				case actions
				case pullRequest
			}

			public enum Include: String, Codable, CaseIterable {
				case buildRun
			}

			public init(fieldsCiBuildActions: [FieldsCiBuildActions]? = nil, fieldsCiBuildRuns: [FieldsCiBuildRuns]? = nil, limit: Int? = nil, include: [Include]? = nil) {
				self.fieldsCiBuildActions = fieldsCiBuildActions
				self.fieldsCiBuildRuns = fieldsCiBuildRuns
				self.limit = limit
				self.include = include
			}

			public var asQuery: [(String, String?)] {
				let encoder = URLQueryEncoder(explode: false)
				encoder.encode(fieldsCiBuildActions, forKey: "fields[ciBuildActions]")
				encoder.encode(fieldsCiBuildRuns, forKey: "fields[ciBuildRuns]")
				encoder.encode(limit, forKey: "limit")
				encoder.encode(include, forKey: "include")
				return encoder.items
			}
		}
	}
}
