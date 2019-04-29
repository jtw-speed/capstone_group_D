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

class ball_position_modify {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.r_size_m = null;
      this.b_size_m = null;
      this.g_size_m = null;
      this.b_img_x_m = null;
      this.b_img_y_m = null;
      this.b_img_z_m = null;
      this.r_img_x_m = null;
      this.r_img_y_m = null;
      this.r_img_z_m = null;
      this.g_img_x_m = null;
      this.g_img_y_m = null;
      this.g_img_z_m = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('r_size_m')) {
        this.r_size_m = initObj.r_size_m
      }
      else {
        this.r_size_m = 0;
      }
      if (initObj.hasOwnProperty('b_size_m')) {
        this.b_size_m = initObj.b_size_m
      }
      else {
        this.b_size_m = 0;
      }
      if (initObj.hasOwnProperty('g_size_m')) {
        this.g_size_m = initObj.g_size_m
      }
      else {
        this.g_size_m = 0;
      }
      if (initObj.hasOwnProperty('b_img_x_m')) {
        this.b_img_x_m = initObj.b_img_x_m
      }
      else {
        this.b_img_x_m = [];
      }
      if (initObj.hasOwnProperty('b_img_y_m')) {
        this.b_img_y_m = initObj.b_img_y_m
      }
      else {
        this.b_img_y_m = [];
      }
      if (initObj.hasOwnProperty('b_img_z_m')) {
        this.b_img_z_m = initObj.b_img_z_m
      }
      else {
        this.b_img_z_m = [];
      }
      if (initObj.hasOwnProperty('r_img_x_m')) {
        this.r_img_x_m = initObj.r_img_x_m
      }
      else {
        this.r_img_x_m = [];
      }
      if (initObj.hasOwnProperty('r_img_y_m')) {
        this.r_img_y_m = initObj.r_img_y_m
      }
      else {
        this.r_img_y_m = [];
      }
      if (initObj.hasOwnProperty('r_img_z_m')) {
        this.r_img_z_m = initObj.r_img_z_m
      }
      else {
        this.r_img_z_m = [];
      }
      if (initObj.hasOwnProperty('g_img_x_m')) {
        this.g_img_x_m = initObj.g_img_x_m
      }
      else {
        this.g_img_x_m = [];
      }
      if (initObj.hasOwnProperty('g_img_y_m')) {
        this.g_img_y_m = initObj.g_img_y_m
      }
      else {
        this.g_img_y_m = [];
      }
      if (initObj.hasOwnProperty('g_img_z_m')) {
        this.g_img_z_m = initObj.g_img_z_m
      }
      else {
        this.g_img_z_m = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ball_position_modify
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [r_size_m]
    bufferOffset = _serializer.int32(obj.r_size_m, buffer, bufferOffset);
    // Serialize message field [b_size_m]
    bufferOffset = _serializer.int32(obj.b_size_m, buffer, bufferOffset);
    // Serialize message field [g_size_m]
    bufferOffset = _serializer.int32(obj.g_size_m, buffer, bufferOffset);
    // Serialize message field [b_img_x_m]
    bufferOffset = _arraySerializer.float32(obj.b_img_x_m, buffer, bufferOffset, null);
    // Serialize message field [b_img_y_m]
    bufferOffset = _arraySerializer.float32(obj.b_img_y_m, buffer, bufferOffset, null);
    // Serialize message field [b_img_z_m]
    bufferOffset = _arraySerializer.float32(obj.b_img_z_m, buffer, bufferOffset, null);
    // Serialize message field [r_img_x_m]
    bufferOffset = _arraySerializer.float32(obj.r_img_x_m, buffer, bufferOffset, null);
    // Serialize message field [r_img_y_m]
    bufferOffset = _arraySerializer.float32(obj.r_img_y_m, buffer, bufferOffset, null);
    // Serialize message field [r_img_z_m]
    bufferOffset = _arraySerializer.float32(obj.r_img_z_m, buffer, bufferOffset, null);
    // Serialize message field [g_img_x_m]
    bufferOffset = _arraySerializer.float32(obj.g_img_x_m, buffer, bufferOffset, null);
    // Serialize message field [g_img_y_m]
    bufferOffset = _arraySerializer.float32(obj.g_img_y_m, buffer, bufferOffset, null);
    // Serialize message field [g_img_z_m]
    bufferOffset = _arraySerializer.float32(obj.g_img_z_m, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ball_position_modify
    let len;
    let data = new ball_position_modify(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [r_size_m]
    data.r_size_m = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b_size_m]
    data.b_size_m = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [g_size_m]
    data.g_size_m = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [b_img_x_m]
    data.b_img_x_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [b_img_y_m]
    data.b_img_y_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [b_img_z_m]
    data.b_img_z_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [r_img_x_m]
    data.r_img_x_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [r_img_y_m]
    data.r_img_y_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [r_img_z_m]
    data.r_img_z_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [g_img_x_m]
    data.g_img_x_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [g_img_y_m]
    data.g_img_y_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [g_img_z_m]
    data.g_img_z_m = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.b_img_x_m.length;
    length += 4 * object.b_img_y_m.length;
    length += 4 * object.b_img_z_m.length;
    length += 4 * object.r_img_x_m.length;
    length += 4 * object.r_img_y_m.length;
    length += 4 * object.r_img_z_m.length;
    length += 4 * object.g_img_x_m.length;
    length += 4 * object.g_img_y_m.length;
    length += 4 * object.g_img_z_m.length;
    return length + 48;
  }

  static datatype() {
    // Returns string type for a message object
    return 'core_msgs/ball_position_modify';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '490c270e325fa56f68fcb30ddb129e2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    int32 r_size_m
    int32 b_size_m
    int32 g_size_m
    
    float32[] b_img_x_m
    float32[] b_img_y_m
    float32[] b_img_z_m
    
    float32[] r_img_x_m
    float32[] r_img_y_m
    float32[] r_img_z_m
    
    float32[] g_img_x_m
    float32[] g_img_y_m
    float32[] g_img_z_m
    
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
    const resolved = new ball_position_modify(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.r_size_m !== undefined) {
      resolved.r_size_m = msg.r_size_m;
    }
    else {
      resolved.r_size_m = 0
    }

    if (msg.b_size_m !== undefined) {
      resolved.b_size_m = msg.b_size_m;
    }
    else {
      resolved.b_size_m = 0
    }

    if (msg.g_size_m !== undefined) {
      resolved.g_size_m = msg.g_size_m;
    }
    else {
      resolved.g_size_m = 0
    }

    if (msg.b_img_x_m !== undefined) {
      resolved.b_img_x_m = msg.b_img_x_m;
    }
    else {
      resolved.b_img_x_m = []
    }

    if (msg.b_img_y_m !== undefined) {
      resolved.b_img_y_m = msg.b_img_y_m;
    }
    else {
      resolved.b_img_y_m = []
    }

    if (msg.b_img_z_m !== undefined) {
      resolved.b_img_z_m = msg.b_img_z_m;
    }
    else {
      resolved.b_img_z_m = []
    }

    if (msg.r_img_x_m !== undefined) {
      resolved.r_img_x_m = msg.r_img_x_m;
    }
    else {
      resolved.r_img_x_m = []
    }

    if (msg.r_img_y_m !== undefined) {
      resolved.r_img_y_m = msg.r_img_y_m;
    }
    else {
      resolved.r_img_y_m = []
    }

    if (msg.r_img_z_m !== undefined) {
      resolved.r_img_z_m = msg.r_img_z_m;
    }
    else {
      resolved.r_img_z_m = []
    }

    if (msg.g_img_x_m !== undefined) {
      resolved.g_img_x_m = msg.g_img_x_m;
    }
    else {
      resolved.g_img_x_m = []
    }

    if (msg.g_img_y_m !== undefined) {
      resolved.g_img_y_m = msg.g_img_y_m;
    }
    else {
      resolved.g_img_y_m = []
    }

    if (msg.g_img_z_m !== undefined) {
      resolved.g_img_z_m = msg.g_img_z_m;
    }
    else {
      resolved.g_img_z_m = []
    }

    return resolved;
    }
};

module.exports = ball_position_modify;
