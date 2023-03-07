import { compressPath, solidityString } from './pathUtils';

const bitcoin =
  'M2947.77 1754.38c40.72,-272.26 -166.56,-418.61 -450,-516.24l91.95 -368.8 -224.5 -55.94 -89.51 359.09c-59.02,-14.72 -119.63,-28.59 -179.87,-42.34l90.16 -361.46 -224.36 -55.94 -92 368.68c-48.84,-11.12 -96.81,-22.11 -143.35,-33.69l0.26 -1.16 -309.59 -77.31 -59.72 239.78c0,0 166.56,38.18 163.05,40.53 90.91,22.69 107.35,82.87 104.62,130.57l-104.74 420.15c6.26,1.59 14.38,3.89 23.34,7.49 -7.49,-1.86 -15.46,-3.89 -23.73,-5.87l-146.81 588.57c-11.11,27.62 -39.31,69.07 -102.87,53.33 2.25,3.26 -163.17,-40.72 -163.17,-40.72l-111.46 256.98 292.15 72.83c54.35,13.63 107.61,27.89 160.06,41.3l-92.9 373.03 224.24 55.94 92 -369.07c61.26,16.63 120.71,31.97 178.91,46.43l-91.69 367.33 224.51 55.94 92.89 -372.33c382.82,72.45 670.67,43.24 791.83,-303.02 97.63,-278.78 -4.86,-439.58 -206.26,-544.44 146.69,-33.83 257.18,-130.31 286.64,-329.61l-0.07 -0.05zm-512.93 719.26c-69.38,278.78 -538.76,128.08 -690.94,90.29l123.28 -494.2c152.17,37.99 640.17,113.17 567.67,403.91zm69.43 -723.3c-63.29,253.58 -453.96,124.75 -580.69,93.16l111.77 -448.21c126.73,31.59 534.85,90.55 468.94,355.05l-0.02 0z';
const data = compressPath(bitcoin, 4096);
console.log(bitcoin.length, data.length);
console.log(solidityString(data));

const fontP =
  'M88.63,15.08C73.96-1.91,43.06-3.45,38.43,6.39c-.01,.08,0-.77,0-.77l-.19-5.02S14.87-.75,0,.6C0,.6,.77,67.6,.97,83.25c.19,15.64,.77,77.43,.58,81.49,0,0,20.28,4.06,35.72-.58,0,0,2.9-34.95,.77-48.47,0,0,16.8,5.79,34.18,1.35,17.38-4.44,22.98-12.17,26.65-28,3.67-15.83,4.44-56.96-10.23-73.96Zm-25.39,67.97c-5.12,6.57-14.68,6.95-20.37,5.89s-5.31-12.65-5.31-24.43-.19-22.7,2.9-27.32c5.99-8.98,17.76-7.53,24.14,4.54,6.37,12.07,3.77,34.76-1.35,41.32Z';
const dataP = compressPath(fontP, 167);
console.log(fontP.length, dataP.length);
