
a.out:     file format elf64-x86-64


Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	callq  *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	retq   

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 a2 2f 00 00    	pushq  0x2fa2(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 a3 2f 00 00 	bnd jmpq *0x2fa3(%rip)        # 3fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	f3 0f 1e fa          	endbr64 
    1034:	f2 ff 25 bd 2f 00 00 	bnd jmpq *0x2fbd(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    103b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	31 ed                	xor    %ebp,%ebp
    1046:	49 89 d1             	mov    %rdx,%r9
    1049:	5e                   	pop    %rsi
    104a:	48 89 e2             	mov    %rsp,%rdx
    104d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1051:	50                   	push   %rax
    1052:	54                   	push   %rsp
    1053:	4c 8d 05 26 03 00 00 	lea    0x326(%rip),%r8        # 1380 <__libc_csu_fini>
    105a:	48 8d 0d af 02 00 00 	lea    0x2af(%rip),%rcx        # 1310 <__libc_csu_init>
    1061:	48 8d 3d 94 02 00 00 	lea    0x294(%rip),%rdi        # 12fc <main>
    1068:	ff 15 72 2f 00 00    	callq  *0x2f72(%rip)        # 3fe0 <__libc_start_main@GLIBC_2.2.5>
    106e:	f4                   	hlt    
    106f:	90                   	nop

0000000000001070 <deregister_tm_clones>:
    1070:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4010 <__TMC_END__>
    1077:	48 8d 05 92 2f 00 00 	lea    0x2f92(%rip),%rax        # 4010 <__TMC_END__>
    107e:	48 39 f8             	cmp    %rdi,%rax
    1081:	74 15                	je     1098 <deregister_tm_clones+0x28>
    1083:	48 8b 05 4e 2f 00 00 	mov    0x2f4e(%rip),%rax        # 3fd8 <_ITM_deregisterTMCloneTable>
    108a:	48 85 c0             	test   %rax,%rax
    108d:	74 09                	je     1098 <deregister_tm_clones+0x28>
    108f:	ff e0                	jmpq   *%rax
    1091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1098:	c3                   	retq   
    1099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010a0 <register_tm_clones>:
    10a0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4010 <__TMC_END__>
    10a7:	48 8d 35 62 2f 00 00 	lea    0x2f62(%rip),%rsi        # 4010 <__TMC_END__>
    10ae:	48 29 fe             	sub    %rdi,%rsi
    10b1:	48 89 f0             	mov    %rsi,%rax
    10b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10b8:	48 c1 f8 03          	sar    $0x3,%rax
    10bc:	48 01 c6             	add    %rax,%rsi
    10bf:	48 d1 fe             	sar    %rsi
    10c2:	74 14                	je     10d8 <register_tm_clones+0x38>
    10c4:	48 8b 05 25 2f 00 00 	mov    0x2f25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable>
    10cb:	48 85 c0             	test   %rax,%rax
    10ce:	74 08                	je     10d8 <register_tm_clones+0x38>
    10d0:	ff e0                	jmpq   *%rax
    10d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10d8:	c3                   	retq   
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <__do_global_dtors_aux>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	80 3d 25 2f 00 00 00 	cmpb   $0x0,0x2f25(%rip)        # 4010 <__TMC_END__>
    10eb:	75 2b                	jne    1118 <__do_global_dtors_aux+0x38>
    10ed:	55                   	push   %rbp
    10ee:	48 83 3d 02 2f 00 00 	cmpq   $0x0,0x2f02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10f5:	00 
    10f6:	48 89 e5             	mov    %rsp,%rbp
    10f9:	74 0c                	je     1107 <__do_global_dtors_aux+0x27>
    10fb:	48 8b 3d 06 2f 00 00 	mov    0x2f06(%rip),%rdi        # 4008 <__dso_handle>
    1102:	e8 29 ff ff ff       	callq  1030 <__cxa_finalize@plt>
    1107:	e8 64 ff ff ff       	callq  1070 <deregister_tm_clones>
    110c:	c6 05 fd 2e 00 00 01 	movb   $0x1,0x2efd(%rip)        # 4010 <__TMC_END__>
    1113:	5d                   	pop    %rbp
    1114:	c3                   	retq   
    1115:	0f 1f 00             	nopl   (%rax)
    1118:	c3                   	retq   
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <frame_dummy>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	e9 77 ff ff ff       	jmpq   10a0 <register_tm_clones>

0000000000001129 <start_farm>:
    1129:	f3 0f 1e fa          	endbr64 
    112d:	b8 01 00 00 00       	mov    $0x1,%eax
    1132:	c3                   	retq   

0000000000001133 <addval_456>:
    1133:	f3 0f 1e fa          	endbr64 
    1137:	8d 87 48 90 90 c3    	lea    -0x3c6f6fb8(%rdi),%eax
    113d:	c3                   	retq   

000000000000113e <addval_408>:
    113e:	f3 0f 1e fa          	endbr64 
    1142:	8d 87 53 58 90 c3    	lea    -0x3c6fa7ad(%rdi),%eax
    1148:	c3                   	retq   

0000000000001149 <addval_198>:
    1149:	f3 0f 1e fa          	endbr64 
    114d:	8d 87 48 89 c7 c3    	lea    -0x3c3876b8(%rdi),%eax
    1153:	c3                   	retq   

0000000000001154 <setval_228>:
    1154:	f3 0f 1e fa          	endbr64 
    1158:	c7 07 48 89 c7 90    	movl   $0x90c78948,(%rdi)
    115e:	c3                   	retq   

000000000000115f <addval_109>:
    115f:	f3 0f 1e fa          	endbr64 
    1163:	8d 87 92 58 90 90    	lea    -0x6f6fa76e(%rdi),%eax
    1169:	c3                   	retq   

000000000000116a <addval_206>:
    116a:	f3 0f 1e fa          	endbr64 
    116e:	8d 87 d8 c3 a8 49    	lea    0x49a8c3d8(%rdi),%eax
    1174:	c3                   	retq   

0000000000001175 <setval_353>:
    1175:	f3 0f 1e fa          	endbr64 
    1179:	c7 07 48 89 c7 c7    	movl   $0xc7c78948,(%rdi)
    117f:	c3                   	retq   

0000000000001180 <setval_452>:
    1180:	f3 0f 1e fa          	endbr64 
    1184:	c7 07 48 89 c7 92    	movl   $0x92c78948,(%rdi)
    118a:	c3                   	retq   

000000000000118b <mid_farm>:
    118b:	f3 0f 1e fa          	endbr64 
    118f:	b8 01 00 00 00       	mov    $0x1,%eax
    1194:	c3                   	retq   

0000000000001195 <add_xy>:
    1195:	f3 0f 1e fa          	endbr64 
    1199:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
    119d:	c3                   	retq   

000000000000119e <getval_231>:
    119e:	f3 0f 1e fa          	endbr64 
    11a2:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
    11a7:	c3                   	retq   

00000000000011a8 <getval_144>:
    11a8:	f3 0f 1e fa          	endbr64 
    11ac:	b8 56 48 89 e0       	mov    $0xe0894856,%eax
    11b1:	c3                   	retq   

00000000000011b2 <addval_453>:
    11b2:	f3 0f 1e fa          	endbr64 
    11b6:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
    11bc:	c3                   	retq   

00000000000011bd <addval_354>:
    11bd:	f3 0f 1e fa          	endbr64 
    11c1:	8d 87 48 89 e0 91    	lea    -0x6e1f76b8(%rdi),%eax
    11c7:	c3                   	retq   

00000000000011c8 <getval_331>:
    11c8:	f3 0f 1e fa          	endbr64 
    11cc:	b8 8b d6 c3 2a       	mov    $0x2ac3d68b,%eax
    11d1:	c3                   	retq   

00000000000011d2 <setval_359>:
    11d2:	f3 0f 1e fa          	endbr64 
    11d6:	c7 07 56 68 89 e0    	movl   $0xe0896856,(%rdi)
    11dc:	c3                   	retq   

00000000000011dd <getval_278>:
    11dd:	f3 0f 1e fa          	endbr64 
    11e1:	b8 8d d6 84 c0       	mov    $0xc084d68d,%eax
    11e6:	c3                   	retq   

00000000000011e7 <setval_129>:
    11e7:	f3 0f 1e fa          	endbr64 
    11eb:	c7 07 99 ca 84 c9    	movl   $0xc984ca99,(%rdi)
    11f1:	c3                   	retq   

00000000000011f2 <addval_118>:
    11f2:	f3 0f 1e fa          	endbr64 
    11f6:	8d 87 48 89 e0 c1    	lea    -0x3e1f76b8(%rdi),%eax
    11fc:	c3                   	retq   

00000000000011fd <getval_441>:
    11fd:	f3 0f 1e fa          	endbr64 
    1201:	b8 89 c1 18 c0       	mov    $0xc018c189,%eax
    1206:	c3                   	retq   

0000000000001207 <addval_284>:
    1207:	f3 0f 1e fa          	endbr64 
    120b:	8d 87 89 c1 90 c3    	lea    -0x3c6f3e77(%rdi),%eax
    1211:	c3                   	retq   

0000000000001212 <setval_322>:
    1212:	f3 0f 1e fa          	endbr64 
    1216:	c7 07 89 ca 91 c3    	movl   $0xc391ca89,(%rdi)
    121c:	c3                   	retq   

000000000000121d <setval_381>:
    121d:	f3 0f 1e fa          	endbr64 
    1221:	c7 07 48 89 e0 92    	movl   $0x92e08948,(%rdi)
    1227:	c3                   	retq   

0000000000001228 <getval_419>:
    1228:	f3 0f 1e fa          	endbr64 
    122c:	b8 89 ca 08 d2       	mov    $0xd208ca89,%eax
    1231:	c3                   	retq   

0000000000001232 <addval_277>:
    1232:	f3 0f 1e fa          	endbr64 
    1236:	8d 87 89 d6 08 db    	lea    -0x24f72977(%rdi),%eax
    123c:	c3                   	retq   

000000000000123d <getval_470>:
    123d:	f3 0f 1e fa          	endbr64 
    1241:	b8 89 ca 90 c1       	mov    $0xc190ca89,%eax
    1246:	c3                   	retq   

0000000000001247 <getval_434>:
    1247:	f3 0f 1e fa          	endbr64 
    124b:	b8 89 c1 60 c0       	mov    $0xc060c189,%eax
    1250:	c3                   	retq   

0000000000001251 <setval_252>:
    1251:	f3 0f 1e fa          	endbr64 
    1255:	c7 07 88 ca 84 c9    	movl   $0xc984ca88,(%rdi)
    125b:	c3                   	retq   

000000000000125c <setval_135>:
    125c:	f3 0f 1e fa          	endbr64 
    1260:	c7 07 89 c1 94 c0    	movl   $0xc094c189,(%rdi)
    1266:	c3                   	retq   

0000000000001267 <setval_183>:
    1267:	f3 0f 1e fa          	endbr64 
    126b:	c7 07 89 c1 18 db    	movl   $0xdb18c189,(%rdi)
    1271:	c3                   	retq   

0000000000001272 <getval_179>:
    1272:	f3 0f 1e fa          	endbr64 
    1276:	b8 09 d6 38 c0       	mov    $0xc038d609,%eax
    127b:	c3                   	retq   

000000000000127c <addval_321>:
    127c:	f3 0f 1e fa          	endbr64 
    1280:	8d 87 89 c1 c4 c9    	lea    -0x363b3e77(%rdi),%eax
    1286:	c3                   	retq   

0000000000001287 <getval_390>:
    1287:	f3 0f 1e fa          	endbr64 
    128b:	b8 99 d6 38 c9       	mov    $0xc938d699,%eax
    1290:	c3                   	retq   

0000000000001291 <addval_391>:
    1291:	f3 0f 1e fa          	endbr64 
    1295:	8d 87 c2 48 89 e0    	lea    -0x1f76b73e(%rdi),%eax
    129b:	c3                   	retq   

000000000000129c <setval_332>:
    129c:	f3 0f 1e fa          	endbr64 
    12a0:	c7 07 89 d6 90 c3    	movl   $0xc390d689,(%rdi)
    12a6:	c3                   	retq   

00000000000012a7 <addval_137>:
    12a7:	f3 0f 1e fa          	endbr64 
    12ab:	8d 87 df 8d ca 90    	lea    -0x6f357221(%rdi),%eax
    12b1:	c3                   	retq   

00000000000012b2 <addval_314>:
    12b2:	f3 0f 1e fa          	endbr64 
    12b6:	8d 87 89 c1 28 d2    	lea    -0x2dd73e77(%rdi),%eax
    12bc:	c3                   	retq   

00000000000012bd <setval_142>:
    12bd:	f3 0f 1e fa          	endbr64 
    12c1:	c7 07 89 ca 90 c3    	movl   $0xc390ca89,(%rdi)
    12c7:	c3                   	retq   

00000000000012c8 <getval_298>:
    12c8:	f3 0f 1e fa          	endbr64 
    12cc:	b8 89 c1 08 d2       	mov    $0xd208c189,%eax
    12d1:	c3                   	retq   

00000000000012d2 <setval_446>:
    12d2:	f3 0f 1e fa          	endbr64 
    12d6:	c7 07 8d d6 38 d2    	movl   $0xd238d68d,(%rdi)
    12dc:	c3                   	retq   

00000000000012dd <getval_445>:
    12dd:	f3 0f 1e fa          	endbr64 
    12e1:	b8 89 ca 94 90       	mov    $0x9094ca89,%eax
    12e6:	c3                   	retq   

00000000000012e7 <addval_273>:
    12e7:	f3 0f 1e fa          	endbr64 
    12eb:	8d 87 89 d6 18 c0    	lea    -0x3fe72977(%rdi),%eax
    12f1:	c3                   	retq   

00000000000012f2 <end_farm>:
    12f2:	f3 0f 1e fa          	endbr64 
    12f6:	b8 01 00 00 00       	mov    $0x1,%eax
    12fb:	c3                   	retq   

00000000000012fc <main>:
    12fc:	f3 0f 1e fa          	endbr64 
    1300:	b8 00 00 00 00       	mov    $0x0,%eax
    1305:	c3                   	retq   
    1306:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    130d:	00 00 00 

0000000000001310 <__libc_csu_init>:
    1310:	f3 0f 1e fa          	endbr64 
    1314:	41 57                	push   %r15
    1316:	4c 8d 3d d3 2a 00 00 	lea    0x2ad3(%rip),%r15        # 3df0 <__frame_dummy_init_array_entry>
    131d:	41 56                	push   %r14
    131f:	49 89 d6             	mov    %rdx,%r14
    1322:	41 55                	push   %r13
    1324:	49 89 f5             	mov    %rsi,%r13
    1327:	41 54                	push   %r12
    1329:	41 89 fc             	mov    %edi,%r12d
    132c:	55                   	push   %rbp
    132d:	48 8d 2d c4 2a 00 00 	lea    0x2ac4(%rip),%rbp        # 3df8 <__do_global_dtors_aux_fini_array_entry>
    1334:	53                   	push   %rbx
    1335:	4c 29 fd             	sub    %r15,%rbp
    1338:	48 83 ec 08          	sub    $0x8,%rsp
    133c:	e8 bf fc ff ff       	callq  1000 <_init>
    1341:	48 c1 fd 03          	sar    $0x3,%rbp
    1345:	74 1f                	je     1366 <__libc_csu_init+0x56>
    1347:	31 db                	xor    %ebx,%ebx
    1349:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1350:	4c 89 f2             	mov    %r14,%rdx
    1353:	4c 89 ee             	mov    %r13,%rsi
    1356:	44 89 e7             	mov    %r12d,%edi
    1359:	41 ff 14 df          	callq  *(%r15,%rbx,8)
    135d:	48 83 c3 01          	add    $0x1,%rbx
    1361:	48 39 dd             	cmp    %rbx,%rbp
    1364:	75 ea                	jne    1350 <__libc_csu_init+0x40>
    1366:	48 83 c4 08          	add    $0x8,%rsp
    136a:	5b                   	pop    %rbx
    136b:	5d                   	pop    %rbp
    136c:	41 5c                	pop    %r12
    136e:	41 5d                	pop    %r13
    1370:	41 5e                	pop    %r14
    1372:	41 5f                	pop    %r15
    1374:	c3                   	retq   
    1375:	66 66 2e 0f 1f 84 00 	data16 nopw %cs:0x0(%rax,%rax,1)
    137c:	00 00 00 00 

0000000000001380 <__libc_csu_fini>:
    1380:	f3 0f 1e fa          	endbr64 
    1384:	c3                   	retq   

Disassembly of section .fini:

0000000000001388 <_fini>:
    1388:	f3 0f 1e fa          	endbr64 
    138c:	48 83 ec 08          	sub    $0x8,%rsp
    1390:	48 83 c4 08          	add    $0x8,%rsp
    1394:	c3                   	retq   
