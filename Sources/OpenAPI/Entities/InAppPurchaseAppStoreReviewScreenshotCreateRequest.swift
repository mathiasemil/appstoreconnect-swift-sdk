// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct InAppPurchaseAppStoreReviewScreenshotCreateRequest: Codable {
	public var data: Data

	public struct Data: Codable {
		public var type: `Type`
		public var attributes: Attributes
		public var relationships: Relationships

		public enum `Type`: String, Codable, CaseIterable {
			case inAppPurchaseAppStoreReviewScreenshots
		}

		public struct Attributes: Codable {
			public var fileSize: Int
			public var fileName: String

			public init(fileSize: Int, fileName: String) {
				self.fileSize = fileSize
				self.fileName = fileName
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.fileSize = try values.decode(Int.self, forKey: "fileSize")
				self.fileName = try values.decode(String.self, forKey: "fileName")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(fileSize, forKey: "fileSize")
				try values.encode(fileName, forKey: "fileName")
			}
		}

		public struct Relationships: Codable {
			public var inAppPurchaseV2: InAppPurchaseV2

			public struct InAppPurchaseV2: Codable {
				public var data: Data

				public struct Data: Codable {
					public var type: `Type`
					public var id: String

					public enum `Type`: String, Codable, CaseIterable {
						case inAppPurchases
					}

					public init(type: `Type`, id: String) {
						self.type = type
						self.id = id
					}

					public init(from decoder: Decoder) throws {
						let values = try decoder.container(keyedBy: StringCodingKey.self)
						self.type = try values.decode(`Type`.self, forKey: "type")
						self.id = try values.decode(String.self, forKey: "id")
					}

					public func encode(to encoder: Encoder) throws {
						var values = encoder.container(keyedBy: StringCodingKey.self)
						try values.encode(type, forKey: "type")
						try values.encode(id, forKey: "id")
					}
				}

				public init(data: Data) {
					self.data = data
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.data = try values.decode(Data.self, forKey: "data")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encode(data, forKey: "data")
				}
			}

			public init(inAppPurchaseV2: InAppPurchaseV2) {
				self.inAppPurchaseV2 = inAppPurchaseV2
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.inAppPurchaseV2 = try values.decode(InAppPurchaseV2.self, forKey: "inAppPurchaseV2")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encode(inAppPurchaseV2, forKey: "inAppPurchaseV2")
			}
		}

		public init(type: `Type`, attributes: Attributes, relationships: Relationships) {
			self.type = type
			self.attributes = attributes
			self.relationships = relationships
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.type = try values.decode(`Type`.self, forKey: "type")
			self.attributes = try values.decode(Attributes.self, forKey: "attributes")
			self.relationships = try values.decode(Relationships.self, forKey: "relationships")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encode(type, forKey: "type")
			try values.encode(attributes, forKey: "attributes")
			try values.encode(relationships, forKey: "relationships")
		}
	}

	public init(data: Data) {
		self.data = data
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.data = try values.decode(Data.self, forKey: "data")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(data, forKey: "data")
	}
}
