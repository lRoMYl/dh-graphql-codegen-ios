# DHGraphQLCodegen

Swift type-safe GraphQL query builder
- No knowledge in GraphQL is required to use the query builder, as the GraphQL specification is just a struct with Codable conformance
- All permutation are generated up-front with type safety are generated as GraphQL specification (struct/class)
- GraphQL specificaiton doesn't have external dependencies as it only uses build-in Swift type
- Network layer agnostic, generated GraphQL specification doesn't require specific network layer implementation. You can use it with either URLSession, Alamofire & any other library
- Example App include with DH flavor networking layer

Usage example without writing a single line of GraphQL query
```
let parameter = QueryParameter.VendorRequestParameter(
  name: "vendor name", // Argument1 is code-generated
  country: .sg,  // Argument2 is code-generated
  selections: .init(vendorSelection: [.name, .isOpen]) // Selections is code-generated for all request, you can use autocomplete for the argument
)

networkLibrary.fetch(with: parameter) { ... }
```

Code implementation is created based on [swift-graphl AST](https://github.com/maticzav/swift-graphql)

## Roadmap

Supports GraphQL Native Feature
- [x] Object
- [x] InputObject
- [x] Enum / Enumeration
- [x] Interface
- [ ] Union
- [x] Query
- [x] Mutation
- [x] Subscription; Partial support, request/response/respository/resource are generated but DH ApiClient doesn't have native support for WebSocket yet
- [x] Introspection

Support DH Custom Feature
- [x] SPM package
- [x] Brew package
- [x] Local schema
- [x] Remote schema, download using introspection query
- [x] Remote schema authorization headers
- [x] Remote schema cache
- [x] Scalar Map extension
- [x] Custom field whitelisting
- [x] Support for custom unknown enum, this is necessary to ensure the generated code can work with future unknown enum value
- [x] Support for optional namespace to avoid naming collision
- [x] DH flavor Repository
- [ ] Provide service dependency injection for DH flavor Repository, this is helpful to inject custom header, retry and timeout handling which is not defined in the generated code 

## Installation
```
brew tap lromyl/tap

brew install dh-graphql-codegen-ios
# if there are conflict, use the command below instead 
brew install lromyl/tap/dh-graphql-codegen-ios 
```

## How to use

### CLI Codegen Syntax
**Generate graphql code from local schema.json**
- `--schema-source` default value is `local`, thus the file is read from local file path
```
dh-graphql-codegen-ios "schema.json" --action "specification" --output "name.swift"

// Specific path instead of relative path
dh-graphql-codegen-ios "/User/Download/schema.json" --output "path/filename.swift"
```

**Generate graphql code from remote domain**
- Provide a remote url to fetch the schema
- Use `remote` for `--schema-source` to indicate the schema needs to be fetched remotely
```
dh-graphql-codegen-ios "https://sg-st.fd-api.com/groceries-product-service/query" --schema-source "remote" --output "name.swift"
```

**Providing custom config**
- Use `--config-path` to provide the location of config file
- Look at Sample Config file for more info 
```
dh-graphql-codegen-ios "schema.json" --config-path "config.json" --output "name.swift"
```

### Sample Query Code
```
// Product Query
let parameters = QueryParameter.CampaignsRequestParameter(
  vendorId: "x1yy",
  globalEntityId: "FP_SG",
  locale: "en_SG",
  languageId: "1",
  languageCode: "en",
  apikY: "iQis4oC8Y4DxHiO5",
  discoClientId: "iOS",
  selections: .init(
    benefitSelections: [],
    campaignAttributeSelections: [],
    campaignsSelections: [],
    dealSelections: [],
    productDealSelections: []
  )
)

repository
  .campaigns(with: parameters)
      .subscribe(...)
```

### Sample Config File
- A JSON file that can be passed into the CLI using `--config-path` 
- `namespace` define the optional namespace used for all codegenerated code, this is helpful to avoid naming collision as func/class name is defined from the schema which might conflict with existing code
- `apiHeaders` define the custom headers to be used for downloading the schema, this is useful to provide authorization headers for authentication
- `scalarMap` defines the custom mapping for Scalar type to native Swift type, code generation will fail if no mapping is found for custom scalar type
- `selectionMap` defines custom field whitelisting for selections, overrides the schema specification to only query the fields required by client use case
- `entityNameMap` allows overriding of shared entity name used across all the codegeneration logic instead of manually modification in the code

```JSON
{
  "namespace": "Groceries",
  "apiHeaders": {
    "authorization": "aasd8uioj213+="
  },
  "scalarMap": {
    "BigDecimal": "Double",
    "DateTime": "Double",
    "Long": "Double",
    "Upload": "String"
  },
  "selectionMap": {
    "Discount": {
      "required": ["type"],
      "selectable": []
    }
  },
  "entityNameMap": {
    "request": "CustomRequestEntityName"
  }
}
```
### Sample App
- install all dh carthage dependencies
- run `make install` to install dh-graphlq-codegen-ios
- Build the example app, it will attempt to run the make script on each build phases to generate the latest GraphQL specification
- Look at example app `Makefile` for more examples to use the dh-graphql-codegen-ios
