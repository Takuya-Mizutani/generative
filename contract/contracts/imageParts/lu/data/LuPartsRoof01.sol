pragma solidity ^0.8.6;

import "../../interfaces/IParts.sol";

contract LuPartsRoof01 is IParts {

      function svgData(uint8 index) external pure override returns(uint16 sizes, bytes[] memory paths, string[] memory fill, uint8[] memory stroke) {
          sizes = 4;
          paths = new bytes[](4);
          fill = new string[](4);
          stroke = new uint8[](4);

          paths[0] = "\x4d\x80\x27\x01\x55\x00\x63\x07\x73\xb8\x55\x8a\xd6\x55\x7a\x43\x60\x8c\x79\x87\x6c\xe5\x85\xc0\x70\x85\xc0\x70\x85\x54\xf3\x84\x27\x01\x05\x5a";
          paths[1] = "\x4d\x60\x25\xa0\x06\x63\xfb\x54\x00\x03\x55\x05\x00\x55\x00\x53\x50\x0c\x57\x57\x0f\x6d\x57\xbb\xdb\x57\xd4\xe0\x07\x73\x83\x45\x9f\x0d\x46\x37\x43\x60\x9e\x01\x67\x32\xc7\x66\x25\xa0\x06\x5a";
          paths[2] = "\x4d\x90\x02\x5a\x05\x53\x59\x48\xff\x2f\x58\x0e\x4c\x70\x6e\xa1\x05\x63\x09\x55\x1a\x3a\x55\x33\x69\x55\x4d\x1a\x55\x0e\x3e\x55\x1a\x4c\x55\x1b\x43\x80\x97\xa0\x85\xdd\x59\x95\x02\x5a\x05\x5a";
          paths[3] = "\x4d\x70\x5f\xad\x65\x3d\x8d\x06\x63\x03\x55\x05\xf8\x54\x0f\x11\x55\x25\x23\x55\x23\x53\x55\x39\xa7\x55\x55\x5f\x45\xac\xc9\x45\x6d\x1d\x46\x0f\xf2\x44\xfd\xd5\x44\xef\xca\x44\xea\x43\x70\xa8\xe8\x75\x7f\xce\x75\x5f\xad\x05\x5a";
          fill[0] = "#504650";
          fill[1] = "#ff79c1";
          fill[2] = "#de6b96";
          fill[3] = "#f7931e";
          stroke[0] = 0;
          stroke[1] = 0;
          stroke[2] = 0;
          stroke[3] = 0;
      }
}
