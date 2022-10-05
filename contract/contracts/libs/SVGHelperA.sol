// SPDX-License-Identifier: MIT

/*
 * Helper methods for SVG generative.
 *
 * Created by Satoshi Nakajima (@snakajima)
 */

pragma solidity ^0.8.6;

import "@openzeppelin/contracts/utils/Strings.sol";
import "../interfaces/ISVGHelper.sol";

contract SVGHelperA is ISVGHelper {
  using Strings for uint32;

  /**
   * Generate a SVG path from series of control points
   *
   * Note: It is possible to significantly improve this using assembly (see SVGPathDecoderA). 
   */
  function PathFromPoints(Point[] memory points) external override pure returns(bytes memory ret) {
    assembly{
      function toString(_wbuf, _value) -> wbuf {
        let len := 2
        let cmd := 0
        if gt(_value,9) {
          if gt(_value,99) {
            if gt(_value,999) {
              cmd := or(shl(8, cmd), add(48, div(_value, 1000))) 
              len := add(1, len)
              _value := mod(_value, 1000)
            }
            cmd := or(shl(8, cmd), add(48, div(_value, 100)))
            len := add(1, len)
            _value := mod(_value, 100)
          }
          cmd := or(shl(8, cmd), add(48, div(_value, 10)))
          len := add(1, len)
          _value := mod(_value, 10)
        }
        cmd := or(or(shl(16, cmd), shl(8, add(48, _value))), 32)

        mstore(_wbuf, shl(sub(256, mul(len, 8)), cmd))
        wbuf := add(_wbuf, len)
      }

      ret := mload(0x40)
      let wbuf := add(ret, 0x20)

      wbuf := toString(wbuf, 4321)
      wbuf := toString(wbuf, 9876)

      mstore(ret, sub(sub(wbuf, ret), 0x20))
      mstore(0x40, wbuf)
    }
/*
    uint length = points.length;
    for(uint256 i = 0; i < length; i++) {
      Point memory point = points[i];
      Point memory prev = points[(i + length - 1) % length];
      int32 sx = (point.x + prev.x) / 2;
      int32 sy = (point.y + prev.y) / 2;
      if (i == 0) {
        path = abi.encodePacked("M", uint32(sx).toString(), ",", uint32(sy).toString());
      }

      Point memory next = points[(i + 1) % length];
      int32 ex = (point.x + next.x) / 2;
      int32 ey = (point.y + next.y) / 2;
      if (point.c) {
        path = abi.encodePacked(path, "L", uint32(point.x).toString(), ",", uint32(point.y).toString(),
          ",", uint32(ex).toString(), ",", uint32(ey).toString());
      } else {
        path = abi.encodePacked(path, "C",
          uint32(sx + point.r * (point.x - sx) / 1024).toString(), ",",
          uint32(sy + point.r * (point.y - sy) / 1024).toString(), ",",
          uint32(ex + point.r * (point.x - ex) / 1024).toString(), ",",
          uint32(ey + point.r * (point.y - ey) / 1024).toString(), ",",
          uint32(ex).toString(), ",", uint32(ey).toString());
      }
    }
*/
  }  
}