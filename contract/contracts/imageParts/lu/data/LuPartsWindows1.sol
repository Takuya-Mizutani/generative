pragma solidity ^0.8.6;

import "../../interfaces/IParts.sol";

contract LuPartsWindows1 is IParts {

      function svgData(uint8 index) external pure override returns(uint16 sizes, bytes[] memory paths, string[] memory fill, uint8[] memory stroke) {
          sizes = 4;
          paths = new bytes[](4);
          fill = new string[](4);
          stroke = new uint8[](4);

          paths[0] = "\x4d\x50\x58\x00\x05\x41\x4c\x55\x4c\x00\x55\x00\x00\x55\x1e\x16\x05\x43\x07\x55\x2d\x09\x55\x4a\x0d\x55\x6a\xf7\x54\xff\x02\x65\xa3\x0b\x75\x41\x61\xe0\x5c\x5c\x5e\x00\x00\x55\x01\x09\x65\x57\x76\x50\x1a\x6c\x50\x16\x0f\x05\x63\x2d\x55\x1c\x99\x55\x20\x73\x56\x25\x8c\x55\x02\x2c\x56\x06\xb7\x56\x14\x61\x50\x50\x50\x55\x00\x00\x55\x00\x1c\x55\x06\x45\x55\x45\x00\x55\x00\x00\x55\x3d\xd7\x04\x63\x0f\x45\xe2\x11\x45\xac\x13\x45\x58\x00\x45\xde\x02\x45\xb4\x04\x45\xa7\x68\x50\x02\x76\x40\xfc\x61\xa0\x1d\x1d\x5a\x00\x00\x55\x00\x1a\x35\xd6\x63\x50\x02\x9f\x54\x04\x44\x54\x1c\xe1\x03\x6c\x04\x45\xed\xf7\x44\xef\x43\x80\xdb\x38\x85\x92\x36\x75\xe3\x36\x05\x63\x83\x54\x00\xe7\x43\xfe\xa9\x43\xe0\x48\x60\x87\x61\x60\x62\x62\x56\x00\x00\x55\x00\x87\x44\xed\x48\x50\x84\x4c\x50\x58\x00\x05\x5a";
          paths[1] = "\x4d\x50\x58\x2f\x05\x6c\x29\x55\x04\x48\x50\x9e\x6c\x50\x70\xfc\x04\x61\x21\x66\x21\x00\x55\x00\x01\x55\x68\x0f\x05\x43\xfc\x56\x82\xac\x58\x4a\xcc\x58\x7d\x63\x40\xd0\xcf\x45\xf9\x78\x46\xca\x49\x47\xf3\x20\x55\x00\xd4\x45\xec\xfd\x45\xfa\x0b\x45\xf3\x0f\x45\xef\x0f\x05\x61\x16\x55\x16\x00\x55\x00\x01\x45\xf1\xfa\x04\x63\xc5\x43\xde\x24\x42\xf7\xe5\x41\xce\x0f\x45\x03\xd1\x24\xd1\xf7\x14\xd2\xfc\x44\xd0\xfc\x44\xc3\x1a\x45\xc3";
          paths[2] = "\x4d\x60\x4a\xcd\x05\x63\xca\x54\x00\xac\x54\x07\x9a\x54\x1c\x61\x50\x32\x32\x55\x00\x00\x55\x00\xed\x54\x29\x04\xdd\x04\x00\x55\x00\x00\x55\x07\x07\xb6\xd6\xd6\x5b\x00\x00\x55\x01\x09\x55\xdc\x76\x50\x04\x68\x50\x00\x61\x50\x5b\x5b\x55\x00\x00\x55\x00\x61\x55\x58\x66\x55\x66\x00\x55\x00\x00\x55\x22\xfc\x04\x68\x02\x05\x61\xcc\x66\xcc\x00\x55\x00\x01\x55\x70\xf5\x04\x6c\x5b\x55\x04\x68\x50\x79\x61\x50\x38\x38\x55\x00\x00\x55\x01\x1a\x55\x09\x9c\x55\x9c\x00\x55\x00\x00\x55\x2d\x0b\x05\x63\x0d\x55\x00\x3c\x45\xfa\x41\x45\xbb\x68\x50\x00\x63\x50\x04\xd7\x54\x06\xae\x54\x07\x85\x54\x04\x8e\x54\x07\x21\x54\x2f\xb8\x03\x76\xf3\x04\x61\x5f\x55\x5f\x00\x55\x00\x00\x45\xe4\xb2\x04\x63\xe0\x44\xde\xac\x44\xde\x9b\x44\xde\x6c\x40\xb4\x06\x45\xc4\x06\x05\x48\x32\x07\x6c\xa3\x44\xf9\x63\x40\xd1\xfc\x44\x9d\xf7\x44\x74\xf7\x04\x5a";
          paths[3] = "\x4d\x60\x4a\xfb\x05\x63\x49\x55\x00\xb5\x55\x11\xe9\x55\x11\x68\x50\x2f\x63\x50\x27\x00\x55\x5d\xf5\x54\x88\xf5\x04\x73\x52\x55\x0d\x50\x55\x3f\x63\x40\xc8\x97\x45\xd3\x31\x46\xc8\xd0\x46\xfe\x13\x45\xf9\x18\x45\xef\x18\x05\x73\xd7\x44\xed\xb9\x44\xed\x68\x40\xdb\x63\x40\xcc\x00\x45\x8e\xfa\x44\x51\xfa\x04\x61\xca\x66\xca\x00\x55\x00\x00\x45\x83\x0d\x05\x48\x42\x06\x61\x29\x55\x29\x00\x55\x00\x01\x45\xd1\xd3\x04\x63\x06\x45\x5e\xe4\x34\xbe\xef\x34\x1c\xfe\x44\xef\x1c\x45\xea\x47\x45\xea";
          fill[0] = "#504650";
          fill[1] = "#af5366";
          fill[2] = "#504650";
          fill[3] = "#fff";
          stroke[0] = 0;
          stroke[1] = 0;
          stroke[2] = 0;
          stroke[3] = 0;
      }
}
