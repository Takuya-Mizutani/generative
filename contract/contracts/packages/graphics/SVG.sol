// SPDX-License-Identifier: MIT

/*
 * NounsAssetProvider is a wrapper around NounsDescriptor so that it offers
 * various characters as assets to compose (not individual parts).
 *
 * Created by Satoshi Nakajima (@snakajima)
 */

pragma solidity ^0.8.6;

import "bytes-array.sol/BytesArray.sol";
import "@openzeppelin/contracts/utils/Strings.sol";
import "@openzeppelin/contracts/utils/Strings.sol";

library Context {
  enum Attribute {
    FILL, STROKE, STROKE_WIDTH
  }
  struct Struct {
    Attribute attr;
    string value;
  }

  function fill(string memory _color) internal pure returns(Struct[] memory ctx) {
    ctx = new Struct[](1);
    ctx[0] = Struct(Attribute.FILL, _color);
  }

  function stroke(string memory _color, string memory _width) internal pure returns(Struct[] memory ctx) {
    ctx = new Struct[](2);
    ctx[0] = Struct(Attribute.STROKE, _color);
    ctx[1] = Struct(Attribute.STROKE_WIDTH, _width);
  }
}

library SVG {
  using BytesArray for bytes[];
  using Strings for uint;


  function path(bytes memory _path, string memory _id) internal pure returns(bytes memory svg) {
    svg = abi.encodePacked(
      '<path id="', _id, '" d="', _path, '"/>\n'
    );
  }

  function group(bytes[] memory _parts, string memory _id) internal pure returns(bytes memory svg) {
    svg = abi.encodePacked(
      '<g id="', _id, '">', _parts.packed(), '</g>\n'
    );
  }

  function fill(bytes memory _svg, string memory _value) internal pure returns(bytes memory svg) {
    svg = abi.encodePacked(
      '<g fill="', _value, '">', _svg, '</g>\n'
    );
  }

  function circle(int _cx, int _cy, int _radius) internal pure returns(bytes memory svg) {
    svg = abi.encodePacked(
        '<circle cx="', uint(_cx).toString(),'" cy="', uint(_cy).toString(),'" r="', uint(_radius).toString(),'" />'
    );
  }

  function circle(int _cx, int _cy, int _radius, Context.Struct[] memory _ctxs) internal pure returns(bytes memory svg) {
    svg = abi.encodePacked(
        '<circle cx="', uint(_cx).toString(),'" cy="', uint(_cy).toString(),'" r="', uint(_radius).toString()
    );
    for (uint i=0; i<_ctxs.length; i++) {
      Context.Struct memory ctx = _ctxs[i];
      if (ctx.attr == Context.Attribute.FILL) {
        svg = abi.encodePacked(svg, '" fill="', ctx.value);      
      } else if (ctx.attr == Context.Attribute.STROKE) {
        svg = abi.encodePacked(svg, '" stroke="', ctx.value);      
      } else if (ctx.attr == Context.Attribute.STROKE_WIDTH) {
        svg = abi.encodePacked(svg, '" stroke-width="', ctx.value);      
      }      
    }
    svg = abi.encodePacked(svg, '" />');
  }

  // "_mask" will be added to the id
  function mask(bytes memory _svg, string memory _id) internal pure returns(bytes memory svg) {
    svg = abi.encodePacked(
      '<mask id="', _id ,'_mask">'
      '<rect x="0" y="0" width="100%" height="100%" fill="white"/>'
      '<g fill="black">',
      _svg,
      '</g>'
      '</mask>\n'
    );
  }
}