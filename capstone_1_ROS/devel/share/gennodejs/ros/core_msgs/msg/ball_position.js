// Auto-generated. Do not edit!

// (in-package core_msgs.msg)


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
      this.r_size = null;
      this.b_size = null;
      this.g_size = null;
      this.b_img_x = null;
      this.b_img_y = null;
      this.b_img_z = null;
      this.r_img_x = null;
      this.r_img_y = null;
      this.r_img_z = null;
      this.g_img_x = null;
      this.g_img_y = null;
      this.g_img_z = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('r_size')) {
        this.r_size = initObj.r_size
      }
      else {
        this.r_size = 0;
      }
      if (initObj.hasOwnProperty('b_size')) {
        this.b_size = initObj.b_size
      }
      else {
        this.b_size = 0;
      }
      if (initObj.hasOwnProperty('g_size')) {
        this.g_size = initObj.g_size
      }
      else {
        this.g_size = 0;
      }
      if (initObj.hasOwnProperty('b_img_x')) {
        this.b_img_x = initObj.b_img_x
      }
      else {
        this.b_img_x = [];
      }
      if (initObj.hasOwnProperty('b_img_y')) {
        this.b_img_y = initObj.b_img_y
      }
      else {
        this.b_img_y = [];
      }
      if (initObj.hasOwnProperty('b_img_z')) {
        this.b_img_z = initObj.b_img_z
      }
      else {
        this.b_img_z = [];
      }
      if (initObj.hasOwnProperty('r_img_x')) {
        this.r_img_x = initObj.r_img_x
      }
      else {
        this.r_img_x = [];
      }
      if (initObj.hasOwnProperty('r_img_y')) {
        this.r_img_y = initObj.r_img_y
      }
      else {
        this.r_img_y = [];
      }
      if (initObj.hasOwnProperty('r_img_z')) {
        this.r_img_z = initObj.r_img_z
      }
      else {
        this.r_img_z = [];
      }
      if (initObj.hasOwnProperty('g_img_x')) {
        this.g_img_x = initObj.g_img_x
      }
      else {
        this.g_img_x = [];
      }
      if (initObj.hasOwnProperty('g_img_y')) {
        this.g_img_y = initObj.g_img_y
      }
      else {
        this.g_img_y = [];
      }
      if (initObj.hasOwnProperty('g_img_z')) {
        this.g_img_z = initObj.g_img_z
      }
      else {
        this.g_img_z = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ball_position
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [r_size]
    bufferOffset = _serializer.int32(obj.r_size, buffer, bufferOffset);
    // Serialize message field [b_size]
    bufferOffset = _serializer.int32(obj.b_size, buffer, bufferOffset);
    // Serialize message field [g_size]
    bufferOffset = _serializer.int32(obj.g_size, buffer, bufferOffset);
    // Serialize message field [b_img_x]
    bufferOffset = _arraySerializer.float32(obj.b_img_x, buffer, bufferOffset, null);
    // Serialize message field [b_img_y]
    bufferOffset = _arraySerializer.float32(obj.b_img_y, buffer, bufferOffset, null);
    // Serialize message field [b_img_z]
    bufferOffset = _arraySerializer.float32(obj.b_img_z, buffer, bufferOffset, null);
    // Serialize message field [r_img_x]
    bufferOffset = _arraySerializer.float32(obj.r_img_x, buffer, bufferOffset, null);
    // Serialize message field [r_img_y]
    bufferOffset = _arraySerializer.float32(obj.r_img_y, buffer, bufferOffset, null);
    // Serialize message field [r_img_z]
    bufferOffset = _arraySerializer.float32(obj.r_img_z, buffer, bufferOffset, null);
    // Serialize message field [g_img_x]
    bufferOffset = _arraySerializer.float32(obj.g_img_x, buffer, bufferOffset, null);
    // Serialize message field [g_img_y]
    bufferOffset = _arraySerializer.float32(obj.g_img_y, buffer, bufferOffset, null);
    // Serialize message field [g_img_z]
    bufferOffset = _arraySerializer.float32(obj.g_img_z, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ball_position
    let len;
    let data = new ball_position(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [r_size]
    data.r_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b_size]
    data.b_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [g_size]
    data.g_size = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b_img_x]
    data.b_img_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [b_img_y]
    data.b_img_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [b_img_z]
    data.b_img_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [r_img_x]
    data.r_img_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [r_img_y]
    data.r_img_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [r_img_z]
    data.r_img_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [g_img_x]
    data.g_img_x = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [g_img_y]
    data.g_img_y = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [g_img_z]
    data.g_img_z = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.b_img_x.length;
    length += 4 * object.b_img_y.length;
    length += 4 * object.b_img_z.length;
    length += 4 * object.r_img_x.length;
    length += 4 * object.r_img_y.length;
    length += 4 * object.r_img_z.length;
    length += 4 * object.g_img_x.length;
    length += 4 * object.g_img_y.length;
    length += 4 * object.g_img_z.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'core_msgs/ball_position';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'aed016388a639bff17b1abc7071952eb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 r_size
    int32 b_size
    int32 g_size
    
    float32[] b_img_x
    float32[] b_img_y
    float32[] b_img_z
    
    float32[] r_img_x
    float32[] r_img_y
    float32[] r_img_z
    
    float32[] g_img_x
    float32[] g_img_y
    float32[] g_img_z
    
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

    if (msg.r_size !== undefined) {
      resolved.r_size = msg.r_size;
    }
    else {
      resolved.r_size = 0
    }

    if (msg.b_size !== undefined) {
      resolved.b_size = msg.b_size;
    }
    else {
      resolved.b_size = 0
    }

    if (msg.g_size !== undefined) {
      resolved.g_size = msg.g_size;
    }
    else {
      resolved.g_size = 0
    }

    if (msg.b_img_x !== undefined) {
      resolved.b_img_x = msg.b_img_x;
    }
    else {
      resolved.b_img_x = []
    }

    if (msg.b_img_y !== undefined) {
      resolved.b_img_y = msg.b_img_y;
    }
    else {
      resolved.b_img_y = []
    }

    if (msg.b_img_z !== undefined) {
      resolved.b_img_z = msg.b_img_z;
    }
    else {
      resolved.b_img_z = []
    }

    if (msg.r_img_x !== undefined) {
      resolved.r_img_x = msg.r_img_x;
    }
    else {
      resolved.r_img_x = []
    }

    if (msg.r_img_y !== undefined) {
      resolved.r_img_y = msg.r_img_y;
    }
    else {
      resolved.r_img_y = []
    }

    if (msg.r_img_z !== undefined) {
      resolved.r_img_z = msg.r_img_z;
    }
    else {
      resolved.r_img_z = []
    }

    if (msg.g_img_x !== undefined) {
      resolved.g_img_x = msg.g_img_x;
    }
    else {
      resolved.g_img_x = []
    }

    if (msg.g_img_y !== undefined) {
      resolved.g_img_y = msg.g_img_y;
    }
    else {
      resolved.g_img_y = []
    }

    if (msg.g_img_z !== undefined) {
      resolved.g_img_z = msg.g_img_z;
    }
    else {
      resolved.g_img_z = []
    }

    return resolved;
    }
};

module.exports = ball_position;
