
farm.o:     file format elf64-x86-64


Disassembly of section .text:

0000000000000000 <start_farm>:
   0:	f3 0f 1e fa          	endbr64 
   4:	55                   	push   %rbp
   5:	48 89 e5             	mov    %rsp,%rbp
   8:	b8 01 00 00 00       	mov    $0x1,%eax
   d:	5d                   	pop    %rbp
   e:	c3                   	retq   

000000000000000f <addval_456>:
   f:	f3 0f 1e fa          	endbr64 
  13:	55                   	push   %rbp
  14:	48 89 e5             	mov    %rsp,%rbp
  17:	89 7d fc             	mov    %edi,-0x4(%rbp)
  1a:	8b 45 fc             	mov    -0x4(%rbp),%eax
  1d:	2d b8 6f 6f 3c       	sub    $0x3c6f6fb8,%eax
  22:	5d                   	pop    %rbp
  23:	c3                   	retq   

0000000000000024 <addval_408>:
  24:	f3 0f 1e fa          	endbr64 
  28:	55                   	push   %rbp
  29:	48 89 e5             	mov    %rsp,%rbp
  2c:	89 7d fc             	mov    %edi,-0x4(%rbp)
  2f:	8b 45 fc             	mov    -0x4(%rbp),%eax
  32:	2d ad a7 6f 3c       	sub    $0x3c6fa7ad,%eax
  37:	5d                   	pop    %rbp
  38:	c3                   	retq   

0000000000000039 <addval_198>:
  39:	f3 0f 1e fa          	endbr64 
  3d:	55                   	push   %rbp
  3e:	48 89 e5             	mov    %rsp,%rbp
  41:	89 7d fc             	mov    %edi,-0x4(%rbp)
  44:	8b 45 fc             	mov    -0x4(%rbp),%eax
  47:	2d b8 76 38 3c       	sub    $0x3c3876b8,%eax
  4c:	5d                   	pop    %rbp
  4d:	c3                   	retq   

000000000000004e <setval_228>:
  4e:	f3 0f 1e fa          	endbr64 
  52:	55                   	push   %rbp
  53:	48 89 e5             	mov    %rsp,%rbp
  56:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  5a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  5e:	c7 00 48 89 c7 90    	movl   $0x90c78948,(%rax)
  64:	90                   	nop
  65:	5d                   	pop    %rbp
  66:	c3                   	retq   

0000000000000067 <addval_109>:
  67:	f3 0f 1e fa          	endbr64 
  6b:	55                   	push   %rbp
  6c:	48 89 e5             	mov    %rsp,%rbp
  6f:	89 7d fc             	mov    %edi,-0x4(%rbp)
  72:	8b 45 fc             	mov    -0x4(%rbp),%eax
  75:	2d 6e a7 6f 6f       	sub    $0x6f6fa76e,%eax
  7a:	5d                   	pop    %rbp
  7b:	c3                   	retq   

000000000000007c <addval_206>:
  7c:	f3 0f 1e fa          	endbr64 
  80:	55                   	push   %rbp
  81:	48 89 e5             	mov    %rsp,%rbp
  84:	89 7d fc             	mov    %edi,-0x4(%rbp)
  87:	8b 45 fc             	mov    -0x4(%rbp),%eax
  8a:	05 d8 c3 a8 49       	add    $0x49a8c3d8,%eax
  8f:	5d                   	pop    %rbp
  90:	c3                   	retq   

0000000000000091 <setval_353>:
  91:	f3 0f 1e fa          	endbr64 
  95:	55                   	push   %rbp
  96:	48 89 e5             	mov    %rsp,%rbp
  99:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  9d:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  a1:	c7 00 48 89 c7 c7    	movl   $0xc7c78948,(%rax)
  a7:	90                   	nop
  a8:	5d                   	pop    %rbp
  a9:	c3                   	retq   

00000000000000aa <setval_452>:
  aa:	f3 0f 1e fa          	endbr64 
  ae:	55                   	push   %rbp
  af:	48 89 e5             	mov    %rsp,%rbp
  b2:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  b6:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  ba:	c7 00 48 89 c7 92    	movl   $0x92c78948,(%rax)
  c0:	90                   	nop
  c1:	5d                   	pop    %rbp
  c2:	c3                   	retq   

00000000000000c3 <mid_farm>:
  c3:	f3 0f 1e fa          	endbr64 
  c7:	55                   	push   %rbp
  c8:	48 89 e5             	mov    %rsp,%rbp
  cb:	b8 01 00 00 00       	mov    $0x1,%eax
  d0:	5d                   	pop    %rbp
  d1:	c3                   	retq   

00000000000000d2 <add_xy>:
  d2:	f3 0f 1e fa          	endbr64 
  d6:	55                   	push   %rbp
  d7:	48 89 e5             	mov    %rsp,%rbp
  da:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  de:	48 89 75 f0          	mov    %rsi,-0x10(%rbp)
  e2:	48 8b 55 f8          	mov    -0x8(%rbp),%rdx
  e6:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
  ea:	48 01 d0             	add    %rdx,%rax
  ed:	5d                   	pop    %rbp
  ee:	c3                   	retq   

00000000000000ef <getval_231>:
  ef:	f3 0f 1e fa          	endbr64 
  f3:	55                   	push   %rbp
  f4:	48 89 e5             	mov    %rsp,%rbp
  f7:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
  fc:	5d                   	pop    %rbp
  fd:	c3                   	retq   

00000000000000fe <getval_144>:
  fe:	f3 0f 1e fa          	endbr64 
 102:	55                   	push   %rbp
 103:	48 89 e5             	mov    %rsp,%rbp
 106:	b8 56 48 89 e0       	mov    $0xe0894856,%eax
 10b:	5d                   	pop    %rbp
 10c:	c3                   	retq   

000000000000010d <addval_453>:
 10d:	f3 0f 1e fa          	endbr64 
 111:	55                   	push   %rbp
 112:	48 89 e5             	mov    %rsp,%rbp
 115:	89 7d fc             	mov    %edi,-0x4(%rbp)
 118:	8b 45 fc             	mov    -0x4(%rbp),%eax
 11b:	2d b8 76 1f 6e       	sub    $0x6e1f76b8,%eax
 120:	5d                   	pop    %rbp
 121:	c3                   	retq   

0000000000000122 <addval_354>:
 122:	f3 0f 1e fa          	endbr64 
 126:	55                   	push   %rbp
 127:	48 89 e5             	mov    %rsp,%rbp
 12a:	89 7d fc             	mov    %edi,-0x4(%rbp)
 12d:	8b 45 fc             	mov    -0x4(%rbp),%eax
 130:	2d b8 76 1f 6e       	sub    $0x6e1f76b8,%eax
 135:	5d                   	pop    %rbp
 136:	c3                   	retq   

0000000000000137 <getval_331>:
 137:	f3 0f 1e fa          	endbr64 
 13b:	55                   	push   %rbp
 13c:	48 89 e5             	mov    %rsp,%rbp
 13f:	b8 8b d6 c3 2a       	mov    $0x2ac3d68b,%eax
 144:	5d                   	pop    %rbp
 145:	c3                   	retq   

0000000000000146 <setval_359>:
 146:	f3 0f 1e fa          	endbr64 
 14a:	55                   	push   %rbp
 14b:	48 89 e5             	mov    %rsp,%rbp
 14e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 152:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 156:	c7 00 56 68 89 e0    	movl   $0xe0896856,(%rax)
 15c:	90                   	nop
 15d:	5d                   	pop    %rbp
 15e:	c3                   	retq   

000000000000015f <getval_278>:
 15f:	f3 0f 1e fa          	endbr64 
 163:	55                   	push   %rbp
 164:	48 89 e5             	mov    %rsp,%rbp
 167:	b8 8d d6 84 c0       	mov    $0xc084d68d,%eax
 16c:	5d                   	pop    %rbp
 16d:	c3                   	retq   

000000000000016e <setval_129>:
 16e:	f3 0f 1e fa          	endbr64 
 172:	55                   	push   %rbp
 173:	48 89 e5             	mov    %rsp,%rbp
 176:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 17a:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 17e:	c7 00 99 ca 84 c9    	movl   $0xc984ca99,(%rax)
 184:	90                   	nop
 185:	5d                   	pop    %rbp
 186:	c3                   	retq   

0000000000000187 <addval_118>:
 187:	f3 0f 1e fa          	endbr64 
 18b:	55                   	push   %rbp
 18c:	48 89 e5             	mov    %rsp,%rbp
 18f:	89 7d fc             	mov    %edi,-0x4(%rbp)
 192:	8b 45 fc             	mov    -0x4(%rbp),%eax
 195:	2d b8 76 1f 3e       	sub    $0x3e1f76b8,%eax
 19a:	5d                   	pop    %rbp
 19b:	c3                   	retq   

000000000000019c <getval_441>:
 19c:	f3 0f 1e fa          	endbr64 
 1a0:	55                   	push   %rbp
 1a1:	48 89 e5             	mov    %rsp,%rbp
 1a4:	b8 89 c1 18 c0       	mov    $0xc018c189,%eax
 1a9:	5d                   	pop    %rbp
 1aa:	c3                   	retq   

00000000000001ab <addval_284>:
 1ab:	f3 0f 1e fa          	endbr64 
 1af:	55                   	push   %rbp
 1b0:	48 89 e5             	mov    %rsp,%rbp
 1b3:	89 7d fc             	mov    %edi,-0x4(%rbp)
 1b6:	8b 45 fc             	mov    -0x4(%rbp),%eax
 1b9:	2d 77 3e 6f 3c       	sub    $0x3c6f3e77,%eax
 1be:	5d                   	pop    %rbp
 1bf:	c3                   	retq   

00000000000001c0 <setval_322>:
 1c0:	f3 0f 1e fa          	endbr64 
 1c4:	55                   	push   %rbp
 1c5:	48 89 e5             	mov    %rsp,%rbp
 1c8:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1cc:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1d0:	c7 00 89 ca 91 c3    	movl   $0xc391ca89,(%rax)
 1d6:	90                   	nop
 1d7:	5d                   	pop    %rbp
 1d8:	c3                   	retq   

00000000000001d9 <setval_381>:
 1d9:	f3 0f 1e fa          	endbr64 
 1dd:	55                   	push   %rbp
 1de:	48 89 e5             	mov    %rsp,%rbp
 1e1:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 1e5:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 1e9:	c7 00 48 89 e0 92    	movl   $0x92e08948,(%rax)
 1ef:	90                   	nop
 1f0:	5d                   	pop    %rbp
 1f1:	c3                   	retq   

00000000000001f2 <getval_419>:
 1f2:	f3 0f 1e fa          	endbr64 
 1f6:	55                   	push   %rbp
 1f7:	48 89 e5             	mov    %rsp,%rbp
 1fa:	b8 89 ca 08 d2       	mov    $0xd208ca89,%eax
 1ff:	5d                   	pop    %rbp
 200:	c3                   	retq   

0000000000000201 <addval_277>:
 201:	f3 0f 1e fa          	endbr64 
 205:	55                   	push   %rbp
 206:	48 89 e5             	mov    %rsp,%rbp
 209:	89 7d fc             	mov    %edi,-0x4(%rbp)
 20c:	8b 45 fc             	mov    -0x4(%rbp),%eax
 20f:	2d 77 29 f7 24       	sub    $0x24f72977,%eax
 214:	5d                   	pop    %rbp
 215:	c3                   	retq   

0000000000000216 <getval_470>:
 216:	f3 0f 1e fa          	endbr64 
 21a:	55                   	push   %rbp
 21b:	48 89 e5             	mov    %rsp,%rbp
 21e:	b8 89 ca 90 c1       	mov    $0xc190ca89,%eax
 223:	5d                   	pop    %rbp
 224:	c3                   	retq   

0000000000000225 <getval_434>:
 225:	f3 0f 1e fa          	endbr64 
 229:	55                   	push   %rbp
 22a:	48 89 e5             	mov    %rsp,%rbp
 22d:	b8 89 c1 60 c0       	mov    $0xc060c189,%eax
 232:	5d                   	pop    %rbp
 233:	c3                   	retq   

0000000000000234 <setval_252>:
 234:	f3 0f 1e fa          	endbr64 
 238:	55                   	push   %rbp
 239:	48 89 e5             	mov    %rsp,%rbp
 23c:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 240:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 244:	c7 00 88 ca 84 c9    	movl   $0xc984ca88,(%rax)
 24a:	90                   	nop
 24b:	5d                   	pop    %rbp
 24c:	c3                   	retq   

000000000000024d <setval_135>:
 24d:	f3 0f 1e fa          	endbr64 
 251:	55                   	push   %rbp
 252:	48 89 e5             	mov    %rsp,%rbp
 255:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 259:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 25d:	c7 00 89 c1 94 c0    	movl   $0xc094c189,(%rax)
 263:	90                   	nop
 264:	5d                   	pop    %rbp
 265:	c3                   	retq   

0000000000000266 <setval_183>:
 266:	f3 0f 1e fa          	endbr64 
 26a:	55                   	push   %rbp
 26b:	48 89 e5             	mov    %rsp,%rbp
 26e:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 272:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 276:	c7 00 89 c1 18 db    	movl   $0xdb18c189,(%rax)
 27c:	90                   	nop
 27d:	5d                   	pop    %rbp
 27e:	c3                   	retq   

000000000000027f <getval_179>:
 27f:	f3 0f 1e fa          	endbr64 
 283:	55                   	push   %rbp
 284:	48 89 e5             	mov    %rsp,%rbp
 287:	b8 09 d6 38 c0       	mov    $0xc038d609,%eax
 28c:	5d                   	pop    %rbp
 28d:	c3                   	retq   

000000000000028e <addval_321>:
 28e:	f3 0f 1e fa          	endbr64 
 292:	55                   	push   %rbp
 293:	48 89 e5             	mov    %rsp,%rbp
 296:	89 7d fc             	mov    %edi,-0x4(%rbp)
 299:	8b 45 fc             	mov    -0x4(%rbp),%eax
 29c:	2d 77 3e 3b 36       	sub    $0x363b3e77,%eax
 2a1:	5d                   	pop    %rbp
 2a2:	c3                   	retq   

00000000000002a3 <getval_390>:
 2a3:	f3 0f 1e fa          	endbr64 
 2a7:	55                   	push   %rbp
 2a8:	48 89 e5             	mov    %rsp,%rbp
 2ab:	b8 99 d6 38 c9       	mov    $0xc938d699,%eax
 2b0:	5d                   	pop    %rbp
 2b1:	c3                   	retq   

00000000000002b2 <addval_391>:
 2b2:	f3 0f 1e fa          	endbr64 
 2b6:	55                   	push   %rbp
 2b7:	48 89 e5             	mov    %rsp,%rbp
 2ba:	89 7d fc             	mov    %edi,-0x4(%rbp)
 2bd:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2c0:	2d 3e b7 76 1f       	sub    $0x1f76b73e,%eax
 2c5:	5d                   	pop    %rbp
 2c6:	c3                   	retq   

00000000000002c7 <setval_332>:
 2c7:	f3 0f 1e fa          	endbr64 
 2cb:	55                   	push   %rbp
 2cc:	48 89 e5             	mov    %rsp,%rbp
 2cf:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 2d3:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 2d7:	c7 00 89 d6 90 c3    	movl   $0xc390d689,(%rax)
 2dd:	90                   	nop
 2de:	5d                   	pop    %rbp
 2df:	c3                   	retq   

00000000000002e0 <addval_137>:
 2e0:	f3 0f 1e fa          	endbr64 
 2e4:	55                   	push   %rbp
 2e5:	48 89 e5             	mov    %rsp,%rbp
 2e8:	89 7d fc             	mov    %edi,-0x4(%rbp)
 2eb:	8b 45 fc             	mov    -0x4(%rbp),%eax
 2ee:	2d 21 72 35 6f       	sub    $0x6f357221,%eax
 2f3:	5d                   	pop    %rbp
 2f4:	c3                   	retq   

00000000000002f5 <addval_314>:
 2f5:	f3 0f 1e fa          	endbr64 
 2f9:	55                   	push   %rbp
 2fa:	48 89 e5             	mov    %rsp,%rbp
 2fd:	89 7d fc             	mov    %edi,-0x4(%rbp)
 300:	8b 45 fc             	mov    -0x4(%rbp),%eax
 303:	2d 77 3e d7 2d       	sub    $0x2dd73e77,%eax
 308:	5d                   	pop    %rbp
 309:	c3                   	retq   

000000000000030a <setval_142>:
 30a:	f3 0f 1e fa          	endbr64 
 30e:	55                   	push   %rbp
 30f:	48 89 e5             	mov    %rsp,%rbp
 312:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 316:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 31a:	c7 00 89 ca 90 c3    	movl   $0xc390ca89,(%rax)
 320:	90                   	nop
 321:	5d                   	pop    %rbp
 322:	c3                   	retq   

0000000000000323 <getval_298>:
 323:	f3 0f 1e fa          	endbr64 
 327:	55                   	push   %rbp
 328:	48 89 e5             	mov    %rsp,%rbp
 32b:	b8 89 c1 08 d2       	mov    $0xd208c189,%eax
 330:	5d                   	pop    %rbp
 331:	c3                   	retq   

0000000000000332 <setval_446>:
 332:	f3 0f 1e fa          	endbr64 
 336:	55                   	push   %rbp
 337:	48 89 e5             	mov    %rsp,%rbp
 33a:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
 33e:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
 342:	c7 00 8d d6 38 d2    	movl   $0xd238d68d,(%rax)
 348:	90                   	nop
 349:	5d                   	pop    %rbp
 34a:	c3                   	retq   

000000000000034b <getval_445>:
 34b:	f3 0f 1e fa          	endbr64 
 34f:	55                   	push   %rbp
 350:	48 89 e5             	mov    %rsp,%rbp
 353:	b8 89 ca 94 90       	mov    $0x9094ca89,%eax
 358:	5d                   	pop    %rbp
 359:	c3                   	retq   

000000000000035a <addval_273>:
 35a:	f3 0f 1e fa          	endbr64 
 35e:	55                   	push   %rbp
 35f:	48 89 e5             	mov    %rsp,%rbp
 362:	89 7d fc             	mov    %edi,-0x4(%rbp)
 365:	8b 45 fc             	mov    -0x4(%rbp),%eax
 368:	2d 77 29 e7 3f       	sub    $0x3fe72977,%eax
 36d:	5d                   	pop    %rbp
 36e:	c3                   	retq   

000000000000036f <end_farm>:
 36f:	f3 0f 1e fa          	endbr64 
 373:	55                   	push   %rbp
 374:	48 89 e5             	mov    %rsp,%rbp
 377:	b8 01 00 00 00       	mov    $0x1,%eax
 37c:	5d                   	pop    %rbp
 37d:	c3                   	retq   
