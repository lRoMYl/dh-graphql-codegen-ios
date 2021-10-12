// @generated
// Do not edit this generated file
// swiftlint:disable all

import ApiClient
import Foundation
import RxSwift

protocol StarWarsApiClientProtocol {
  func human(
    with request: HumanStarWarsQuery,
    selections: HumanStarWarsQuerySelections
  ) -> Single<ApiResponse<HumanQueryResponse>>
  func droid(
    with request: DroidStarWarsQuery,
    selections: DroidStarWarsQuerySelections
  ) -> Single<ApiResponse<DroidQueryResponse>>
  func character(
    with request: CharacterStarWarsQuery,
    selections: CharacterStarWarsQuerySelections
  ) -> Single<ApiResponse<CharacterQueryResponse>>
  func luke(
    with request: LukeStarWarsQuery,
    selections: LukeStarWarsQuerySelections
  ) -> Single<ApiResponse<LukeQueryResponse>>
  func humans(
    with request: HumansStarWarsQuery,
    selections: HumansStarWarsQuerySelections
  ) -> Single<ApiResponse<HumansQueryResponse>>
  func droids(
    with request: DroidsStarWarsQuery,
    selections: DroidsStarWarsQuerySelections
  ) -> Single<ApiResponse<DroidsQueryResponse>>
  func characters(
    with request: CharactersStarWarsQuery,
    selections: CharactersStarWarsQuerySelections
  ) -> Single<ApiResponse<CharactersQueryResponse>>
  func greeting(
    with request: GreetingStarWarsQuery,
    selections: GreetingStarWarsQuerySelections
  ) -> Single<ApiResponse<GreetingQueryResponse>>
  func whoami(
    with request: WhoamiStarWarsQuery,
    selections: WhoamiStarWarsQuerySelections
  ) -> Single<ApiResponse<WhoamiQueryResponse>>
  func time(
    with request: TimeStarWarsQuery,
    selections: TimeStarWarsQuerySelections
  ) -> Single<ApiResponse<TimeQueryResponse>>
  func mutate(
    with request: MutateStarWarsMutation,
    selections: MutateStarWarsMutationSelections
  ) -> Single<ApiResponse<MutateMutationResponse>>
  func number(
    with request: NumberStarWarsSubscription,
    selections: NumberStarWarsSubscriptionSelections
  ) -> Single<ApiResponse<NumberSubscriptionResponse>>
}

// MARK: - StarWarsApiClientProtocol

final class StarWarsApiClient: StarWarsApiClientProtocol {
  private let restClient: RestClient
  private let scheduler: SchedulerType
  private let resourceParametersConfigurator: StarWarsResourceParametersConfigurating?

  init(
    restClient: RestClient,
    scheduler: SchedulerType = ConcurrentDispatchQueueScheduler(qos: .background),
    resourceParametersConfigurator: StarWarsResourceParametersConfigurating? = nil
  ) {
    self.restClient = restClient
    self.scheduler = scheduler
    self.resourceParametersConfigurator = resourceParametersConfigurator
  }

  func human(
    with request: HumanStarWarsQuery,
    selections: HumanStarWarsQuerySelections
  ) -> Single<ApiResponse<HumanQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryHuman(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func droid(
    with request: DroidStarWarsQuery,
    selections: DroidStarWarsQuerySelections
  ) -> Single<ApiResponse<DroidQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryDroid(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func character(
    with request: CharacterStarWarsQuery,
    selections: CharacterStarWarsQuerySelections
  ) -> Single<ApiResponse<CharacterQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryCharacter(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func luke(
    with request: LukeStarWarsQuery,
    selections: LukeStarWarsQuerySelections
  ) -> Single<ApiResponse<LukeQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryLuke(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func humans(
    with request: HumansStarWarsQuery,
    selections: HumansStarWarsQuerySelections
  ) -> Single<ApiResponse<HumansQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryHumans(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func droids(
    with request: DroidsStarWarsQuery,
    selections: DroidsStarWarsQuerySelections
  ) -> Single<ApiResponse<DroidsQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryDroids(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func characters(
    with request: CharactersStarWarsQuery,
    selections: CharactersStarWarsQuerySelections
  ) -> Single<ApiResponse<CharactersQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryCharacters(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func greeting(
    with request: GreetingStarWarsQuery,
    selections: GreetingStarWarsQuerySelections
  ) -> Single<ApiResponse<GreetingQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryGreeting(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func whoami(
    with request: WhoamiStarWarsQuery,
    selections: WhoamiStarWarsQuerySelections
  ) -> Single<ApiResponse<WhoamiQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryWhoami(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func time(
    with request: TimeStarWarsQuery,
    selections: TimeStarWarsQuerySelections
  ) -> Single<ApiResponse<TimeQueryResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .queryTime(request: request, selections: selections)
    )

    return executeGraphQLQuery(
      resource: resource
    )
  }

  func mutate(
    with request: MutateStarWarsMutation,
    selections: MutateStarWarsMutationSelections
  ) -> Single<ApiResponse<MutateMutationResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .updateMutate(request: request, selections: selections)
    )

    return executeGraphQLMutation(
      resource: resource
    )
  }

  func number(
    with request: NumberStarWarsSubscription,
    selections: NumberStarWarsSubscriptionSelections
  ) -> Single<ApiResponse<NumberSubscriptionResponse>> {
    let resource = StarWarsResourceParametersProvider(
      resourceParametersConfigurator: resourceParametersConfigurator,
      resourceBodyParameters: .subscribeNumber(request: request, selections: selections)
    )

    return executeGraphQLSubscription(
      resource: resource
    )
  }
}

private extension StarWarsApiClient {
  func executeGraphQLQuery<Response>(
    resource: ResourceParameters
  ) -> Single<ApiResponse<Response>> where Response: Codable {
    let request: Single<ApiResponse<GraphQLResponse<Response>>> = restClient
      .executeRequest(resource: resource)

    return request
      .map { apiResponse in
        ApiResponse(
          data: apiResponse.data?.data,
          httpURLResponse: apiResponse.httpURLResponse,
          metaData: apiResponse.metaData
        )
      }
      .subscribe(on: scheduler)
  }

  func executeGraphQLMutation<Response>(
    resource: ResourceParameters
  ) -> Single<ApiResponse<Response>> where Response: Codable {
    let request: Single<ApiResponse<GraphQLResponse<Response>>> = restClient
      .executeRequest(resource: resource)

    return request
      .map { apiResponse in
        ApiResponse(
          data: apiResponse.data?.data,
          httpURLResponse: apiResponse.httpURLResponse,
          metaData: apiResponse.metaData
        )
      }
      .subscribe(on: scheduler)
  }

  func executeGraphQLSubscription<Response>(
    resource: ResourceParameters
  ) -> Single<ApiResponse<Response>> where Response: Codable {
    let request: Single<ApiResponse<GraphQLResponse<Response>>> = restClient
      .executeRequest(resource: resource)

    return request
      .map { apiResponse in
        ApiResponse(
          data: apiResponse.data?.data,
          httpURLResponse: apiResponse.httpURLResponse,
          metaData: apiResponse.metaData
        )
      }
      .subscribe(on: scheduler)
  }
}

// MARK: - StarWarsResourceParametersProvider

protocol StarWarsResourceParametersConfigurating {
  func servicePath(with bodyParameters: StarWarsResourceParametersProvider.BodyParameters) -> String
  func headers(with bodyParameters: StarWarsResourceParametersProvider.BodyParameters) -> [String: String]?
  func timeoutInterval(with bodyParameters: StarWarsResourceParametersProvider.BodyParameters) -> TimeInterval?
  func preventRetry(with bodyParameters: StarWarsResourceParametersProvider.BodyParameters) -> Bool
  func preventAddingLanguageParameters(with bodyParameters: StarWarsResourceParametersProvider.BodyParameters) -> Bool
}

struct StarWarsResourceParametersProvider: ResourceParameters {
  enum BodyParameters {
    case queryHuman(request: HumanStarWarsQuery, selections: HumanStarWarsQuerySelections)
    case queryDroid(request: DroidStarWarsQuery, selections: DroidStarWarsQuerySelections)
    case queryCharacter(request: CharacterStarWarsQuery, selections: CharacterStarWarsQuerySelections)
    case queryLuke(request: LukeStarWarsQuery, selections: LukeStarWarsQuerySelections)
    case queryHumans(request: HumansStarWarsQuery, selections: HumansStarWarsQuerySelections)
    case queryDroids(request: DroidsStarWarsQuery, selections: DroidsStarWarsQuerySelections)
    case queryCharacters(request: CharactersStarWarsQuery, selections: CharactersStarWarsQuerySelections)
    case queryGreeting(request: GreetingStarWarsQuery, selections: GreetingStarWarsQuerySelections)
    case queryWhoami(request: WhoamiStarWarsQuery, selections: WhoamiStarWarsQuerySelections)
    case queryTime(request: TimeStarWarsQuery, selections: TimeStarWarsQuerySelections)
    case updateMutate(request: MutateStarWarsMutation, selections: MutateStarWarsMutationSelections)
    case subscribeNumber(request: NumberStarWarsSubscription, selections: NumberStarWarsSubscriptionSelections)

    func bodyParameters() -> Any? {
      switch self {
      case let .queryHuman(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryDroid(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryCharacter(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryLuke(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryHumans(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryDroids(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryCharacters(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryGreeting(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryWhoami(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .queryTime(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .updateMutate(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      case let .subscribeNumber(request, selections):
        return bodyParameters(request: request, selections: selections as GraphQLSelections)
      }
    }

    private func bodyParameters<T>(request: T, selections: GraphQLSelections) -> [String: Any] where T: GraphQLRequesting {
      guard
        let data = try? JSONEncoder().encode(GraphQLRequest(parameters: request, selections: selections))
      else { return [:] }

      return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments))
        .flatMap {
          $0 as? [String: Any]
        } ?? [:]
    }
  }

  private let resourceParametersConfigurator: StarWarsResourceParametersConfigurating?
  private let resourceBodyParameters: BodyParameters

  init(
    resourceParametersConfigurator: StarWarsResourceParametersConfigurating?,
    resourceBodyParameters: BodyParameters
  ) {
    self.resourceParametersConfigurator = resourceParametersConfigurator
    self.resourceBodyParameters = resourceBodyParameters
  }

  func bodyFormat() -> HttpBodyFormat {
    .JSON
  }

  func httpMethod() -> RequestHttpMethod {
    .post
  }

  func servicePath() -> String {
    resourceParametersConfigurator?.servicePath(with: resourceBodyParameters) ?? ""
  }

  func headers() -> [String: String]? {
    resourceParametersConfigurator?.headers(with: resourceBodyParameters) ?? nil
  }

  func timeoutInterval() -> TimeInterval? {
    resourceParametersConfigurator?.timeoutInterval(with: resourceBodyParameters) ?? nil
  }

  func preventRetry() -> Bool {
    resourceParametersConfigurator?.preventRetry(with: resourceBodyParameters) ?? false
  }

  func preventAddingLanguageParameters() -> Bool {
    resourceParametersConfigurator?.preventAddingLanguageParameters(with: resourceBodyParameters) ?? false
  }

  func bodyParameters() -> Any? {
    return resourceBodyParameters.bodyParameters()
  }
}
