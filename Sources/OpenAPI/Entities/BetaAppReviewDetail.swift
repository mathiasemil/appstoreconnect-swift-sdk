// Generated by Create API
// https://github.com/CreateAPI/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct BetaAppReviewDetail: Codable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks

	public enum `Type`: String, Codable, CaseIterable {
		case betaAppReviewDetails
	}

	public struct Attributes: Codable {
		public var contactFirstName: String?
		public var contactLastName: String?
		public var contactPhone: String?
		public var contactEmail: String?
		public var demoAccountName: String?
		public var demoAccountPassword: String?
		public var isDemoAccountRequired: Bool?
		public var notes: String?

		public init(contactFirstName: String? = nil, contactLastName: String? = nil, contactPhone: String? = nil, contactEmail: String? = nil, demoAccountName: String? = nil, demoAccountPassword: String? = nil, isDemoAccountRequired: Bool? = nil, notes: String? = nil) {
			self.contactFirstName = contactFirstName
			self.contactLastName = contactLastName
			self.contactPhone = contactPhone
			self.contactEmail = contactEmail
			self.demoAccountName = demoAccountName
			self.demoAccountPassword = demoAccountPassword
			self.isDemoAccountRequired = isDemoAccountRequired
			self.notes = notes
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.contactFirstName = try values.decodeIfPresent(String.self, forKey: "contactFirstName")
			self.contactLastName = try values.decodeIfPresent(String.self, forKey: "contactLastName")
			self.contactPhone = try values.decodeIfPresent(String.self, forKey: "contactPhone")
			self.contactEmail = try values.decodeIfPresent(String.self, forKey: "contactEmail")
			self.demoAccountName = try values.decodeIfPresent(String.self, forKey: "demoAccountName")
			self.demoAccountPassword = try values.decodeIfPresent(String.self, forKey: "demoAccountPassword")
			self.isDemoAccountRequired = try values.decodeIfPresent(Bool.self, forKey: "demoAccountRequired")
			self.notes = try values.decodeIfPresent(String.self, forKey: "notes")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(contactFirstName, forKey: "contactFirstName")
			try values.encodeIfPresent(contactLastName, forKey: "contactLastName")
			try values.encodeIfPresent(contactPhone, forKey: "contactPhone")
			try values.encodeIfPresent(contactEmail, forKey: "contactEmail")
			try values.encodeIfPresent(demoAccountName, forKey: "demoAccountName")
			try values.encodeIfPresent(demoAccountPassword, forKey: "demoAccountPassword")
			try values.encodeIfPresent(isDemoAccountRequired, forKey: "demoAccountRequired")
			try values.encodeIfPresent(notes, forKey: "notes")
		}
	}

	public struct Relationships: Codable {
		public var app: App?

		public struct App: Codable {
			public var links: Links?
			public var data: Data?

			public struct Links: Codable {
				public var this: String?
				public var related: String?

				public init(this: String? = nil, related: String? = nil) {
					self.this = this
					self.related = related
				}

				public init(from decoder: Decoder) throws {
					let values = try decoder.container(keyedBy: StringCodingKey.self)
					self.this = try values.decodeIfPresent(String.self, forKey: "self")
					self.related = try values.decodeIfPresent(String.self, forKey: "related")
				}

				public func encode(to encoder: Encoder) throws {
					var values = encoder.container(keyedBy: StringCodingKey.self)
					try values.encodeIfPresent(this, forKey: "self")
					try values.encodeIfPresent(related, forKey: "related")
				}
			}

			public struct Data: Codable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case apps
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

			public init(links: Links? = nil, data: Data? = nil) {
				self.links = links
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.links = try values.decodeIfPresent(Links.self, forKey: "links")
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(links, forKey: "links")
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(app: App? = nil) {
			self.app = app
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.app = try values.decodeIfPresent(App.self, forKey: "app")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(app, forKey: "app")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks) {
		self.type = type
		self.id = id
		self.attributes = attributes
		self.relationships = relationships
		self.links = links
	}

	public init(from decoder: Decoder) throws {
		let values = try decoder.container(keyedBy: StringCodingKey.self)
		self.type = try values.decode(`Type`.self, forKey: "type")
		self.id = try values.decode(String.self, forKey: "id")
		self.attributes = try values.decodeIfPresent(Attributes.self, forKey: "attributes")
		self.relationships = try values.decodeIfPresent(Relationships.self, forKey: "relationships")
		self.links = try values.decode(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encode(links, forKey: "links")
	}
}
