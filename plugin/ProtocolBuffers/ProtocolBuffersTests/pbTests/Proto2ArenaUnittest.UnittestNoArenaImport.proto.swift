// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_no_arena_import.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


internal extension Proto2ArenaUnittest{}

internal func == (lhs: Proto2ArenaUnittest.ImportNoArenaNestedMessage, rhs: Proto2ArenaUnittest.ImportNoArenaNestedMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

internal extension Proto2ArenaUnittest {
  internal struct UnittestNoArenaImportRoot {
    internal static var sharedInstance : UnittestNoArenaImportRoot {
     struct Static {
         static let instance : UnittestNoArenaImportRoot = UnittestNoArenaImportRoot()
     }
     return Static.instance
    }
    internal var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(extensionRegistry)
    }
    internal func registerAllExtensions(registry:ExtensionRegistry) {
    }
  }

  final internal class ImportNoArenaNestedMessage : GeneratedMessage, GeneratedMessageProtocol {
    private(set) var hasD:Bool = false
    private(set) var d:Int32 = Int32(0)

    required internal init() {
         super.init()
    }
    override internal func isInitialized() -> Bool {
     return true
    }
    override internal func writeToCodedOutputStream(output:CodedOutputStream) throws {
      if hasD {
        try output.writeInt32(1, value:d)
      }
      try unknownFields.writeToCodedOutputStream(output)
    }
    override internal func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasD {
        serialize_size += d.computeInt32Size(1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    internal class func parseArrayDelimitedFromInputStream(input:NSInputStream) throws -> Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage> {
      var mergedArray = Array<Proto2ArenaUnittest.ImportNoArenaNestedMessage>()
      while let value = try parseFromDelimitedFromInputStream(input) {
        mergedArray += [value]
      }
      return mergedArray
    }
    internal class func parseFromDelimitedFromInputStream(input:NSInputStream) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage? {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeDelimitedFromInputStream(input)?.build()
    }
    internal class func parseFromData(data:NSData) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFromData(data, extensionRegistry:Proto2ArenaUnittest.UnittestNoArenaImportRoot.sharedInstance.extensionRegistry).build()
    }
    internal class func parseFromData(data:NSData, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFromData(data, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromInputStream(input:NSInputStream) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFromInputStream(input).build()
    }
    internal class func parseFromInputStream(input:NSInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFromInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFromCodedInputStream(input).build()
    }
    internal class func parseFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFromCodedInputStream(input, extensionRegistry:extensionRegistry).build()
    }
    internal class func getBuilder() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
      return Proto2ArenaUnittest.ImportNoArenaNestedMessage.classBuilder() as! Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder
    }
    internal func getBuilder() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
      return classBuilder() as! Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder
    }
    override internal class func classBuilder() -> MessageBuilder {
      return Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder()
    }
    override internal func classBuilder() -> MessageBuilder {
      return Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder()
    }
    internal func toBuilder() throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.builderWithPrototype(self)
    }
    internal class func builderWithPrototype(prototype:Proto2ArenaUnittest.ImportNoArenaNestedMessage) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder().mergeFrom(prototype)
    }
    override internal func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.InvalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasD {
        jsonMap["d"] = NSNumber(int:d)
      }
      return jsonMap
    }
    override class internal func decode(jsonMap:Dictionary<String,AnyObject>) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder.decodeToBuilder(jsonMap).build()
    }
    override class internal func fromJSON(data:NSData) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
      return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder.fromJSONToBuilder(data).build()
    }
    override internal func getDescription(indent:String) throws -> String {
      var output = ""
      if hasD {
        output += "\(indent) d: \(d) \n"
      }
      output += unknownFields.getDescription(indent)
      return output
    }
    override internal var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasD {
               hashCode = (hashCode &* 31) &+ d.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override internal class func className() -> String {
        return "Proto2ArenaUnittest.ImportNoArenaNestedMessage"
    }
    override internal func className() -> String {
        return "Proto2ArenaUnittest.ImportNoArenaNestedMessage"
    }
    override internal func classMetaType() -> GeneratedMessage.Type {
        return Proto2ArenaUnittest.ImportNoArenaNestedMessage.self
    }
    //Meta information declaration end

    final internal class Builder : GeneratedMessageBuilder {
      private var builderResult:Proto2ArenaUnittest.ImportNoArenaNestedMessage = Proto2ArenaUnittest.ImportNoArenaNestedMessage()
      internal func getMessage() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
          return builderResult
      }

      required override internal init () {
         super.init()
      }
      var hasD:Bool {
           get {
                return builderResult.hasD
           }
      }
      var d:Int32 {
           get {
                return builderResult.d
           }
           set (value) {
               builderResult.hasD = true
               builderResult.d = value
           }
      }
      func setD(value:Int32) -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
        self.d = value
        return self
      }
      internal func clearD() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder{
           builderResult.hasD = false
           builderResult.d = Int32(0)
           return self
      }
      override internal var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override internal func clear() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
        builderResult = Proto2ArenaUnittest.ImportNoArenaNestedMessage()
        return self
      }
      override internal func clone() throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.builderWithPrototype(builderResult)
      }
      override internal func build() throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
           try checkInitialized()
           return buildPartial()
      }
      internal func buildPartial() -> Proto2ArenaUnittest.ImportNoArenaNestedMessage {
        let returnMe:Proto2ArenaUnittest.ImportNoArenaNestedMessage = builderResult
        return returnMe
      }
      internal func mergeFrom(other:Proto2ArenaUnittest.ImportNoArenaNestedMessage) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
        if other == Proto2ArenaUnittest.ImportNoArenaNestedMessage() {
         return self
        }
        if other.hasD {
             d = other.d
        }
        try mergeUnknownFields(other.unknownFields)
        return self
      }
      override internal func mergeFromCodedInputStream(input:CodedInputStream) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
           return try mergeFromCodedInputStream(input, extensionRegistry:ExtensionRegistry())
      }
      override internal func mergeFromCodedInputStream(input:CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(self.unknownFields)
        while (true) {
          let protobufTag = try input.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8 :
            d = try input.readInt32()

          default:
            if (!(try parseUnknownField(input,unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class internal func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
        let resultDecodedBuilder = Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder()
        if let jsonValueD = jsonMap["d"] as? NSNumber {
          resultDecodedBuilder.d = jsonValueD.intValue
        }
        return resultDecodedBuilder
      }
      override class internal func fromJSONToBuilder(data:NSData) throws -> Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder {
        let jsonData = try NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.InvalidProtocolBuffer("Invalid JSON data")
        }
        return try Proto2ArenaUnittest.ImportNoArenaNestedMessage.Builder.decodeToBuilder(jsDataCast)
      }
    }

  }

}

// @@protoc_insertion_point(global_scope)
