pragma solidity ^0.8.6;

import "../../interfaces/IParts.sol";

contract LuPartsDoor2 is IParts {

      function svgData(uint8 inde) external pure override returns(uint16 sizes, bytes[] memory paths, string[] memory fill, uint8[] memory stroke) {
          sizes = 4;
          paths = new bytes[](4);
          fill = new string[](4);
          stroke = new uint8[](4);

          paths[0] = "\x4d\x60\x5e\x00\x09\x63\xaa\x54\x03\x45\x44\xf9\xeb\x43\xfc\xf5\x54\x00\xf0\x44\xf3\xf0\x44\xeb\xfb\x44\x82\xee\x44\x15\xeb\x34\xdb\x43\x50\x22\xb0\x57\x0e\xf3\x56\x0b\xce\x06\x63\xfb\x44\x8e\xd5\x34\x9f\x3e\x35\x61\x43\x50\xbc\xeb\x64\x70\xef\x64\xba\x44\x05\x63\x32\x55\x3a\x21\x55\xaa\x21\x55\xee\xff\x54\x86\xef\x54\xf0\xe3\x64\x7a\xf7\x54\x6d\xe6\x54\xd2\xe5\x64\x3f\x43\x60\x9f\x02\x69\x79\xfb\x68\x5e\x00\x09\x5a";
          paths[1] = "\x4d\x60\x92\xd4\x08\x63\xf7\x54\x0c\xdf\x53\x05\xd4\x53\x05\xfd\x44\xb3\xf1\x44\x71\xe8\x44\x34\xfa\x44\xdb\xe0\x34\xbe\xde\x34\xa3\x43\x50\x22\x37\x56\x12\x7f\x55\x6f\x48\x05\x68\x00\x05\x41\x05\x66\x05\x00\x55\x00\x01\x55\xfd\x1c\x05\x63\x3b\x55\x00\x86\x55\x14\xa8\x55\x3c\x53\x60\xc7\xd1\x65\xc5\x20\x06\x63\xff\x54\x46\xf2\x54\xa6\xed\x54\xed\x43\x60\xae\x3e\x67\x94\xd4\x68\x92\xd4\x08\x5a";
          paths[2] = "\x4d\x50\xb8\xde\x08\x63\xdb\x44\x2e\xd9\x24\x52\xd5\x14\x55\x6c\x50\x17\xff\x04\x63\x04\x55\xfb\x06\x75\xd8\x2a\x85\xa7\x5a\x00";
          paths[3] = "\x4d\x60\x3a\xe0\x08\x43\x34\x86\x43\x41\x56\x92\x4e\x56\x3e\x6c\x50\x17\x03\x05\x63\xf3\x54\x54\xe7\x84\x01\xec\x84\x9e\x5a\x00";
          fill[0] = "#553852";
          fill[1] = "#eb8cb5";
          fill[2] = "#af5366";
          fill[3] = "#af5366";
          stroke[0] = 0;
          stroke[1] = 0;
          stroke[2] = 0;
          stroke[3] = 0;
      }
}
