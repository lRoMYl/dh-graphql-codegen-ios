//
//  GraphQLCodegen.swift
//  Grapqhl Codegen
//
//  Created by Romy Cheah on 9/9/21.
//

import GraphQLAST

public struct GraphQLCodegen {
  private let scalarMap: ScalarMap
  private let selectionMap: SelectionMap?
  private let generators: [GraphQLSpecificationGenerating]

  public init(scalarMap: ScalarMap?, selectionMap: SelectionMap?) throws {
    try selectionMap?.validate()

    self.scalarMap = ScalarMap.default.merging(
      scalarMap ?? [:],
      uniquingKeysWith: { (_, new) in new }
    )
    self.selectionMap = selectionMap

    self.generators = [
      BaseSpecificationGenerator(),
      EnumSpecificationGenerator(scalarMap: self.scalarMap),
      ObjectSpecificationGenerator(scalarMap: self.scalarMap, selectionMap: self.selectionMap),
      InputObjectSpecificationGenerator(scalarMap: self.scalarMap),
      RequestParameterGenerator(scalarMap: self.scalarMap, selectionMap: self.selectionMap)
    ]
  }

  public func generate(schema: Schema) throws -> String {
    let code = try generators.map { try $0.declaration(schema: schema) }.lines

    let source = try code.format()
    return source
  }
}

enum GraphQLCodegenError: Error {
  case unknownScalar(name: String)
}
