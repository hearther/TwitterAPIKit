import Foundation

/// https://developer.twitter.com/en/docs/twitter-api/v1/tweets/post-and-engage/api-reference/get-favorites-list
open class GetFavoritesRequestV1: TwitterAPIRequest {

    public let target: TwitterUserIdentifier
    public let count: Int?
    public let sinceID: String?
    public let maxID: String?
    public let includeEntities: Bool?

    public var method: HTTPMethod {
        return .get
    }

    public var path: String {
        return "/1.1/favorites/list.json"
    }

    open var parameters: [String: Any]? {
        var p = [String: Any]()

        target.bind(param: &p)
        count.map { p["count"] = $0 }
        sinceID.map { p["since_id"] = $0 }
        maxID.map { p["max_id"] = $0 }
        includeEntities.map { p["include_entities"] = $0 }

        return p
    }

    public init(
        target: TwitterUserIdentifier,
        count: Int? = nil,
        sinceID: String? = nil,
        maxID: String? = nil,
        includeEntities: Bool? = nil
    ) {
        self.target = target
        self.count = count
        self.sinceID = sinceID
        self.maxID = maxID
        self.includeEntities = includeEntities
    }
}