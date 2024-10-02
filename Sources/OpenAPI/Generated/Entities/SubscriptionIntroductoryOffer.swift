// Generated by Create API
// https://github.com/CreateAPI/CreateAPI

import Foundation

public struct SubscriptionIntroductoryOffer: Codable, Identifiable {
	public var type: `Type`
	public var id: String
	public var attributes: Attributes?
	public var relationships: Relationships?
	public var links: ResourceLinks?

	public enum `Type`: String, Codable, CaseIterable {
		case subscriptionIntroductoryOffers
	}

	public struct Attributes: Codable {
		public var startDate: String?
		public var endDate: String?
		public var duration: SubscriptionOfferDuration?
		public var offerMode: SubscriptionOfferMode?
		public var numberOfPeriods: Int?

		public init(startDate: String? = nil, endDate: String? = nil, duration: SubscriptionOfferDuration? = nil, offerMode: SubscriptionOfferMode? = nil, numberOfPeriods: Int? = nil) {
			self.startDate = startDate
			self.endDate = endDate
			self.duration = duration
			self.offerMode = offerMode
			self.numberOfPeriods = numberOfPeriods
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.startDate = try values.decodeIfPresent(String.self, forKey: "startDate")
			self.endDate = try values.decodeIfPresent(String.self, forKey: "endDate")
			self.duration = try values.decodeIfPresent(SubscriptionOfferDuration.self, forKey: "duration")
			self.offerMode = try values.decodeIfPresent(SubscriptionOfferMode.self, forKey: "offerMode")
			self.numberOfPeriods = try values.decodeIfPresent(Int.self, forKey: "numberOfPeriods")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(startDate, forKey: "startDate")
			try values.encodeIfPresent(endDate, forKey: "endDate")
			try values.encodeIfPresent(duration, forKey: "duration")
			try values.encodeIfPresent(offerMode, forKey: "offerMode")
			try values.encodeIfPresent(numberOfPeriods, forKey: "numberOfPeriods")
		}
	}

	public struct Relationships: Codable {
		public var subscription: Subscription?
		public var territory: Territory?
		public var subscriptionPricePoint: SubscriptionPricePoint?

		public struct Subscription: Codable {
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptions
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

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct Territory: Codable {
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case territories
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

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public struct SubscriptionPricePoint: Codable {
			public var data: Data?

			public struct Data: Codable, Identifiable {
				public var type: `Type`
				public var id: String

				public enum `Type`: String, Codable, CaseIterable {
					case subscriptionPricePoints
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

			public init(data: Data? = nil) {
				self.data = data
			}

			public init(from decoder: Decoder) throws {
				let values = try decoder.container(keyedBy: StringCodingKey.self)
				self.data = try values.decodeIfPresent(Data.self, forKey: "data")
			}

			public func encode(to encoder: Encoder) throws {
				var values = encoder.container(keyedBy: StringCodingKey.self)
				try values.encodeIfPresent(data, forKey: "data")
			}
		}

		public init(subscription: Subscription? = nil, territory: Territory? = nil, subscriptionPricePoint: SubscriptionPricePoint? = nil) {
			self.subscription = subscription
			self.territory = territory
			self.subscriptionPricePoint = subscriptionPricePoint
		}

		public init(from decoder: Decoder) throws {
			let values = try decoder.container(keyedBy: StringCodingKey.self)
			self.subscription = try values.decodeIfPresent(Subscription.self, forKey: "subscription")
			self.territory = try values.decodeIfPresent(Territory.self, forKey: "territory")
			self.subscriptionPricePoint = try values.decodeIfPresent(SubscriptionPricePoint.self, forKey: "subscriptionPricePoint")
		}

		public func encode(to encoder: Encoder) throws {
			var values = encoder.container(keyedBy: StringCodingKey.self)
			try values.encodeIfPresent(subscription, forKey: "subscription")
			try values.encodeIfPresent(territory, forKey: "territory")
			try values.encodeIfPresent(subscriptionPricePoint, forKey: "subscriptionPricePoint")
		}
	}

	public init(type: `Type`, id: String, attributes: Attributes? = nil, relationships: Relationships? = nil, links: ResourceLinks? = nil) {
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
		self.links = try values.decodeIfPresent(ResourceLinks.self, forKey: "links")
	}

	public func encode(to encoder: Encoder) throws {
		var values = encoder.container(keyedBy: StringCodingKey.self)
		try values.encode(type, forKey: "type")
		try values.encode(id, forKey: "id")
		try values.encodeIfPresent(attributes, forKey: "attributes")
		try values.encodeIfPresent(relationships, forKey: "relationships")
		try values.encodeIfPresent(links, forKey: "links")
	}
}
