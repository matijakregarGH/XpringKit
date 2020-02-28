// DO NOT EDIT.
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: org/xrpl/rpc/v1/ledger.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that your are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// Next field: 4
public struct Org_Xrpl_Rpc_V1_LedgerSpecifier {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ledger: Org_Xrpl_Rpc_V1_LedgerSpecifier.OneOf_Ledger? = nil

  public var shortcut: Org_Xrpl_Rpc_V1_LedgerSpecifier.Shortcut {
    get {
      if case .shortcut(let v)? = ledger {return v}
      return .unspecified
    }
    set {ledger = .shortcut(newValue)}
  }

  public var sequence: UInt32 {
    get {
      if case .sequence(let v)? = ledger {return v}
      return 0
    }
    set {ledger = .sequence(newValue)}
  }

  /// 32 bytes
  public var hash: Data {
    get {
      if case .hash(let v)? = ledger {return v}
      return SwiftProtobuf.Internal.emptyData
    }
    set {ledger = .hash(newValue)}
  }

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public enum OneOf_Ledger: Equatable {
    case shortcut(Org_Xrpl_Rpc_V1_LedgerSpecifier.Shortcut)
    case sequence(UInt32)
    /// 32 bytes
    case hash(Data)

  #if !swift(>=4.1)
    public static func ==(lhs: Org_Xrpl_Rpc_V1_LedgerSpecifier.OneOf_Ledger, rhs: Org_Xrpl_Rpc_V1_LedgerSpecifier.OneOf_Ledger) -> Bool {
      switch (lhs, rhs) {
      case (.shortcut(let l), .shortcut(let r)): return l == r
      case (.sequence(let l), .sequence(let r)): return l == r
      case (.hash(let l), .hash(let r)): return l == r
      default: return false
      }
    }
  #endif
  }

  /// Next field: 4
  public enum Shortcut: SwiftProtobuf.Enum {
    public typealias RawValue = Int
    case unspecified // = 0
    case validated // = 1
    case closed // = 2
    case current // = 3
    case UNRECOGNIZED(Int)

    public init() {
      self = .unspecified
    }

    public init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .unspecified
      case 1: self = .validated
      case 2: self = .closed
      case 3: self = .current
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    public var rawValue: Int {
      switch self {
      case .unspecified: return 0
      case .validated: return 1
      case .closed: return 2
      case .current: return 3
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  public init() {}
}

#if swift(>=4.2)

extension Org_Xrpl_Rpc_V1_LedgerSpecifier.Shortcut: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  public static var allCases: [Org_Xrpl_Rpc_V1_LedgerSpecifier.Shortcut] = [
    .unspecified,
    .validated,
    .closed,
    .current,
  ]
}

#endif  // swift(>=4.2)

/// Next field: 3
public struct Org_Xrpl_Rpc_V1_LedgerRange {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  public var ledgerIndexMin: UInt32 = 0

  /// Note, if ledger_index_min is non-zero and ledger_index_max is 0, the
  /// software will use the max validated ledger in place of ledger_index_max
  public var ledgerIndexMax: UInt32 = 0

  public var unknownFields = SwiftProtobuf.UnknownStorage()

  public init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "org.xrpl.rpc.v1"

extension Org_Xrpl_Rpc_V1_LedgerSpecifier: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LedgerSpecifier"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "shortcut"),
    2: .same(proto: "sequence"),
    3: .same(proto: "hash"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1:
        if self.ledger != nil {try decoder.handleConflictingOneOf()}
        var v: Org_Xrpl_Rpc_V1_LedgerSpecifier.Shortcut?
        try decoder.decodeSingularEnumField(value: &v)
        if let v = v {self.ledger = .shortcut(v)}
      case 2:
        if self.ledger != nil {try decoder.handleConflictingOneOf()}
        var v: UInt32?
        try decoder.decodeSingularUInt32Field(value: &v)
        if let v = v {self.ledger = .sequence(v)}
      case 3:
        if self.ledger != nil {try decoder.handleConflictingOneOf()}
        var v: Data?
        try decoder.decodeSingularBytesField(value: &v)
        if let v = v {self.ledger = .hash(v)}
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    switch self.ledger {
    case .shortcut(let v)?:
      try visitor.visitSingularEnumField(value: v, fieldNumber: 1)
    case .sequence(let v)?:
      try visitor.visitSingularUInt32Field(value: v, fieldNumber: 2)
    case .hash(let v)?:
      try visitor.visitSingularBytesField(value: v, fieldNumber: 3)
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Org_Xrpl_Rpc_V1_LedgerSpecifier, rhs: Org_Xrpl_Rpc_V1_LedgerSpecifier) -> Bool {
    if lhs.ledger != rhs.ledger {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Org_Xrpl_Rpc_V1_LedgerSpecifier.Shortcut: SwiftProtobuf._ProtoNameProviding {
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "SHORTCUT_UNSPECIFIED"),
    1: .same(proto: "SHORTCUT_VALIDATED"),
    2: .same(proto: "SHORTCUT_CLOSED"),
    3: .same(proto: "SHORTCUT_CURRENT"),
  ]
}

extension Org_Xrpl_Rpc_V1_LedgerRange: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  public static let protoMessageName: String = _protobuf_package + ".LedgerRange"
  public static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .standard(proto: "ledger_index_min"),
    2: .standard(proto: "ledger_index_max"),
  ]

  public mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      switch fieldNumber {
      case 1: try decoder.decodeSingularUInt32Field(value: &self.ledgerIndexMin)
      case 2: try decoder.decodeSingularUInt32Field(value: &self.ledgerIndexMax)
      default: break
      }
    }
  }

  public func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.ledgerIndexMin != 0 {
      try visitor.visitSingularUInt32Field(value: self.ledgerIndexMin, fieldNumber: 1)
    }
    if self.ledgerIndexMax != 0 {
      try visitor.visitSingularUInt32Field(value: self.ledgerIndexMax, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  public static func ==(lhs: Org_Xrpl_Rpc_V1_LedgerRange, rhs: Org_Xrpl_Rpc_V1_LedgerRange) -> Bool {
    if lhs.ledgerIndexMin != rhs.ledgerIndexMin {return false}
    if lhs.ledgerIndexMax != rhs.ledgerIndexMax {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
