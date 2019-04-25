// Auto-generated. Do not edit!

// (in-package test.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class ball_position {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.size1 = null;
      this.img_x1 = null;
      this.img_y1 = null;
      this.distance1 = null;
      this.size2 = null;
      this.img_x2 = null;
      this.img_y2 = null;
      this.distance2 = null;
      this.size3 = null;
      this.img_x3 = null;
      this.img_y3 = null;
      this.distance3 = null;
      this.size4 = null;
      this.img_x4 = null;
      this.img_y4 = null;
      this.midpoint = null;
      this.distance4 = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('size1')) {
        this.size1 = initObj.size1
      }
      else {
        this.size1 = 0;
      }
      if (initObj.hasOwnProperty('img_x1')) {
        this.img_x1 = initObj.img_x1
      }
      else {
        this.img_x1 = 0.0;
      }
      if (initObj.hasOwnProperty('img_y1')) {
        this.img_y1 = initObj.img_y1
      }
      else {
        this.img_y1 = 0.0;
      }
      if (initObj.hasOwnProperty('distance1')) {
        this.distance1 = initObj.distance1
      }
      else {
        this.distance1 = 0.0;
      }
      if (initObj.hasOwnProperty('size2')) {
        this.size2 = initObj.size2
      }
      else {
        this.size2 = 0;
      }
      if (initObj.hasOwnProperty('img_x2')) {
        this.img_x2 = initObj.img_x2
      }
      else {
        this.img_x2 = 0.0;
      }
      if (initObj.hasOwnProperty('img_y2')) {
        this.img_y2 = initObj.img_y2
      }
      else {
        this.img_y2 = 0.0;
      }
      if (initObj.hasOwnProperty('distance2')) {
        this.distance2 = initObj.distance2
      }
      else {
        this.distance2 = 0.0;
      }
      if (initObj.hasOwnProperty('size3')) {
        this.size3 = initObj.size3
      }
      else {
        this.size3 = 0;
      }
      if (initObj.hasOwnProperty('img_x3')) {
        this.img_x3 = initObj.img_x3
      }
      else {
        this.img_x3 = 0.0;
      }
      if (initObj.hasOwnProperty('img_y3')) {
        this.img_y3 = initObj.img_y3
      }
      else {
        this.img_y3 = 0.0;
      }
      if (initObj.hasOwnProperty('distance3')) {
        this.distance3 = initObj.distance3
      }
      else {
        this.distance3 = 0.0;
      }
      if (initObj.hasOwnProperty('size4')) {
        this.size4 = initObj.size4
      }
      else {
        this.size4 = 0;
      }
      if (initObj.hasOwnProperty('img_x4')) {
        this.img_x4 = initObj.img_x4
      }
      else {
        this.img_x4 = 0.0;
      }
      if (initObj.hasOwnProperty('img_y4')) {
        this.img_y4 = initObj.img_y4
      }
      else {
        this.img_y4 = 0.0;
      }
      if (initObj.hasOwnProperty('midpoint')) {
        this.midpoint = initObj.midpoint
      }
      else {
        this.midpoint = 0.0;
      }
      if (initObj.hasOwnProperty('distance4')) {
        this.distance4 = initObj.distance4
      }
      else {
        this.distance4 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ball_position
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [size1]
    bufferOffset = _serializer.int32(obj.size1, buffer, bufferOffset);
    // Serialize message field [img_x1]
    bufferOffset = _serializer.float32(obj.img_x1, buffer, bufferOffset);
    // Serialize message field [img_y1]
    bufferOffset = _serializer.float32(obj.img_y1, buffer, bufferOffset);
    // Serialize message field [distance1]
    bufferOffset = _serializer.float32(obj.distance1, buffer, bufferOffset);
    // Serialize message field [size2]
    bufferOffset = _serializer.int32(obj.size2, buffer, bufferOffset);
    // Serialize message field [img_x2]
    bufferOffset = _serializer.float32(obj.img_x2, buffer, bufferOffset);
    // Serialize message field [img_y2]
    bufferOffset = _serializer.float32(obj.img_y2, buffer, bufferOffset);
    // Serialize message field [distance2]
    bufferOffset = _serializer.float32(obj.distance2, buffer, bufferOffset);
    // Serialize message field [size3]
    bufferOffset = _serializer.int32(obj.size3, buffer, bufferOffset);
    // Serialize message field [img_x3]
    bufferOffset = _serializer.float32(obj.img_x3, buffer, bufferOffset);
    // Serialize message field [img_y3]
    bufferOffset = _serializer.float32(obj.img_y3, buffer, bufferOffset);
    // Serialize message field [distance3]
    bufferOffset = _serializer.float32(obj.distance3, buffer, bufferOffset);
    // Serialize message field [size4]
    bufferOffset = _serializer.int32(obj.size4, buffer, bufferOffset);
    // Serialize message field [img_x4]
    bufferOffset = _serializer.float32(obj.img_x4, buffer, bufferOffset);
    // Serialize message field [img_y4]
    bufferOffset = _serializer.float32(obj.img_y4, buffer, bufferOffset);
    // Serialize message field [midpoint]
    bufferOffset = _serializer.float32(obj.midpoint, buffer, bufferOffset);
    // Serialize message field [distance4]
    bufferOffset = _serializer.float32(obj.distance4, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ball_position
    let len;
    let data = new ball_position(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [size1]
    data.size1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [img_x1]
    data.img_x1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [img_y1]
    data.img_y1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance1]
    data.distance1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [size2]
    data.size2 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [img_x2]
    data.img_x2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [img_y2]
    data.img_y2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance2]
    data.distance2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [size3]
    data.size3 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [img_x3]
    data.img_x3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [img_y3]
    data.img_y3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance3]
    data.distance3 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [size4]
    data.size4 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [img_x4]
    data.img_x4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [img_y4]
    data.img_y4 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [midpoint]
    data.midpoint = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [distance4]
    data.distance4 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'test/ball_position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7ed3388ded1c7beb3973353beb402376';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    
    
    
    int32 size1
    float32 img_x1
    float32 img_y1
    float32 distance1
    
    
    
    
    int32 size2
    float32 img_x2
    float32 img_y2
    float32 distance2
    
    
    
    int32 size3
    float32 img_x3
    float32 img_y3
    float32 distance3
    
    
    
    int32 size4
    float32 img_x4
    float32 img_y4
    float32 midpoint
    float32 distance4
    
    
    
    
    
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ball_position(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.size1 !== undefined) {
      resolved.size1 = msg.size1;
    }
    else {
      resolved.size1 = 0
    }

    if (msg.img_x1 !== undefined) {
      resolved.img_x1 = msg.img_x1;
    }
    else {
      resolved.img_x1 = 0.0
    }

    if (msg.img_y1 !== undefined) {
      resolved.img_y1 = msg.img_y1;
    }
    else {
      resolved.img_y1 = 0.0
    }

    if (msg.distance1 !== undefined) {
      resolved.distance1 = msg.distance1;
    }
    else {
      resolved.distance1 = 0.0
    }

    if (msg.size2 !== undefined) {
      resolved.size2 = msg.size2;
    }
    else {
      resolved.size2 = 0
    }

    if (msg.img_x2 !== undefined) {
      resolved.img_x2 = msg.img_x2;
    }
    else {
      resolved.img_x2 = 0.0
    }

    if (msg.img_y2 !== undefined) {
      resolved.img_y2 = msg.img_y2;
    }
    else {
      resolved.img_y2 = 0.0
    }

    if (msg.distance2 !== undefined) {
      resolved.distance2 = msg.distance2;
    }
    else {
      resolved.distance2 = 0.0
    }

    if (msg.size3 !== undefined) {
      resolved.size3 = msg.size3;
    }
    else {
      resolved.size3 = 0
    }

    if (msg.img_x3 !== undefined) {
      resolved.img_x3 = msg.img_x3;
    }
    else {
      resolved.img_x3 = 0.0
    }

    if (msg.img_y3 !== undefined) {
      resolved.img_y3 = msg.img_y3;
    }
    else {
      resolved.img_y3 = 0.0
    }

    if (msg.distance3 !== undefined) {
      resolved.distance3 = msg.distance3;
    }
    else {
      resolved.distance3 = 0.0
    }

    if (msg.size4 !== undefined) {
      resolved.size4 = msg.size4;
    }
    else {
      resolved.size4 = 0
    }

    if (msg.img_x4 !== undefined) {
      resolved.img_x4 = msg.img_x4;
    }
    else {
      resolved.img_x4 = 0.0
    }

    if (msg.img_y4 !== undefined) {
      resolved.img_y4 = msg.img_y4;
    }
    else {
      resolved.img_y4 = 0.0
    }

    if (msg.midpoint !== undefined) {
      resolved.midpoint = msg.midpoint;
    }
    else {
      resolved.midpoint = 0.0
    }

    if (msg.distance4 !== undefined) {
      resolved.distance4 = msg.distance4;
    }
    else {
      resolved.distance4 = 0.0
    }

    return resolved;
    }
};

module.exports = ball_position;
