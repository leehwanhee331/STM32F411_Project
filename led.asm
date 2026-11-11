......... ...
080001b5:   movs    r0, r0
080001b7:   movs    r0, r0
080001b9:   subs    r0, r2, #1
080001bb:   lsrs    r0, r0, #32
          frame_dummy:
080001bd:   push    {r3, lr}
080001bf:   ldr     r3, [pc, #12]   @ (0x80001cc <frame_dummy+16>)
080001c1:   cbz     r3, 0x80001ca <frame_dummy+14>
080001c3:   ldr     r1, [pc, #12]   @ (0x80001d0 <frame_dummy+20>)
080001c5:   ldr     r0, [pc, #12]   @ (0x80001d4 <frame_dummy+24>)
080001c7:   nop.w   
080001cb:   pop     {r3, pc}
080001cd:   movs    r0, r0
080001cf:   movs    r0, r0
080001d1:   movs    r0, r2
080001d3:   movs    r0, #0
080001d5:   subs    r0, r2, #1
080001d7:   lsrs    r0, r0, #32
          __aeabi_uldivmod:
080001d9:   cbnz    r3, 0x80001f0 <__aeabi_uldivmod+24>
080001db:   cbnz    r2, 0x80001f0 <__aeabi_uldivmod+24>
080001dd:   cmp     r1, #0
080001df:   it      eq
080001e1:   cmpeq   r0, #0
080001e3:   itt     ne
080001e5:   movne.w r1, #4294967295
080001e9:   movne.w r0, #4294967295
080001ed:   b.w     0x8000500 <__aeabi_ldiv0>
080001f1:   sub.w   r12, sp, #8
080001f5:   strd    r12, lr, [sp, #-16]!
080001f9:   bl      0x8000208 <__udivmoddi4>
080001fd:   ldr.w   lr, [sp, #4]
08000201:   ldrd    r2, r3, [sp, #8]
08000205:   add     sp, #16
08000207:   bx      lr
          __udivmoddi4:
08000209:   stmdb   sp!, {r4, r5, r6, r7, r8, r9, r10, lr}
0800020d:   ldr     r5, [sp, #32]
0800020f:   mov     r7, r1
08000211:   mov     r4, r0
08000213:   mov     r12, r1
08000215:   cmp     r3, #0
08000217:   bne.n   0x80002aa <__udivmoddi4+162>
08000219:   cmp     r2, r1
0800021b:   mov     r6, r2
0800021d:   bls.n   0x80002e2 <__udivmoddi4+218>
0800021f:   clz     r3, r2
08000223:   cbz     r3, 0x8000238 <__udivmoddi4+48>
08000225:   rsb     r2, r3, #32
08000229:   lsl.w   r12, r1, r3
0800022d:   lsr.w   r2, r0, r2
08000231:   lsls    r6, r3
08000233:   orr.w   r12, r2, r12
08000237:   lsls    r4, r3
08000239:   mov.w   lr, r6, lsr #16
0800023d:   uxth    r7, r6
0800023f:   udiv    r1, r12, lr
08000243:   lsrs    r2, r4, #16
08000245:   mls     r12, lr, r1, r12
08000249:   orr.w   r2, r2, r12, lsl #16
0800024d:   mul.w   r0, r1, r7
08000251:   cmp     r0, r2
08000253:   bls.n   0x8000268 <__udivmoddi4+96>
08000255:   adds    r2, r6, r2
08000257:   add.w   r12, r1, #4294967295
0800025b:   bcs.w   0x800043a <__udivmoddi4+562>
0800025f:   cmp     r0, r2
08000261:   bls.w   0x800043a <__udivmoddi4+562>
08000265:   subs    r1, #2
08000267:   add     r2, r6
08000269:   subs    r2, r2, r0
0800026b:   uxth    r4, r4
0800026d:   udiv    r0, r2, lr
08000271:   mls     r2, lr, r0, r2
08000275:   orr.w   r4, r4, r2, lsl #16
08000279:   mul.w   r7, r0, r7
0800027d:   cmp     r7, r4
0800027f:   bls.n   0x8000294 <__udivmoddi4+140>
08000281:   adds    r4, r6, r4
08000283:   add.w   r2, r0, #4294967295
08000287:   bcs.w   0x800043e <__udivmoddi4+566>
0800028b:   cmp     r7, r4
0800028d:   bls.w   0x800043e <__udivmoddi4+566>
08000291:   add     r4, r6
08000293:   subs    r0, #2
08000295:   orr.w   r0, r0, r1, lsl #16
08000299:   subs    r4, r4, r7
0800029b:   movs    r1, #0
0800029d:   cbz     r5, 0x80002a6 <__udivmoddi4+158>
0800029f:   lsrs    r4, r3
080002a1:   movs    r3, #0
080002a3:   strd    r4, r3, [r5]
080002a7:   ldmia.w sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
080002ab:   cmp     r3, r1
080002ad:   bls.n   0x80002bc <__udivmoddi4+180>
080002af:   cbz     r5, 0x80002b4 <__udivmoddi4+172>
080002b1:   strd    r0, r1, [r5]
080002b5:   movs    r1, #0
080002b7:   mov     r0, r1
080002b9:   ldmia.w sp!, {r4, r5, r6, r7, r8, r9, r10, pc}
080002bd:   clz     r1, r3
080002c1:   cmp     r1, #0
080002c3:   bne.n   0x8000356 <__udivmoddi4+334>
080002c5:   cmp     r3, r7
080002c7:   bcc.n   0x80002ce <__udivmoddi4+198>
080002c9:   cmp     r2, r0
080002cb:   bhi.w   0x80004dc <__udivmoddi4+724>
080002cf:   subs    r4, r0, r2
080002d1:   sbc.w   r2, r7, r3
080002d5:   movs    r0, #1
080002d7:   mov     r12, r2
080002d9:   cmp     r5, #0
080002db:   beq.n   0x80002a6 <__udivmoddi4+158>
080002dd:   strd    r4, r12, [r5]
080002e1:   b.n     0x80002a6 <__udivmoddi4+158>
080002e3:   cmp     r2, #0
080002e5:   beq.w   0x800040c <__udivmoddi4+516>
080002e9:   clz     r3, r2
080002ed:   cmp     r3, #0
080002ef:   bne.w   0x8000442 <__udivmoddi4+570>
080002f3:   subs    r2, r1, r2
080002f5:   mov.w   lr, r6, lsr #16
080002f9:   uxth.w  r12, r6
080002fd:   movs    r1, #1
080002ff:   lsrs    r0, r4, #16
08000301:   udiv    r7, r2, lr
08000305:   mls     r2, lr, r7, r2
08000309:   orr.w   r2, r0, r2, lsl #16
0800030d:   mul.w   r0, r12, r7
08000311:   cmp     r0, r2
08000313:   bls.n   0x8000324 <__udivmoddi4+284>
08000315:   adds    r2, r6, r2
08000317:   add.w   r8, r7, #4294967295
0800031b:   bcs.n   0x8000322 <__udivmoddi4+282>
0800031d:   cmp     r0, r2
0800031f:   bhi.w   0x80004e6 <__udivmoddi4+734>
08000323:   mov     r7, r8
08000325:   subs    r2, r2, r0
08000327:   uxth    r4, r4
08000329:   udiv    r0, r2, lr
0800032d:   mls     r2, lr, r0, r2
08000331:   orr.w   r4, r4, r2, lsl #16
08000335:   mul.w   r12, r12, r0
08000339:   cmp     r12, r4
0800033b:   bls.n   0x800034c <__udivmoddi4+324>
0800033d:   adds    r4, r6, r4
0800033f:   add.w   r2, r0, #4294967295
08000343:   bcs.n   0x800034a <__udivmoddi4+322>
08000345:   cmp     r12, r4
08000347:   bhi.w   0x80004e0 <__udivmoddi4+728>
0800034b:   mov     r0, r2
0800034d:   sub.w   r4, r4, r12
08000351:   orr.w   r0, r0, r7, lsl #16
08000355:   b.n     0x800029c <__udivmoddi4+148>
08000357:   rsb     r6, r1, #32
0800035b:   lsls    r3, r1
0800035d:   lsr.w   r12, r2, r6
08000361:   orr.w   r12, r12, r3
08000365:   lsl.w   r4, r7, r1
08000369:   lsr.w   r3, r0, r6
0800036d:   lsrs    r7, r6
0800036f:   mov.w   r9, r12, lsr #16
08000373:   orrs    r3, r4
08000375:   lsl.w   r8, r0, r1
08000379:   uxth.w  lr, r12
0800037d:   udiv    r0, r7, r9
08000381:   lsrs    r4, r3, #16
08000383:   mls     r7, r9, r0, r7
08000387:   orr.w   r4, r4, r7, lsl #16
0800038b:   mul.w   r7, r0, lr
0800038f:   cmp     r7, r4
08000391:   lsl.w   r2, r2, r1
08000395:   bls.n   0x80003ac <__udivmoddi4+420>
08000397:   adds.w  r4, r12, r4
0800039b:   add.w   r10, r0, #4294967295
0800039f:   bcs.w   0x80004d8 <__udivmoddi4+720>
080003a3:   cmp     r7, r4
080003a5:   bls.w   0x80004d8 <__udivmoddi4+720>
080003a9:   subs    r0, #2
080003ab:   add     r4, r12
080003ad:   subs    r4, r4, r7
080003af:   uxth    r7, r3
080003b1:   udiv    r3, r4, r9
080003b5:   mls     r4, r9, r3, r4
080003b9:   orr.w   r4, r7, r4, lsl #16
080003bd:   mul.w   lr, r3, lr
080003c1:   cmp     lr, r4
080003c3:   bls.n   0x80003d8 <__udivmoddi4+464>
080003c5:   adds.w  r4, r12, r4
080003c9:   add.w   r7, r3, #4294967295
080003cd:   bcs.w   0x80004d4 <__udivmoddi4+716>
080003d1:   cmp     lr, r4
080003d3:   bls.n   0x80004d4 <__udivmoddi4+716>
080003d5:   subs    r3, #2
080003d7:   add     r4, r12
080003d9:   orr.w   r0, r3, r0, lsl #16
080003dd:   sub.w   r4, r4, lr
080003e1:   umull   lr, r7, r0, r2
080003e5:   cmp     r4, r7
080003e7:   mov     r3, lr
080003e9:   mov     r9, r7
080003eb:   bcc.n   0x80004b4 <__udivmoddi4+684>
080003ed:   beq.n   0x80004b0 <__udivmoddi4+680>
080003ef:   cbz     r5, 0x8000408 <__udivmoddi4+512>
080003f1:   subs.w  r2, r8, r3
080003f5:   sbc.w   r4, r4, r9
080003f9:   lsl.w   r6, r4, r6
080003fd:   lsr.w   r3, r2, r1
08000401:   orrs    r6, r3
08000403:   lsrs    r4, r1
08000405:   strd    r6, r4, [r5]
08000409:   movs    r1, #0
0800040b:   b.n     0x80002a6 <__udivmoddi4+158>
0800040d:   lsrs    r2, r4, #1
0800040f:   lsrs    r0, r1, #1
08000411:   orr.w   r1, r2, r1, lsl #31
08000415:   lsrs    r3, r1, #16
08000417:   orr.w   r3, r3, r0, lsl #16
0800041b:   uxth    r2, r1
0800041d:   orr.w   r2, r2, r3, lsl #16
08000421:   udiv    r1, r3, r6
08000425:   lsls    r4, r4, #31
08000427:   mov     r12, r6
08000429:   mov     r7, r6
0800042b:   mov     lr, r6
0800042d:   movs    r3, #31
0800042f:   udiv    r0, r0, r6
08000433:   subs    r2, r2, r7
08000435:   orr.w   r1, r1, r0, lsl #16
08000439:   b.n     0x80002fe <__udivmoddi4+246>
0800043b:   mov     r1, r12
0800043d:   b.n     0x8000268 <__udivmoddi4+96>
0800043f:   mov     r0, r2
08000441:   b.n     0x8000294 <__udivmoddi4+140>
08000443:   rsb     r1, r3, #32
08000447:   lsr.w   r2, r0, r1
0800044b:   lsls    r6, r3
0800044d:   lsr.w   r1, r7, r1
08000451:   lsls    r7, r3
08000453:   orrs    r2, r7
08000455:   mov.w   lr, r6, lsr #16
08000459:   uxth.w  r12, r6
0800045d:   udiv    r7, r1, lr
08000461:   mls     r0, lr, r7, r1
08000465:   lsrs    r1, r2, #16
08000467:   orr.w   r1, r1, r0, lsl #16
0800046b:   mul.w   r8, r7, r12
0800046f:   cmp     r8, r1
08000471:   lsl.w   r4, r4, r3
08000475:   bls.n   0x80004ec <__udivmoddi4+740>
08000477:   adds    r1, r6, r1
08000479:   add.w   r0, r7, #4294967295
0800047d:   bcs.n   0x8000482 <__udivmoddi4+634>
0800047f:   cmp     r8, r1
08000481:   bhi.n   0x80004c2 <__udivmoddi4+698>
08000483:   sub.w   r1, r1, r8
08000487:   udiv    r8, r1, lr
0800048b:   mul.w   r7, r8, r12
0800048f:   mls     r1, lr, r8, r1
08000493:   uxth    r2, r2
08000495:   orr.w   r2, r2, r1, lsl #16
08000499:   cmp     r2, r7
0800049b:   bcs.n   0x80004fc <__udivmoddi4+756>
0800049d:   adds    r2, r6, r2
0800049f:   add.w   r1, r8, #4294967295
080004a3:   bcs.n   0x8000432 <__udivmoddi4+554>
080004a5:   cmp     r2, r7
080004a7:   bcs.n   0x8000432 <__udivmoddi4+554>
080004a9:   sub.w   r1, r8, #2
080004ad:   add     r2, r6
080004af:   b.n     0x8000432 <__udivmoddi4+554>
080004b1:   cmp     r8, lr
080004b3:   bcs.n   0x80003ee <__udivmoddi4+486>
080004b5:   subs.w  r3, lr, r2
080004b9:   sbc.w   r7, r7, r12
080004bd:   subs    r0, #1
080004bf:   mov     r9, r7
080004c1:   b.n     0x80003ee <__udivmoddi4+486>
080004c3:   sub.w   r8, r6, r8
080004c7:   add     r1, r8
080004c9:   subs    r0, r7, #2
080004cb:   udiv    r8, r1, lr
080004cf:   mul.w   r7, r8, r12
080004d3:   b.n     0x800048e <__udivmoddi4+646>
080004d5:   mov     r3, r7
080004d7:   b.n     0x80003d8 <__udivmoddi4+464>
080004d9:   mov     r0, r10
080004db:   b.n     0x80003ac <__udivmoddi4+420>
080004dd:   mov     r0, r1
080004df:   b.n     0x80002d8 <__udivmoddi4+208>
080004e1:   add     r4, r6
080004e3:   subs    r0, #2
080004e5:   b.n     0x800034c <__udivmoddi4+324>
080004e7:   subs    r7, #2
080004e9:   add     r2, r6
080004eb:   b.n     0x8000324 <__udivmoddi4+284>
080004ed:   sub.w   r1, r1, r8
080004f1:   mov     r0, r7
080004f3:   udiv    r8, r1, lr
080004f7:   mul.w   r7, r8, r12
080004fb:   b.n     0x800048e <__udivmoddi4+646>
080004fd:   mov     r1, r8
080004ff:   b.n     0x8000432 <__udivmoddi4+554>
          __aeabi_ldiv0:
08000500:   bx      lr
          __aeabi_ldiv0:
08000501:   bx      lr
08000503:   nop     
          main:
08000505:   push    {r7, lr}
08000507:   add     r7, sp, #0
08000509:   bl      0x800090c <HAL_Init>
0800050d:   bl      0x8000544 <SystemClock_Config>
08000511:   bl      0x800066c <MX_GPIO_Init>
08000515:   bl      0x8000618 <MX_USART2_UART_Init>
08000519:   movs    r2, #1
0800051b:   movs    r1, #32
0800051d:   ldr     r0, [pc, #32]   @ (0x8000540 <main+60>)
0800051f:   bl      0x8000f0c <HAL_GPIO_WritePin>
08000523:   mov.w   r0, #1000       @ 0x3e8
08000527:   bl      0x80009f0 <HAL_Delay>
0800052b:   movs    r2, #0
0800052d:   movs    r1, #32
0800052f:   ldr     r0, [pc, #16]   @ (0x8000540 <main+60>)
08000531:   bl      0x8000f0c <HAL_GPIO_WritePin>
08000535:   mov.w   r0, #1000       @ 0x3e8
08000539:   bl      0x80009f0 <HAL_Delay>
100       	  HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, 1);
0800053c:   nop     
0800053e:   b.n     0x8000518 <main+20>
08000540:   movs    r0, r0
08000542:   ands    r2, r0
116       {
          SystemClock_Config:
08000544:   push    {r7, lr}
08000546:   sub     sp, #80 @ 0x50
08000548:   add     r7, sp, #0
117         RCC_OscInitTypeDef RCC_OscInitStruct = {0};
0800054a:   add.w   r3, r7, #32
0800054e:   movs    r2, #48 @ 0x30
08000550:   movs    r1, #0
08000552:   mov     r0, r3
08000554:   bl      0x8001df8 <memset>
118         RCC_ClkInitTypeDef RCC_ClkInitStruct = {0};
08000558:   add.w   r3, r7, #12
0800055c:   movs    r2, #0
0800055e:   str     r2, [r3, #0]
08000560:   str     r2, [r3, #4]
08000562:   str     r2, [r3, #8]
08000564:   str     r2, [r3, #12]
08000566:   str     r2, [r3, #16]
122         __HAL_RCC_PWR_CLK_ENABLE();
08000568:   movs    r3, #0
0800056a:   str     r3, [r7, #8]
0800056c:   ldr     r3, [pc, #160]  @ (0x8000610 <SystemClock_Config+204>)
0800056e:   ldr     r3, [r3, #64]   @ 0x40
08000570:   ldr     r2, [pc, #156]  @ (0x8000610 <SystemClock_Config+204>)
08000572:   orr.w   r3, r3, #268435456      @ 0x10000000
08000576:   str     r3, [r2, #64]   @ 0x40
08000578:   ldr     r3, [pc, #148]  @ (0x8000610 <SystemClock_Config+204>)
0800057a:   ldr     r3, [r3, #64]   @ 0x40
0800057c:   and.w   r3, r3, #268435456      @ 0x10000000
08000580:   str     r3, [r7, #8]
08000582:   ldr     r3, [r7, #8]
123         __HAL_PWR_VOLTAGESCALING_CONFIG(PWR_REGULATOR_VOLTAGE_SCALE1);
08000584:   movs    r3, #0
08000586:   str     r3, [r7, #4]
08000588:   ldr     r3, [pc, #136]  @ (0x8000614 <SystemClock_Config+208>)
0800058a:   ldr     r3, [r3, #0]
0800058c:   ldr     r2, [pc, #132]  @ (0x8000614 <SystemClock_Config+208>)
0800058e:   orr.w   r3, r3, #49152  @ 0xc000
08000592:   str     r3, [r2, #0]
08000594:   ldr     r3, [pc, #124]  @ (0x8000614 <SystemClock_Config+208>)
08000596:   ldr     r3, [r3, #0]
08000598:   and.w   r3, r3, #49152  @ 0xc000
0800059c:   str     r3, [r7, #4]
0800059e:   ldr     r3, [r7, #4]
128         RCC_OscInitStruct.OscillatorType = RCC_OSCILLATORTYPE_HSI;
080005a0:   movs    r3, #2
080005a2:   str     r3, [r7, #32]
129         RCC_OscInitStruct.HSIState = RCC_HSI_ON;
080005a4:   movs    r3, #1
080005a6:   str     r3, [r7, #44]   @ 0x2c
130         RCC_OscInitStruct.HSICalibrationValue = RCC_HSICALIBRATION_DEFAULT;
080005a8:   movs    r3, #16
080005aa:   str     r3, [r7, #48]   @ 0x30
131         RCC_OscInitStruct.PLL.PLLState = RCC_PLL_ON;
080005ac:   movs    r3, #2
080005ae:   str     r3, [r7, #56]   @ 0x38
132         RCC_OscInitStruct.PLL.PLLSource = RCC_PLLSOURCE_HSI;
080005b0:   movs    r3, #0
080005b2:   str     r3, [r7, #60]   @ 0x3c
133         RCC_OscInitStruct.PLL.PLLM = 16;
080005b4:   movs    r3, #16
080005b6:   str     r3, [r7, #64]   @ 0x40
134         RCC_OscInitStruct.PLL.PLLN = 336;
080005b8:   mov.w   r3, #336        @ 0x150
080005bc:   str     r3, [r7, #68]   @ 0x44
135         RCC_OscInitStruct.PLL.PLLP = RCC_PLLP_DIV4;
080005be:   movs    r3, #4
080005c0:   str     r3, [r7, #72]   @ 0x48
136         RCC_OscInitStruct.PLL.PLLQ = 4;
080005c2:   movs    r3, #4
080005c4:   str     r3, [r7, #76]   @ 0x4c
137         if (HAL_RCC_OscConfig(&RCC_OscInitStruct) != HAL_OK)
080005c6:   add.w   r3, r7, #32
080005ca:   mov     r0, r3
080005cc:   bl      0x8000f40 <HAL_RCC_OscConfig>
080005d0:   mov     r3, r0
080005d2:   cmp     r3, #0
080005d4:   beq.n   0x80005da <SystemClock_Config+150>
139           Error_Handler();
080005d6:   bl      0x8000748 <Error_Handler>
144         RCC_ClkInitStruct.ClockType = RCC_CLOCKTYPE_HCLK|RCC_CLOCKTYPE_SYSCLK
080005da:   movs    r3, #15
080005dc:   str     r3, [r7, #12]
146         RCC_ClkInitStruct.SYSCLKSource = RCC_SYSCLKSOURCE_PLLCLK;
080005de:   movs    r3, #2
080005e0:   str     r3, [r7, #16]
147         RCC_ClkInitStruct.AHBCLKDivider = RCC_SYSCLK_DIV1;
080005e2:   movs    r3, #0
080005e4:   str     r3, [r7, #20]
148         RCC_ClkInitStruct.APB1CLKDivider = RCC_HCLK_DIV2;
080005e6:   mov.w   r3, #4096       @ 0x1000
080005ea:   str     r3, [r7, #24]
149         RCC_ClkInitStruct.APB2CLKDivider = RCC_HCLK_DIV1;
080005ec:   movs    r3, #0
080005ee:   str     r3, [r7, #28]
151         if (HAL_RCC_ClockConfig(&RCC_ClkInitStruct, FLASH_LATENCY_2) != HAL_OK)
080005f0:   add.w   r3, r7, #12
080005f4:   movs    r1, #2
080005f6:   mov     r0, r3
080005f8:   bl      0x8001430 <HAL_RCC_ClockConfig>
080005fc:   mov     r3, r0
080005fe:   cmp     r3, #0
08000600:   beq.n   0x8000606 <SystemClock_Config+194>
153           Error_Handler();
08000602:   bl      0x8000748 <Error_Handler>
155       }
08000606:   nop     
08000608:   adds    r7, #80 @ 0x50
0800060a:   mov     sp, r7
0800060c:   pop     {r7, pc}
0800060e:   nop     
08000610:   subs    r0, #0
08000612:   ands    r2, r0
08000614:   strb    r0, [r0, #0]
08000616:   ands    r0, r0
163       {
          MX_USART2_UART_Init:
08000618:   push    {r7, lr}
0800061a:   add     r7, sp, #0
172         huart2.Instance = USART2;
0800061c:   ldr     r3, [pc, #68]   @ (0x8000664 <MX_USART2_UART_Init+76>)
0800061e:   ldr     r2, [pc, #72]   @ (0x8000668 <MX_USART2_UART_Init+80>)
08000620:   str     r2, [r3, #0]
173         huart2.Init.BaudRate = 115200;
08000622:   ldr     r3, [pc, #64]   @ (0x8000664 <MX_USART2_UART_Init+76>)
08000624:   mov.w   r2, #115200     @ 0x1c200
08000628:   str     r2, [r3, #4]
174         huart2.Init.WordLength = UART_WORDLENGTH_8B;
0800062a:   ldr     r3, [pc, #56]   @ (0x8000664 <MX_USART2_UART_Init+76>)
0800062c:   movs    r2, #0
0800062e:   str     r2, [r3, #8]
175         huart2.Init.StopBits = UART_STOPBITS_1;
08000630:   ldr     r3, [pc, #48]   @ (0x8000664 <MX_USART2_UART_Init+76>)
08000632:   movs    r2, #0
08000634:   str     r2, [r3, #12]
176         huart2.Init.Parity = UART_PARITY_NONE;
08000636:   ldr     r3, [pc, #44]   @ (0x8000664 <MX_USART2_UART_Init+76>)
08000638:   movs    r2, #0
0800063a:   str     r2, [r3, #16]
177         huart2.Init.Mode = UART_MODE_TX_RX;
0800063c:   ldr     r3, [pc, #36]   @ (0x8000664 <MX_USART2_UART_Init+76>)
0800063e:   movs    r2, #12
08000640:   str     r2, [r3, #20]
178         huart2.Init.HwFlowCtl = UART_HWCONTROL_NONE;
08000642:   ldr     r3, [pc, #32]   @ (0x8000664 <MX_USART2_UART_Init+76>)
08000644:   movs    r2, #0
08000646:   str     r2, [r3, #24]
179         huart2.Init.OverSampling = UART_OVERSAMPLING_16;
08000648:   ldr     r3, [pc, #24]   @ (0x8000664 <MX_USART2_UART_Init+76>)
0800064a:   movs    r2, #0
0800064c:   str     r2, [r3, #28]
180         if (HAL_UART_Init(&huart2) != HAL_OK)
0800064e:   ldr     r0, [pc, #20]   @ (0x8000664 <MX_USART2_UART_Init+76>)
08000650:   bl      0x8001870 <HAL_UART_Init>
08000654:   mov     r3, r0
08000656:   cmp     r3, #0
08000658:   beq.n   0x800065e <MX_USART2_UART_Init+70>
182           Error_Handler();
0800065a:   bl      0x8000748 <Error_Handler>
188       }
0800065e:   nop     
08000660:   pop     {r7, pc}
08000662:   nop     
08000664:   movs    r0, r5
08000666:   movs    r0, #0
08000668:   add     r0, r0
0800066a:   ands    r0, r0
196       {
          MX_GPIO_Init:
0800066c:   push    {r7, lr}
0800066e:   sub     sp, #40 @ 0x28
08000670:   add     r7, sp, #0
197         GPIO_InitTypeDef GPIO_InitStruct = {0};
08000672:   add.w   r3, r7, #20
08000676:   movs    r2, #0
08000678:   str     r2, [r3, #0]
0800067a:   str     r2, [r3, #4]
0800067c:   str     r2, [r3, #8]
0800067e:   str     r2, [r3, #12]
08000680:   str     r2, [r3, #16]
203         __HAL_RCC_GPIOC_CLK_ENABLE();
08000682:   movs    r3, #0
08000684:   str     r3, [r7, #16]
08000686:   ldr     r3, [pc, #180]  @ (0x800073c <MX_GPIO_Init+208>)
08000688:   ldr     r3, [r3, #48]   @ 0x30
0800068a:   ldr     r2, [pc, #176]  @ (0x800073c <MX_GPIO_Init+208>)
0800068c:   orr.w   r3, r3, #4
08000690:   str     r3, [r2, #48]   @ 0x30
08000692:   ldr     r3, [pc, #168]  @ (0x800073c <MX_GPIO_Init+208>)
08000694:   ldr     r3, [r3, #48]   @ 0x30
08000696:   and.w   r3, r3, #4
0800069a:   str     r3, [r7, #16]
0800069c:   ldr     r3, [r7, #16]
204         __HAL_RCC_GPIOH_CLK_ENABLE();
0800069e:   movs    r3, #0
080006a0:   str     r3, [r7, #12]
080006a2:   ldr     r3, [pc, #152]  @ (0x800073c <MX_GPIO_Init+208>)
080006a4:   ldr     r3, [r3, #48]   @ 0x30
080006a6:   ldr     r2, [pc, #148]  @ (0x800073c <MX_GPIO_Init+208>)
080006a8:   orr.w   r3, r3, #128    @ 0x80
080006ac:   str     r3, [r2, #48]   @ 0x30
080006ae:   ldr     r3, [pc, #140]  @ (0x800073c <MX_GPIO_Init+208>)
080006b0:   ldr     r3, [r3, #48]   @ 0x30
080006b2:   and.w   r3, r3, #128    @ 0x80
080006b6:   str     r3, [r7, #12]
080006b8:   ldr     r3, [r7, #12]
205         __HAL_RCC_GPIOA_CLK_ENABLE();
080006ba:   movs    r3, #0
080006bc:   str     r3, [r7, #8]
080006be:   ldr     r3, [pc, #124]  @ (0x800073c <MX_GPIO_Init+208>)
080006c0:   ldr     r3, [r3, #48]   @ 0x30
080006c2:   ldr     r2, [pc, #120]  @ (0x800073c <MX_GPIO_Init+208>)
080006c4:   orr.w   r3, r3, #1
080006c8:   str     r3, [r2, #48]   @ 0x30
080006ca:   ldr     r3, [pc, #112]  @ (0x800073c <MX_GPIO_Init+208>)
080006cc:   ldr     r3, [r3, #48]   @ 0x30
080006ce:   and.w   r3, r3, #1
080006d2:   str     r3, [r7, #8]
080006d4:   ldr     r3, [r7, #8]
206         __HAL_RCC_GPIOB_CLK_ENABLE();
080006d6:   movs    r3, #0
080006d8:   str     r3, [r7, #4]
080006da:   ldr     r3, [pc, #96]   @ (0x800073c <MX_GPIO_Init+208>)
080006dc:   ldr     r3, [r3, #48]   @ 0x30
080006de:   ldr     r2, [pc, #92]   @ (0x800073c <MX_GPIO_Init+208>)
080006e0:   orr.w   r3, r3, #2
080006e4:   str     r3, [r2, #48]   @ 0x30
080006e6:   ldr     r3, [pc, #84]   @ (0x800073c <MX_GPIO_Init+208>)
080006e8:   ldr     r3, [r3, #48]   @ 0x30
080006ea:   and.w   r3, r3, #2
080006ee:   str     r3, [r7, #4]
080006f0:   ldr     r3, [r7, #4]
209         HAL_GPIO_WritePin(LD2_GPIO_Port, LD2_Pin, GPIO_PIN_RESET);
080006f2:   movs    r2, #0
080006f4:   movs    r1, #32
080006f6:   ldr     r0, [pc, #72]   @ (0x8000740 <MX_GPIO_Init+212>)
080006f8:   bl      0x8000f0c <HAL_GPIO_WritePin>
212         GPIO_InitStruct.Pin = B1_Pin;
080006fc:   mov.w   r3, #8192       @ 0x2000
08000700:   str     r3, [r7, #20]
213         GPIO_InitStruct.Mode = GPIO_MODE_IT_FALLING;
08000702:   mov.w   r3, #2162688    @ 0x210000
08000706:   str     r3, [r7, #24]
214         GPIO_InitStruct.Pull = GPIO_NOPULL;
08000708:   movs    r3, #0
0800070a:   str     r3, [r7, #28]
215         HAL_GPIO_Init(B1_GPIO_Port, &GPIO_InitStruct);
0800070c:   add.w   r3, r7, #20
08000710:   mov     r1, r3
08000712:   ldr     r0, [pc, #48]   @ (0x8000744 <MX_GPIO_Init+216>)
08000714:   bl      0x8000c04 <HAL_GPIO_Init>
218         GPIO_InitStruct.Pin = LD2_Pin;
08000718:   movs    r3, #32
0800071a:   str     r3, [r7, #20]
219         GPIO_InitStruct.Mode = GPIO_MODE_OUTPUT_PP;
0800071c:   movs    r3, #1
0800071e:   str     r3, [r7, #24]
220         GPIO_InitStruct.Pull = GPIO_NOPULL;
08000720:   movs    r3, #0
08000722:   str     r3, [r7, #28]
221         GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_LOW;
08000724:   movs    r3, #0
08000726:   str     r3, [r7, #32]
222         HAL_GPIO_Init(LD2_GPIO_Port, &GPIO_InitStruct);
08000728:   add.w   r3, r7, #20
0800072c:   mov     r1, r3
0800072e:   ldr     r0, [pc, #16]   @ (0x8000740 <MX_GPIO_Init+212>)
08000730:   bl      0x8000c04 <HAL_GPIO_Init>
227       }
08000734:   nop     
08000736:   adds    r7, #40 @ 0x28
08000738:   mov     sp, r7
0800073a:   pop     {r7, pc}
0800073c:   subs    r0, #0
0800073e:   ands    r2, r0
08000740:   movs    r0, r0
08000742:   ands    r2, r0
08000744:   lsrs    r0, r0, #32
08000746:   ands    r2, r0
238       {
          Error_Handler:
08000748:   push    {r7}
0800074a:   add     r7, sp, #0
 962        __ASM volatile ("cpsid i" : : : "memory");
0800074c:   cpsid   i
 963      }
0800074e:   nop     
242         while (1)
08000750:   nop     
08000752:   b.n     0x8000750 <Error_Handler+8>
          HAL_MspInit:
08000754:   push    {r7, lr}
08000756:   sub     sp, #8
08000758:   add     r7, sp, #0
 69         __HAL_RCC_SYSCFG_CLK_ENABLE();
0800075a:   movs    r3, #0
0800075c:   str     r3, [r7, #4]
0800075e:   ldr     r3, [pc, #64]   @ (0x80007a0 <HAL_MspInit+76>)
08000760:   ldr     r3, [r3, #68]   @ 0x44
08000762:   ldr     r2, [pc, #60]   @ (0x80007a0 <HAL_MspInit+76>)
08000764:   orr.w   r3, r3, #16384  @ 0x4000
08000768:   str     r3, [r2, #68]   @ 0x44
0800076a:   ldr     r3, [pc, #52]   @ (0x80007a0 <HAL_MspInit+76>)
0800076c:   ldr     r3, [r3, #68]   @ 0x44
0800076e:   and.w   r3, r3, #16384  @ 0x4000
08000772:   str     r3, [r7, #4]
08000774:   ldr     r3, [r7, #4]
 70         __HAL_RCC_PWR_CLK_ENABLE();
08000776:   movs    r3, #0
08000778:   str     r3, [r7, #0]
0800077a:   ldr     r3, [pc, #36]   @ (0x80007a0 <HAL_MspInit+76>)
0800077c:   ldr     r3, [r3, #64]   @ 0x40
0800077e:   ldr     r2, [pc, #32]   @ (0x80007a0 <HAL_MspInit+76>)
08000780:   orr.w   r3, r3, #268435456      @ 0x10000000
08000784:   str     r3, [r2, #64]   @ 0x40
08000786:   ldr     r3, [pc, #24]   @ (0x80007a0 <HAL_MspInit+76>)
08000788:   ldr     r3, [r3, #64]   @ 0x40
0800078a:   and.w   r3, r3, #268435456      @ 0x10000000
0800078e:   str     r3, [r7, #0]
08000790:   ldr     r3, [r7, #0]
 72         HAL_NVIC_SetPriorityGrouping(NVIC_PRIORITYGROUP_0);
08000792:   movs    r0, #7
08000794:   bl      0x8000b9c <HAL_NVIC_SetPriorityGrouping>
 79       }
08000798:   nop     
0800079a:   adds    r7, #8
0800079c:   mov     sp, r7
0800079e:   pop     {r7, pc}
080007a0:   subs    r0, #0
080007a2:   ands    r2, r0
 88       {
          HAL_UART_MspInit:
080007a4:   push    {r7, lr}
080007a6:   sub     sp, #40 @ 0x28
080007a8:   add     r7, sp, #0
080007aa:   str     r0, [r7, #4]
 89         GPIO_InitTypeDef GPIO_InitStruct = {0};
080007ac:   add.w   r3, r7, #20
080007b0:   movs    r2, #0
080007b2:   str     r2, [r3, #0]
080007b4:   str     r2, [r3, #4]
080007b6:   str     r2, [r3, #8]
080007b8:   str     r2, [r3, #12]
080007ba:   str     r2, [r3, #16]
 90         if(huart->Instance==USART2)
080007bc:   ldr     r3, [r7, #4]
080007be:   ldr     r3, [r3, #0]
080007c0:   ldr     r2, [pc, #100]  @ (0x8000828 <HAL_UART_MspInit+132>)
080007c2:   cmp     r3, r2
080007c4:   bne.n   0x800081e <HAL_UART_MspInit+122>
 96           __HAL_RCC_USART2_CLK_ENABLE();
080007c6:   movs    r3, #0
080007c8:   str     r3, [r7, #16]
080007ca:   ldr     r3, [pc, #96]   @ (0x800082c <HAL_UART_MspInit+136>)
080007cc:   ldr     r3, [r3, #64]   @ 0x40
080007ce:   ldr     r2, [pc, #92]   @ (0x800082c <HAL_UART_MspInit+136>)
080007d0:   orr.w   r3, r3, #131072 @ 0x20000
080007d4:   str     r3, [r2, #64]   @ 0x40
080007d6:   ldr     r3, [pc, #84]   @ (0x800082c <HAL_UART_MspInit+136>)
080007d8:   ldr     r3, [r3, #64]   @ 0x40
080007da:   and.w   r3, r3, #131072 @ 0x20000
080007de:   str     r3, [r7, #16]
080007e0:   ldr     r3, [r7, #16]
 98           __HAL_RCC_GPIOA_CLK_ENABLE();
080007e2:   movs    r3, #0
080007e4:   str     r3, [r7, #12]
080007e6:   ldr     r3, [pc, #68]   @ (0x800082c <HAL_UART_MspInit+136>)
080007e8:   ldr     r3, [r3, #48]   @ 0x30
080007ea:   ldr     r2, [pc, #64]   @ (0x800082c <HAL_UART_MspInit+136>)
080007ec:   orr.w   r3, r3, #1
080007f0:   str     r3, [r2, #48]   @ 0x30
080007f2:   ldr     r3, [pc, #56]   @ (0x800082c <HAL_UART_MspInit+136>)
080007f4:   ldr     r3, [r3, #48]   @ 0x30
080007f6:   and.w   r3, r3, #1
080007fa:   str     r3, [r7, #12]
080007fc:   ldr     r3, [r7, #12]
103           GPIO_InitStruct.Pin = USART_TX_Pin|USART_RX_Pin;
080007fe:   movs    r3, #12
08000800:   str     r3, [r7, #20]
104           GPIO_InitStruct.Mode = GPIO_MODE_AF_PP;
08000802:   movs    r3, #2
08000804:   str     r3, [r7, #24]
105           GPIO_InitStruct.Pull = GPIO_NOPULL;
08000806:   movs    r3, #0
08000808:   str     r3, [r7, #28]
106           GPIO_InitStruct.Speed = GPIO_SPEED_FREQ_VERY_HIGH;
0800080a:   movs    r3, #3
0800080c:   str     r3, [r7, #32]
107           GPIO_InitStruct.Alternate = GPIO_AF7_USART2;
0800080e:   movs    r3, #7
08000810:   str     r3, [r7, #36]   @ 0x24
108           HAL_GPIO_Init(GPIOA, &GPIO_InitStruct);
08000812:   add.w   r3, r7, #20
08000816:   mov     r1, r3
08000818:   ldr     r0, [pc, #20]   @ (0x8000830 <HAL_UART_MspInit+140>)
0800081a:   bl      0x8000c04 <HAL_GPIO_Init>
116       }
0800081e:   nop     
08000820:   adds    r7, #40 @ 0x28
08000822:   mov     sp, r7
08000824:   pop     {r7, pc}
08000826:   nop     
08000828:   add     r0, r0
0800082a:   ands    r0, r0
0800082c:   subs    r0, #0
0800082e:   ands    r2, r0
08000830:   movs    r0, r0
08000832:   ands    r2, r0
          NMI_Handler:
08000834:   push    {r7}
08000836:   add     r7, sp, #0
 75          while (1)
08000838:   nop     
0800083a:   b.n     0x8000838 <NMI_Handler+4>
 85       {
          HardFault_Handler:
0800083c:   push    {r7}
0800083e:   add     r7, sp, #0
 89         while (1)
08000840:   nop     
08000842:   b.n     0x8000840 <HardFault_Handler+4>
100       {
          MemManage_Handler:
08000844:   push    {r7}
08000846:   add     r7, sp, #0
104         while (1)
08000848:   nop     
0800084a:   b.n     0x8000848 <MemManage_Handler+4>
115       {
          BusFault_Handler:
0800084c:   push    {r7}
0800084e:   add     r7, sp, #0
119         while (1)
08000850:   nop     
08000852:   b.n     0x8000850 <BusFault_Handler+4>
130       {
          UsageFault_Handler:
08000854:   push    {r7}
08000856:   add     r7, sp, #0
134         while (1)
08000858:   nop     
0800085a:   b.n     0x8000858 <UsageFault_Handler+4>
145       {
          SVC_Handler:
0800085c:   push    {r7}
0800085e:   add     r7, sp, #0
152       }
08000860:   nop     
08000862:   mov     sp, r7
08000864:   ldr.w   r7, [sp], #4
08000868:   bx      lr
158       {
          DebugMon_Handler:
0800086a:   push    {r7}
0800086c:   add     r7, sp, #0
165       }
0800086e:   nop     
08000870:   mov     sp, r7
08000872:   ldr.w   r7, [sp], #4
08000876:   bx      lr
171       {
          PendSV_Handler:
08000878:   push    {r7}
0800087a:   add     r7, sp, #0
178       }
0800087c:   nop     
0800087e:   mov     sp, r7
08000880:   ldr.w   r7, [sp], #4
08000884:   bx      lr
184       {
          SysTick_Handler:
08000886:   push    {r7, lr}
08000888:   add     r7, sp, #0
188         HAL_IncTick();
0800088a:   bl      0x80009b0 <HAL_IncTick>
192       }
0800088e:   nop     
08000890:   pop     {r7, pc}
08000892:   movs    r0, r0
          SystemInit:
08000894:   push    {r7}
08000896:   add     r7, sp, #0
08000898:   ldr     r3, [pc, #24]   @ (0x80008b4 <SystemInit+32>)
0800089a:   ldr.w   r3, [r3, #136]  @ 0x88
0800089e:   ldr     r2, [pc, #20]   @ (0x80008b4 <SystemInit+32>)
080008a0:   orr.w   r3, r3, #15728640       @ 0xf00000
080008a4:   str.w   r3, [r2, #136]  @ 0x88
080008a8:   nop     
080008aa:   mov     sp, r7
080008ac:   ldr.w   r7, [sp], #4
080008b0:   bx      lr
080008b2:   nop     
080008b4:           @ <UNDEFINED> instruction: 0xed00e000
          Reset_Handler:
080008b8:   ldr.w   sp, [pc, #52]   @ 0x80008f0 <Reset_Handler+56>
080008bc:   bl      0x8000894 <SystemInit>
080008c0:   ldr     r0, [pc, #48]   @ (0x80008f4 <LoopFillZerobss+18>)
080008c2:   ldr     r1, [pc, #52]   @ (0x80008f8 <LoopFillZerobss+22>)
080008c4:   ldr     r2, [pc, #52]   @ (0x80008fc <LoopFillZerobss+26>)
080008c6:   movs    r3, #0
080008c8:   b.n     0x80008d0 <Reset_Handler+24>
080008ca:   ldr     r4, [r2, r3]
080008cc:   str     r4, [r0, r3]
080008ce:   adds    r3, #4
080008d0:   adds    r4, r0, r3
080008d2:   cmp     r4, r1
080008d4:   bcc.n   0x80008ca <Reset_Handler+18>
080008d6:   ldr     r2, [pc, #40]   @ (0x8000900 <LoopFillZerobss+30>)
080008d8:   ldr     r4, [pc, #40]   @ (0x8000904 <LoopFillZerobss+34>)
080008da:   movs    r3, #0
080008dc:   b.n     0x80008e2 <Reset_Handler+42>
080008de:   str     r3, [r2, #0]
080008e0:   adds    r2, #4
080008e2:   cmp     r2, r4
080008e4:   bcc.n   0x80008de <Reset_Handler+38>
080008e6:   bl      0x8001e08 <__libc_init_array>
080008ea:   bl      0x8000504 <main>
080008ee:   bx      lr
080008f0:   movs    r0, r0
080008f2:   movs    r0, #2
080008f4:   movs    r0, r0
080008f6:   movs    r0, #0
080008f8:   movs    r4, r1
080008fa:   movs    r0, #0
080008fc:   subs    r0, r2, #2
080008fe:   lsrs    r0, r0, #32
08000900:   movs    r4, r1
08000902:   movs    r0, #0
08000904:   lsls    r4, r6, #1
08000906:   movs    r0, #0
          WWDG_IRQHandler:
08000908:   b.n     0x8000908 <WWDG_IRQHandler>
0800090a:   movs    r0, r0
          HAL_Init:
0800090c:   push    {r7, lr}
0800090e:   add     r7, sp, #0
08000910:   ldr     r3, [pc, #56]   @ (0x800094c <HAL_Init+64>)
08000912:   ldr     r3, [r3, #0]
08000914:   ldr     r2, [pc, #52]   @ (0x800094c <HAL_Init+64>)
08000916:   orr.w   r3, r3, #512    @ 0x200
0800091a:   str     r3, [r2, #0]
0800091c:   ldr     r3, [pc, #44]   @ (0x800094c <HAL_Init+64>)
0800091e:   ldr     r3, [r3, #0]
08000920:   ldr     r2, [pc, #40]   @ (0x800094c <HAL_Init+64>)
08000922:   orr.w   r3, r3, #1024   @ 0x400
08000926:   str     r3, [r2, #0]
08000928:   ldr     r3, [pc, #32]   @ (0x800094c <HAL_Init+64>)
0800092a:   ldr     r3, [r3, #0]
0800092c:   ldr     r2, [pc, #28]   @ (0x800094c <HAL_Init+64>)
0800092e:   orr.w   r3, r3, #256    @ 0x100
08000932:   str     r3, [r2, #0]
08000934:   movs    r0, #3
08000936:   bl      0x8000b9c <HAL_NVIC_SetPriorityGrouping>
0800093a:   movs    r0, #0
0800093c:   bl      0x8000950 <HAL_InitTick>
08000940:   bl      0x8000754 <HAL_MspInit>
08000944:   movs    r3, #0
183       }
08000946:   mov     r0, r3
08000948:   pop     {r7, pc}
0800094a:   nop     
0800094c:   subs    r4, #0
0800094e:   ands    r2, r0
254       {
          HAL_InitTick:
08000950:   push    {r7, lr}
08000952:   sub     sp, #8
08000954:   add     r7, sp, #0
08000956:   str     r0, [r7, #4]
256         if (HAL_SYSTICK_Config(SystemCoreClock / (1000U / uwTickFreq)) > 0U)
08000958:   ldr     r3, [pc, #72]   @ (0x80009a4 <HAL_InitTick+84>)
0800095a:   ldr     r2, [r3, #0]
0800095c:   ldr     r3, [pc, #72]   @ (0x80009a8 <HAL_InitTick+88>)
0800095e:   ldrb    r3, [r3, #0]
08000960:   mov     r1, r3
08000962:   mov.w   r3, #1000       @ 0x3e8
08000966:   udiv    r3, r3, r1
0800096a:   udiv    r3, r2, r3
0800096e:   mov     r0, r3
08000970:   bl      0x8000bea <HAL_SYSTICK_Config>
08000974:   mov     r3, r0
08000976:   cmp     r3, #0
08000978:   beq.n   0x800097e <HAL_InitTick+46>
258           return HAL_ERROR;
0800097a:   movs    r3, #1
0800097c:   b.n     0x800099c <HAL_InitTick+76>
262         if (TickPriority < (1UL << __NVIC_PRIO_BITS))
0800097e:   ldr     r3, [r7, #4]
08000980:   cmp     r3, #15
08000982:   bhi.n   0x800099a <HAL_InitTick+74>
264           HAL_NVIC_SetPriority(SysTick_IRQn, TickPriority, 0U);
08000984:   movs    r2, #0
08000986:   ldr     r1, [r7, #4]
08000988:   mov.w   r0, #4294967295
0800098c:   bl      0x8000bb2 <HAL_NVIC_SetPriority>
265           uwTickPrio = TickPriority;
08000990:   ldr     r2, [pc, #24]   @ (0x80009ac <HAL_InitTick+92>)
08000992:   ldr     r3, [r7, #4]
08000994:   str     r3, [r2, #0]
273         return HAL_OK;
08000996:   movs    r3, #0
08000998:   b.n     0x800099c <HAL_InitTick+76>
269           return HAL_ERROR;
0800099a:   movs    r3, #1
274       }
0800099c:   mov     r0, r3
0800099e:   adds    r7, #8
080009a0:   mov     sp, r7
080009a2:   pop     {r7, pc}
080009a4:   movs    r0, r0
080009a6:   movs    r0, #0
080009a8:   movs    r0, r1
080009aa:   movs    r0, #0
080009ac:   movs    r4, r0
080009ae:   movs    r0, #0
313       {
          HAL_IncTick:
080009b0:   push    {r7}
080009b2:   add     r7, sp, #0
314         uwTick += uwTickFreq;
080009b4:   ldr     r3, [pc, #24]   @ (0x80009d0 <HAL_IncTick+32>)
080009b6:   ldrb    r3, [r3, #0]
080009b8:   mov     r2, r3
080009ba:   ldr     r3, [pc, #24]   @ (0x80009d4 <HAL_IncTick+36>)
080009bc:   ldr     r3, [r3, #0]
080009be:   add     r3, r2
080009c0:   ldr     r2, [pc, #16]   @ (0x80009d4 <HAL_IncTick+36>)
080009c2:   str     r3, [r2, #0]
315       }
080009c4:   nop     
080009c6:   mov     sp, r7
080009c8:   ldr.w   r7, [sp], #4
080009cc:   bx      lr
080009ce:   nop     
080009d0:   movs    r0, r1
080009d2:   movs    r0, #0
080009d4:   lsls    r0, r6, #1
080009d6:   movs    r0, #0
324       {
          HAL_GetTick:
080009d8:   push    {r7}
080009da:   add     r7, sp, #0
325         return uwTick;
080009dc:   ldr     r3, [pc, #12]   @ (0x80009ec <HAL_GetTick+20>)
080009de:   ldr     r3, [r3, #0]
326       }
080009e0:   mov     r0, r3
080009e2:   mov     sp, r7
080009e4:   ldr.w   r7, [sp], #4
080009e8:   bx      lr
080009ea:   nop     
080009ec:   lsls    r0, r6, #1
080009ee:   movs    r0, #0
391       {
          HAL_Delay:
080009f0:   push    {r7, lr}
080009f2:   sub     sp, #16
080009f4:   add     r7, sp, #0
080009f6:   str     r0, [r7, #4]
392         uint32_t tickstart = HAL_GetTick();
080009f8:   bl      0x80009d8 <HAL_GetTick>
080009fc:   str     r0, [r7, #8]
393         uint32_t wait = Delay;
080009fe:   ldr     r3, [r7, #4]
08000a00:   str     r3, [r7, #12]
396         if (wait < HAL_MAX_DELAY)
08000a02:   ldr     r3, [r7, #12]
08000a04:   cmp.w   r3, #4294967295
08000a08:   beq.n   0x8000a16 <HAL_Delay+38>
398           wait += (uint32_t)(uwTickFreq);
08000a0a:   ldr     r3, [pc, #40]   @ (0x8000a34 <HAL_Delay+68>)
08000a0c:   ldrb    r3, [r3, #0]
08000a0e:   mov     r2, r3
08000a10:   ldr     r3, [r7, #12]
08000a12:   add     r3, r2
08000a14:   str     r3, [r7, #12]
401         while((HAL_GetTick() - tickstart) < wait)
08000a16:   nop     
08000a18:   bl      0x80009d8 <HAL_GetTick>
08000a1c:   mov     r2, r0
08000a1e:   ldr     r3, [r7, #8]
08000a20:   subs    r3, r2, r3
08000a22:   ldr     r2, [r7, #12]
08000a24:   cmp     r2, r3
08000a26:   bhi.n   0x8000a18 <HAL_Delay+40>
404       }
08000a28:   nop     
08000a2a:   nop     
08000a2c:   adds    r7, #16
08000a2e:   mov     sp, r7
08000a30:   pop     {r7, pc}
08000a32:   nop     
08000a34:   movs    r0, r1
08000a36:   movs    r0, #0
          __NVIC_SetPriorityGrouping:
08000a38:   push    {r7}
08000a3a:   sub     sp, #20
08000a3c:   add     r7, sp, #0
08000a3e:   str     r0, [r7, #4]
1656        uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);             /* only values 0..7 are used          */
08000a40:   ldr     r3, [r7, #4]
08000a42:   and.w   r3, r3, #7
08000a46:   str     r3, [r7, #12]
1658        reg_value  =  SCB->AIRCR;                                                   /* read old register configuration    */
08000a48:   ldr     r3, [pc, #48]   @ (0x8000a7c <__NVIC_SetPriorityGrouping+68>)
08000a4a:   ldr     r3, [r3, #12]
08000a4c:   str     r3, [r7, #8]
1659        reg_value &= ~((uint32_t)(SCB_AIRCR_VECTKEY_Msk | SCB_AIRCR_PRIGROUP_Msk)); /* clear bits to change               */
08000a4e:   ldr     r2, [r7, #8]
08000a50:   movw    r3, #63743      @ 0xf8ff
08000a54:   ands    r3, r2
08000a56:   str     r3, [r7, #8]
1662                      (PriorityGroupTmp << SCB_AIRCR_PRIGROUP_Pos)  );              /* Insert write key and priority group */
08000a58:   ldr     r3, [r7, #12]
08000a5a:   lsls    r2, r3, #8
1661                      ((uint32_t)0x5FAUL << SCB_AIRCR_VECTKEY_Pos) |
08000a5c:   ldr     r3, [r7, #8]
08000a5e:   orrs    r3, r2
1660        reg_value  =  (reg_value                                   |
08000a60:   orr.w   r3, r3, #100139008      @ 0x5f80000
08000a64:   orr.w   r3, r3, #131072 @ 0x20000
08000a68:   str     r3, [r7, #8]
1663        SCB->AIRCR =  reg_value;
08000a6a:   ldr     r2, [pc, #16]   @ (0x8000a7c <__NVIC_SetPriorityGrouping+68>)
08000a6c:   ldr     r3, [r7, #8]
08000a6e:   str     r3, [r2, #12]
1664      }
08000a70:   nop     
08000a72:   adds    r7, #20
08000a74:   mov     sp, r7
08000a76:   ldr.w   r7, [sp], #4
08000a7a:   bx      lr
08000a7c:           @ <UNDEFINED> instruction: 0xed00e000
1673      {
          __NVIC_GetPriorityGrouping:
08000a80:   push    {r7}
08000a82:   add     r7, sp, #0
1674        return ((uint32_t)((SCB->AIRCR & SCB_AIRCR_PRIGROUP_Msk) >> SCB_AIRCR_PRIGROUP_Pos));
08000a84:   ldr     r3, [pc, #16]   @ (0x8000a98 <__NVIC_GetPriorityGrouping+24>)
08000a86:   ldr     r3, [r3, #12]
08000a88:   lsrs    r3, r3, #8
08000a8a:   and.w   r3, r3, #7
1675      }
08000a8e:   mov     r0, r3
08000a90:   mov     sp, r7
08000a92:   ldr.w   r7, [sp], #4
08000a96:   bx      lr
08000a98:           @ <UNDEFINED> instruction: 0xed00e000
1815      {
          __NVIC_SetPriority:
08000a9c:   push    {r7}
08000a9e:   sub     sp, #12
08000aa0:   add     r7, sp, #0
08000aa2:   mov     r3, r0
08000aa4:   str     r1, [r7, #0]
08000aa6:   strb    r3, [r7, #7]
1816        if ((int32_t)(IRQn) >= 0)
08000aa8:   ldrsb.w r3, [r7, #7]
08000aac:   cmp     r3, #0
08000aae:   blt.n   0x8000ac6 <__NVIC_SetPriority+42>
1818          NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
08000ab0:   ldr     r3, [r7, #0]
08000ab2:   uxtb    r2, r3
08000ab4:   ldr     r1, [pc, #48]   @ (0x8000ae8 <__NVIC_SetPriority+76>)
08000ab6:   ldrsb.w r3, [r7, #7]
08000aba:   lsls    r2, r2, #4
08000abc:   uxtb    r2, r2
08000abe:   add     r3, r1
08000ac0:   strb.w  r2, [r3, #768]  @ 0x300
1824      }
08000ac4:   b.n     0x8000adc <__NVIC_SetPriority+64>
1822          SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
08000ac6:   ldr     r3, [r7, #0]
08000ac8:   uxtb    r2, r3
08000aca:   ldr     r1, [pc, #32]   @ (0x8000aec <__NVIC_SetPriority+80>)
08000acc:   ldrb    r3, [r7, #7]
08000ace:   and.w   r3, r3, #15
08000ad2:   subs    r3, #4
08000ad4:   lsls    r2, r2, #4
08000ad6:   uxtb    r2, r2
08000ad8:   add     r3, r1
08000ada:   strb    r2, [r3, #24]
1824      }
08000adc:   nop     
08000ade:   adds    r7, #12
08000ae0:   mov     sp, r7
08000ae2:   ldr.w   r7, [sp], #4
08000ae6:   bx      lr
08000ae8:   b.n     0x8000cec <HAL_GPIO_Init+232>
08000aea:   b.n     0x8000aee <__NVIC_SetPriority+82>
08000aec:           @ <UNDEFINED> instruction: 0xed00e000
1862      {
          NVIC_EncodePriority:
08000af0:   push    {r7}
08000af2:   sub     sp, #36 @ 0x24
08000af4:   add     r7, sp, #0
08000af6:   str     r0, [r7, #12]
08000af8:   str     r1, [r7, #8]
08000afa:   str     r2, [r7, #4]
1863        uint32_t PriorityGroupTmp = (PriorityGroup & (uint32_t)0x07UL);   /* only values 0..7 are used          */
08000afc:   ldr     r3, [r7, #12]
08000afe:   and.w   r3, r3, #7
08000b02:   str     r3, [r7, #28]
1867        PreemptPriorityBits = ((7UL - PriorityGroupTmp) > (uint32_t)(__NVIC_PRIO_BITS)) ? (uint32_t)(__NVIC_PRIO_BITS) : (uint32_t)(7UL - PriorityGroupTmp);
08000b04:   ldr     r3, [r7, #28]
08000b06:   rsb     r3, r3, #7
08000b0a:   cmp     r3, #4
08000b0c:   it      cs
08000b0e:   movcs   r3, #4
08000b10:   str     r3, [r7, #24]
1868        SubPriorityBits     = ((PriorityGroupTmp + (uint32_t)(__NVIC_PRIO_BITS)) < (uint32_t)7UL) ? (uint32_t)0UL : (uint32_t)((PriorityGroupTmp - 7UL) + (uint32_t)(__NVIC_PRIO_BITS));
08000b12:   ldr     r3, [r7, #28]
08000b14:   adds    r3, #4
08000b16:   cmp     r3, #6
08000b18:   bls.n   0x8000b20 <NVIC_EncodePriority+48>
08000b1a:   ldr     r3, [r7, #28]
08000b1c:   subs    r3, #3
08000b1e:   b.n     0x8000b22 <NVIC_EncodePriority+50>
08000b20:   movs    r3, #0
08000b22:   str     r3, [r7, #20]
1871                 ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
08000b24:   mov.w   r2, #4294967295
08000b28:   ldr     r3, [r7, #24]
08000b2a:   lsl.w   r3, r2, r3
08000b2e:   mvns    r2, r3
08000b30:   ldr     r3, [r7, #8]
08000b32:   ands    r2, r3
08000b34:   ldr     r3, [r7, #20]
08000b36:   lsls    r2, r3
1872                 ((SubPriority     & (uint32_t)((1UL << (SubPriorityBits    )) - 1UL)))
08000b38:   mov.w   r1, #4294967295
08000b3c:   ldr     r3, [r7, #20]
08000b3e:   lsl.w   r3, r1, r3
08000b42:   mvns    r1, r3
08000b44:   ldr     r3, [r7, #4]
08000b46:   ands    r3, r1
1871                 ((PreemptPriority & (uint32_t)((1UL << (PreemptPriorityBits)) - 1UL)) << SubPriorityBits) |
08000b48:   orrs    r3, r2
1874      }
08000b4a:   mov     r0, r3
08000b4c:   adds    r7, #36 @ 0x24
08000b4e:   mov     sp, r7
08000b50:   ldr.w   r7, [sp], #4
08000b54:   bx      lr
08000b56:   movs    r0, r0
2023      {
          SysTick_Config:
08000b58:   push    {r7, lr}
08000b5a:   sub     sp, #8
08000b5c:   add     r7, sp, #0
08000b5e:   str     r0, [r7, #4]
2024        if ((ticks - 1UL) > SysTick_LOAD_RELOAD_Msk)
08000b60:   ldr     r3, [r7, #4]
08000b62:   subs    r3, #1
08000b64:   cmp.w   r3, #16777216   @ 0x1000000
08000b68:   bcc.n   0x8000b6e <SysTick_Config+22>
2026          return (1UL);                                                   /* Reload value impossible */
08000b6a:   movs    r3, #1
08000b6c:   b.n     0x8000b8e <SysTick_Config+54>
2029        SysTick->LOAD  = (uint32_t)(ticks - 1UL);                         /* set reload register */
08000b6e:   ldr     r2, [pc, #40]   @ (0x8000b98 <SysTick_Config+64>)
08000b70:   ldr     r3, [r7, #4]
08000b72:   subs    r3, #1
08000b74:   str     r3, [r2, #4]
2030        NVIC_SetPriority (SysTick_IRQn, (1UL << __NVIC_PRIO_BITS) - 1UL); /* set Priority for Systick Interrupt */
08000b76:   movs    r1, #15
08000b78:   mov.w   r0, #4294967295
08000b7c:   bl      0x8000a9c <__NVIC_SetPriority>
2031        SysTick->VAL   = 0UL;                                             /* Load the SysTick Counter Value */
08000b80:   ldr     r3, [pc, #20]   @ (0x8000b98 <SysTick_Config+64>)
08000b82:   movs    r2, #0
08000b84:   str     r2, [r3, #8]
2032        SysTick->CTRL  = SysTick_CTRL_CLKSOURCE_Msk |
08000b86:   ldr     r3, [pc, #16]   @ (0x8000b98 <SysTick_Config+64>)
08000b88:   movs    r2, #7
08000b8a:   str     r2, [r3, #0]
2035        return (0UL);                                                     /* Function successful */
08000b8c:   movs    r3, #0
2036      }
08000b8e:   mov     r0, r3
08000b90:   adds    r7, #8
08000b92:   mov     sp, r7
08000b94:   pop     {r7, pc}
08000b96:   nop     
08000b98:   b.n     0x8000bbc <HAL_NVIC_SetPriority+10>
08000b9a:   b.n     0x8000b9e <HAL_NVIC_SetPriorityGrouping+2>
          HAL_NVIC_SetPriorityGrouping:
08000b9c:   push    {r7, lr}
08000b9e:   sub     sp, #8
08000ba0:   add     r7, sp, #0
08000ba2:   str     r0, [r7, #4]
147         NVIC_SetPriorityGrouping(PriorityGroup);
08000ba4:   ldr     r0, [r7, #4]
08000ba6:   bl      0x8000a38 <__NVIC_SetPriorityGrouping>
148       }
08000baa:   nop     
08000bac:   adds    r7, #8
08000bae:   mov     sp, r7
08000bb0:   pop     {r7, pc}
164       { 
          HAL_NVIC_SetPriority:
08000bb2:   push    {r7, lr}
08000bb4:   sub     sp, #24
08000bb6:   add     r7, sp, #0
08000bb8:   mov     r3, r0
08000bba:   str     r1, [r7, #8]
08000bbc:   str     r2, [r7, #4]
08000bbe:   strb    r3, [r7, #15]
165         uint32_t prioritygroup = 0x00U;
08000bc0:   movs    r3, #0
08000bc2:   str     r3, [r7, #20]
171         prioritygroup = NVIC_GetPriorityGrouping();
08000bc4:   bl      0x8000a80 <__NVIC_GetPriorityGrouping>
08000bc8:   str     r0, [r7, #20]
173         NVIC_SetPriority(IRQn, NVIC_EncodePriority(prioritygroup, PreemptPriority, SubPriority));
08000bca:   ldr     r2, [r7, #4]
08000bcc:   ldr     r1, [r7, #8]
08000bce:   ldr     r0, [r7, #20]
08000bd0:   bl      0x8000af0 <NVIC_EncodePriority>
08000bd4:   mov     r2, r0
08000bd6:   ldrsb.w r3, [r7, #15]
08000bda:   mov     r1, r2
08000bdc:   mov     r0, r3
08000bde:   bl      0x8000a9c <__NVIC_SetPriority>
174       }
08000be2:   nop     
08000be4:   adds    r7, #24
08000be6:   mov     sp, r7
08000be8:   pop     {r7, pc}
228       {
          HAL_SYSTICK_Config:
08000bea:   push    {r7, lr}
08000bec:   sub     sp, #8
08000bee:   add     r7, sp, #0
08000bf0:   str     r0, [r7, #4]
229          return SysTick_Config(TicksNumb);
08000bf2:   ldr     r0, [r7, #4]
08000bf4:   bl      0x8000b58 <SysTick_Config>
08000bf8:   mov     r3, r0
230       }
08000bfa:   mov     r0, r3
08000bfc:   adds    r7, #8
08000bfe:   mov     sp, r7
08000c00:   pop     {r7, pc}
08000c02:   movs    r0, r0
          HAL_GPIO_Init:
08000c04:   push    {r7}
08000c06:   sub     sp, #36 @ 0x24
08000c08:   add     r7, sp, #0
08000c0a:   str     r0, [r7, #4]
08000c0c:   str     r1, [r7, #0]
08000c0e:   movs    r3, #0
08000c10:   str     r3, [r7, #20]
08000c12:   movs    r3, #0
08000c14:   str     r3, [r7, #16]
08000c16:   movs    r3, #0
08000c18:   str     r3, [r7, #24]
08000c1a:   movs    r3, #0
08000c1c:   str     r3, [r7, #28]
08000c1e:   b.n     0x8000ed4 <HAL_GPIO_Init+720>
08000c20:   movs    r2, #1
08000c22:   ldr     r3, [r7, #28]
08000c24:   lsl.w   r3, r2, r3
08000c28:   str     r3, [r7, #20]
08000c2a:   ldr     r3, [r7, #0]
08000c2c:   ldr     r3, [r3, #0]
08000c2e:   ldr     r2, [r7, #20]
08000c30:   ands    r3, r2
08000c32:   str     r3, [r7, #16]
08000c34:   ldr     r2, [r7, #16]
08000c36:   ldr     r3, [r7, #20]
08000c38:   cmp     r2, r3
08000c3a:   bne.w   0x8000ece <HAL_GPIO_Init+714>
08000c3e:   ldr     r3, [r7, #0]
08000c40:   ldr     r3, [r3, #4]
08000c42:   and.w   r3, r3, #3
08000c46:   cmp     r3, #1
08000c48:   beq.n   0x8000c56 <HAL_GPIO_Init+82>
08000c4a:   ldr     r3, [r7, #0]
08000c4c:   ldr     r3, [r3, #4]
08000c4e:   and.w   r3, r3, #3
08000c52:   cmp     r3, #2
08000c54:   bne.n   0x8000cb8 <HAL_GPIO_Init+180>
08000c56:   ldr     r3, [r7, #4]
08000c58:   ldr     r3, [r3, #8]
08000c5a:   str     r3, [r7, #24]
08000c5c:   ldr     r3, [r7, #28]
08000c5e:   lsls    r3, r3, #1
08000c60:   movs    r2, #3
08000c62:   lsl.w   r3, r2, r3
08000c66:   mvns    r3, r3
08000c68:   ldr     r2, [r7, #24]
08000c6a:   ands    r3, r2
08000c6c:   str     r3, [r7, #24]
08000c6e:   ldr     r3, [r7, #0]
08000c70:   ldr     r2, [r3, #12]
08000c72:   ldr     r3, [r7, #28]
08000c74:   lsls    r3, r3, #1
08000c76:   lsl.w   r3, r2, r3
08000c7a:   ldr     r2, [r7, #24]
08000c7c:   orrs    r3, r2
08000c7e:   str     r3, [r7, #24]
08000c80:   ldr     r3, [r7, #4]
08000c82:   ldr     r2, [r7, #24]
08000c84:   str     r2, [r3, #8]
08000c86:   ldr     r3, [r7, #4]
08000c88:   ldr     r3, [r3, #4]
08000c8a:   str     r3, [r7, #24]
08000c8c:   movs    r2, #1
08000c8e:   ldr     r3, [r7, #28]
08000c90:   lsl.w   r3, r2, r3
08000c94:   mvns    r3, r3
08000c96:   ldr     r2, [r7, #24]
08000c98:   ands    r3, r2
08000c9a:   str     r3, [r7, #24]
08000c9c:   ldr     r3, [r7, #0]
08000c9e:   ldr     r3, [r3, #4]
08000ca0:   lsrs    r3, r3, #4
08000ca2:   and.w   r2, r3, #1
08000ca6:   ldr     r3, [r7, #28]
08000ca8:   lsl.w   r3, r2, r3
08000cac:   ldr     r2, [r7, #24]
08000cae:   orrs    r3, r2
08000cb0:   str     r3, [r7, #24]
08000cb2:   ldr     r3, [r7, #4]
08000cb4:   ldr     r2, [r7, #24]
08000cb6:   str     r2, [r3, #4]
206             if((GPIO_Init->Mode & GPIO_MODE) != MODE_ANALOG)
08000cb8:   ldr     r3, [r7, #0]
08000cba:   ldr     r3, [r3, #4]
08000cbc:   and.w   r3, r3, #3
08000cc0:   cmp     r3, #3
08000cc2:   beq.n   0x8000cf4 <HAL_GPIO_Init+240>
212               temp = GPIOx->PUPDR;
08000cc4:   ldr     r3, [r7, #4]
08000cc6:   ldr     r3, [r3, #12]
08000cc8:   str     r3, [r7, #24]
213               temp &= ~(GPIO_PUPDR_PUPDR0 << (position * 2U));
08000cca:   ldr     r3, [r7, #28]
08000ccc:   lsls    r3, r3, #1
08000cce:   movs    r2, #3
08000cd0:   lsl.w   r3, r2, r3
08000cd4:   mvns    r3, r3
08000cd6:   ldr     r2, [r7, #24]
08000cd8:   ands    r3, r2
08000cda:   str     r3, [r7, #24]
214               temp |= ((GPIO_Init->Pull) << (position * 2U));
08000cdc:   ldr     r3, [r7, #0]
08000cde:   ldr     r2, [r3, #8]
08000ce0:   ldr     r3, [r7, #28]
08000ce2:   lsls    r3, r3, #1
08000ce4:   lsl.w   r3, r2, r3
08000ce8:   ldr     r2, [r7, #24]
08000cea:   orrs    r3, r2
08000cec:   str     r3, [r7, #24]
215               GPIOx->PUPDR = temp;
08000cee:   ldr     r3, [r7, #4]
08000cf0:   ldr     r2, [r7, #24]
08000cf2:   str     r2, [r3, #12]
219             if((GPIO_Init->Mode & GPIO_MODE) == MODE_AF)
08000cf4:   ldr     r3, [r7, #0]
08000cf6:   ldr     r3, [r3, #4]
08000cf8:   and.w   r3, r3, #3
08000cfc:   cmp     r3, #2
08000cfe:   bne.n   0x8000d48 <HAL_GPIO_Init+324>
224               temp = GPIOx->AFR[position >> 3U];
08000d00:   ldr     r3, [r7, #28]
08000d02:   lsrs    r2, r3, #3
08000d04:   ldr     r3, [r7, #4]
08000d06:   adds    r2, #8
08000d08:   ldr.w   r3, [r3, r2, lsl #2]
08000d0c:   str     r3, [r7, #24]
225               temp &= ~(0xFU << ((uint32_t)(position & 0x07U) * 4U)) ;
08000d0e:   ldr     r3, [r7, #28]
08000d10:   and.w   r3, r3, #7
08000d14:   lsls    r3, r3, #2
08000d16:   movs    r2, #15
08000d18:   lsl.w   r3, r2, r3
08000d1c:   mvns    r3, r3
08000d1e:   ldr     r2, [r7, #24]
08000d20:   ands    r3, r2
08000d22:   str     r3, [r7, #24]
226               temp |= ((uint32_t)(GPIO_Init->Alternate) << (((uint32_t)position & 0x07U) * 4U));
08000d24:   ldr     r3, [r7, #0]
08000d26:   ldr     r2, [r3, #16]
08000d28:   ldr     r3, [r7, #28]
08000d2a:   and.w   r3, r3, #7
08000d2e:   lsls    r3, r3, #2
08000d30:   lsl.w   r3, r2, r3
08000d34:   ldr     r2, [r7, #24]
08000d36:   orrs    r3, r2
08000d38:   str     r3, [r7, #24]
227               GPIOx->AFR[position >> 3U] = temp;
08000d3a:   ldr     r3, [r7, #28]
08000d3c:   lsrs    r2, r3, #3
08000d3e:   ldr     r3, [r7, #4]
08000d40:   adds    r2, #8
08000d42:   ldr     r1, [r7, #24]
08000d44:   str.w   r1, [r3, r2, lsl #2]
231             temp = GPIOx->MODER;
08000d48:   ldr     r3, [r7, #4]
08000d4a:   ldr     r3, [r3, #0]
08000d4c:   str     r3, [r7, #24]
232             temp &= ~(GPIO_MODER_MODER0 << (position * 2U));
08000d4e:   ldr     r3, [r7, #28]
08000d50:   lsls    r3, r3, #1
08000d52:   movs    r2, #3
08000d54:   lsl.w   r3, r2, r3
08000d58:   mvns    r3, r3
08000d5a:   ldr     r2, [r7, #24]
08000d5c:   ands    r3, r2
08000d5e:   str     r3, [r7, #24]
233             temp |= ((GPIO_Init->Mode & GPIO_MODE) << (position * 2U));
08000d60:   ldr     r3, [r7, #0]
08000d62:   ldr     r3, [r3, #4]
08000d64:   and.w   r2, r3, #3
08000d68:   ldr     r3, [r7, #28]
08000d6a:   lsls    r3, r3, #1
08000d6c:   lsl.w   r3, r2, r3
08000d70:   ldr     r2, [r7, #24]
08000d72:   orrs    r3, r2
08000d74:   str     r3, [r7, #24]
234             GPIOx->MODER = temp;
08000d76:   ldr     r3, [r7, #4]
08000d78:   ldr     r2, [r7, #24]
08000d7a:   str     r2, [r3, #0]
238             if((GPIO_Init->Mode & EXTI_MODE) != 0x00U)
08000d7c:   ldr     r3, [r7, #0]
08000d7e:   ldr     r3, [r3, #4]
08000d80:   and.w   r3, r3, #196608 @ 0x30000
08000d84:   cmp     r3, #0
08000d86:   beq.w   0x8000ece <HAL_GPIO_Init+714>
241               __HAL_RCC_SYSCFG_CLK_ENABLE();
08000d8a:   movs    r3, #0
08000d8c:   str     r3, [r7, #12]
08000d8e:   ldr     r3, [pc, #348]  @ (0x8000eec <HAL_GPIO_Init+744>)
08000d90:   ldr     r3, [r3, #68]   @ 0x44
08000d92:   ldr     r2, [pc, #344]  @ (0x8000eec <HAL_GPIO_Init+744>)
08000d94:   orr.w   r3, r3, #16384  @ 0x4000
08000d98:   str     r3, [r2, #68]   @ 0x44
08000d9a:   ldr     r3, [pc, #336]  @ (0x8000eec <HAL_GPIO_Init+744>)
08000d9c:   ldr     r3, [r3, #68]   @ 0x44
08000d9e:   and.w   r3, r3, #16384  @ 0x4000
08000da2:   str     r3, [r7, #12]
08000da4:   ldr     r3, [r7, #12]
243               temp = SYSCFG->EXTICR[position >> 2U];
08000da6:   ldr     r2, [pc, #328]  @ (0x8000ef0 <HAL_GPIO_Init+748>)
08000da8:   ldr     r3, [r7, #28]
08000daa:   lsrs    r3, r3, #2
08000dac:   adds    r3, #2
08000dae:   ldr.w   r3, [r2, r3, lsl #2]
08000db2:   str     r3, [r7, #24]
244               temp &= ~(0x0FU << (4U * (position & 0x03U)));
08000db4:   ldr     r3, [r7, #28]
08000db6:   and.w   r3, r3, #3
08000dba:   lsls    r3, r3, #2
08000dbc:   movs    r2, #15
08000dbe:   lsl.w   r3, r2, r3
08000dc2:   mvns    r3, r3
08000dc4:   ldr     r2, [r7, #24]
08000dc6:   ands    r3, r2
08000dc8:   str     r3, [r7, #24]
245               temp |= ((uint32_t)(GPIO_GET_INDEX(GPIOx)) << (4U * (position & 0x03U)));
08000dca:   ldr     r3, [r7, #4]
08000dcc:   ldr     r2, [pc, #292]  @ (0x8000ef4 <HAL_GPIO_Init+752>)
08000dce:   cmp     r3, r2
08000dd0:   beq.n   0x8000e06 <HAL_GPIO_Init+514>
08000dd2:   ldr     r3, [r7, #4]
08000dd4:   ldr     r2, [pc, #288]  @ (0x8000ef8 <HAL_GPIO_Init+756>)
08000dd6:   cmp     r3, r2
08000dd8:   beq.n   0x8000e02 <HAL_GPIO_Init+510>
08000dda:   ldr     r3, [r7, #4]
08000ddc:   ldr     r2, [pc, #284]  @ (0x8000efc <HAL_GPIO_Init+760>)
08000dde:   cmp     r3, r2
08000de0:   beq.n   0x8000dfe <HAL_GPIO_Init+506>
08000de2:   ldr     r3, [r7, #4]
08000de4:   ldr     r2, [pc, #280]  @ (0x8000f00 <HAL_GPIO_Init+764>)
08000de6:   cmp     r3, r2
08000de8:   beq.n   0x8000dfa <HAL_GPIO_Init+502>
08000dea:   ldr     r3, [r7, #4]
08000dec:   ldr     r2, [pc, #276]  @ (0x8000f04 <HAL_GPIO_Init+768>)
08000dee:   cmp     r3, r2
08000df0:   bne.n   0x8000df6 <HAL_GPIO_Init+498>
08000df2:   movs    r3, #4
08000df4:   b.n     0x8000e08 <HAL_GPIO_Init+516>
08000df6:   movs    r3, #7
08000df8:   b.n     0x8000e08 <HAL_GPIO_Init+516>
08000dfa:   movs    r3, #3
08000dfc:   b.n     0x8000e08 <HAL_GPIO_Init+516>
08000dfe:   movs    r3, #2
08000e00:   b.n     0x8000e08 <HAL_GPIO_Init+516>
08000e02:   movs    r3, #1
08000e04:   b.n     0x8000e08 <HAL_GPIO_Init+516>
08000e06:   movs    r3, #0
08000e08:   ldr     r2, [r7, #28]
08000e0a:   and.w   r2, r2, #3
08000e0e:   lsls    r2, r2, #2
08000e10:   lsls    r3, r2
08000e12:   ldr     r2, [r7, #24]
08000e14:   orrs    r3, r2
08000e16:   str     r3, [r7, #24]
246               SYSCFG->EXTICR[position >> 2U] = temp;
08000e18:   ldr     r1, [pc, #212]  @ (0x8000ef0 <HAL_GPIO_Init+748>)
08000e1a:   ldr     r3, [r7, #28]
08000e1c:   lsrs    r3, r3, #2
08000e1e:   adds    r3, #2
08000e20:   ldr     r2, [r7, #24]
08000e22:   str.w   r2, [r1, r3, lsl #2]
249               temp = EXTI->RTSR;
08000e26:   ldr     r3, [pc, #224]  @ (0x8000f08 <HAL_GPIO_Init+772>)
08000e28:   ldr     r3, [r3, #8]
08000e2a:   str     r3, [r7, #24]
250               temp &= ~((uint32_t)iocurrent);
08000e2c:   ldr     r3, [r7, #16]
08000e2e:   mvns    r3, r3
08000e30:   ldr     r2, [r7, #24]
08000e32:   ands    r3, r2
08000e34:   str     r3, [r7, #24]
251               if((GPIO_Init->Mode & TRIGGER_RISING) != 0x00U)
08000e36:   ldr     r3, [r7, #0]
08000e38:   ldr     r3, [r3, #4]
08000e3a:   and.w   r3, r3, #1048576        @ 0x100000
08000e3e:   cmp     r3, #0
08000e40:   beq.n   0x8000e4a <HAL_GPIO_Init+582>
253                 temp |= iocurrent;
08000e42:   ldr     r2, [r7, #24]
08000e44:   ldr     r3, [r7, #16]
08000e46:   orrs    r3, r2
08000e48:   str     r3, [r7, #24]
255               EXTI->RTSR = temp;
08000e4a:   ldr     r2, [pc, #188]  @ (0x8000f08 <HAL_GPIO_Init+772>)
08000e4c:   ldr     r3, [r7, #24]
08000e4e:   str     r3, [r2, #8]
257               temp = EXTI->FTSR;
08000e50:   ldr     r3, [pc, #180]  @ (0x8000f08 <HAL_GPIO_Init+772>)
08000e52:   ldr     r3, [r3, #12]
08000e54:   str     r3, [r7, #24]
258               temp &= ~((uint32_t)iocurrent);
08000e56:   ldr     r3, [r7, #16]
08000e58:   mvns    r3, r3
08000e5a:   ldr     r2, [r7, #24]
08000e5c:   ands    r3, r2
08000e5e:   str     r3, [r7, #24]
259               if((GPIO_Init->Mode & TRIGGER_FALLING) != 0x00U)
08000e60:   ldr     r3, [r7, #0]
08000e62:   ldr     r3, [r3, #4]
08000e64:   and.w   r3, r3, #2097152        @ 0x200000
08000e68:   cmp     r3, #0
08000e6a:   beq.n   0x8000e74 <HAL_GPIO_Init+624>
261                 temp |= iocurrent;
08000e6c:   ldr     r2, [r7, #24]
08000e6e:   ldr     r3, [r7, #16]
08000e70:   orrs    r3, r2
08000e72:   str     r3, [r7, #24]
263               EXTI->FTSR = temp;
08000e74:   ldr     r2, [pc, #144]  @ (0x8000f08 <HAL_GPIO_Init+772>)
08000e76:   ldr     r3, [r7, #24]
08000e78:   str     r3, [r2, #12]
265               temp = EXTI->EMR;
08000e7a:   ldr     r3, [pc, #140]  @ (0x8000f08 <HAL_GPIO_Init+772>)
08000e7c:   ldr     r3, [r3, #4]
08000e7e:   str     r3, [r7, #24]
266               temp &= ~((uint32_t)iocurrent);
08000e80:   ldr     r3, [r7, #16]
08000e82:   mvns    r3, r3
08000e84:   ldr     r2, [r7, #24]
08000e86:   ands    r3, r2
08000e88:   str     r3, [r7, #24]
267               if((GPIO_Init->Mode & EXTI_EVT) != 0x00U)
08000e8a:   ldr     r3, [r7, #0]
08000e8c:   ldr     r3, [r3, #4]
08000e8e:   and.w   r3, r3, #131072 @ 0x20000
08000e92:   cmp     r3, #0
08000e94:   beq.n   0x8000e9e <HAL_GPIO_Init+666>
269                 temp |= iocurrent;
08000e96:   ldr     r2, [r7, #24]
08000e98:   ldr     r3, [r7, #16]
08000e9a:   orrs    r3, r2
08000e9c:   str     r3, [r7, #24]
271               EXTI->EMR = temp;
08000e9e:   ldr     r2, [pc, #104]  @ (0x8000f08 <HAL_GPIO_Init+772>)
08000ea0:   ldr     r3, [r7, #24]
08000ea2:   str     r3, [r2, #4]
274               temp = EXTI->IMR;
08000ea4:   ldr     r3, [pc, #96]   @ (0x8000f08 <HAL_GPIO_Init+772>)
08000ea6:   ldr     r3, [r3, #0]
08000ea8:   str     r3, [r7, #24]
275               temp &= ~((uint32_t)iocurrent);
08000eaa:   ldr     r3, [r7, #16]
08000eac:   mvns    r3, r3
08000eae:   ldr     r2, [r7, #24]
08000eb0:   ands    r3, r2
08000eb2:   str     r3, [r7, #24]
276               if((GPIO_Init->Mode & EXTI_IT) != 0x00U)
08000eb4:   ldr     r3, [r7, #0]
08000eb6:   ldr     r3, [r3, #4]
08000eb8:   and.w   r3, r3, #65536  @ 0x10000
08000ebc:   cmp     r3, #0
08000ebe:   beq.n   0x8000ec8 <HAL_GPIO_Init+708>
278                 temp |= iocurrent;
08000ec0:   ldr     r2, [r7, #24]
08000ec2:   ldr     r3, [r7, #16]
08000ec4:   orrs    r3, r2
08000ec6:   str     r3, [r7, #24]
280               EXTI->IMR = temp;
08000ec8:   ldr     r2, [pc, #60]   @ (0x8000f08 <HAL_GPIO_Init+772>)
08000eca:   ldr     r3, [r7, #24]
08000ecc:   str     r3, [r2, #0]
177         for(position = 0U; position < GPIO_NUMBER; position++)
08000ece:   ldr     r3, [r7, #28]
08000ed0:   adds    r3, #1
08000ed2:   str     r3, [r7, #28]
08000ed4:   ldr     r3, [r7, #28]
08000ed6:   cmp     r3, #15
08000ed8:   bls.w   0x8000c20 <HAL_GPIO_Init+28>
284       }
08000edc:   nop     
08000ede:   nop     
08000ee0:   adds    r7, #36 @ 0x24
08000ee2:   mov     sp, r7
08000ee4:   ldr.w   r7, [sp], #4
08000ee8:   bx      lr
08000eea:   nop     
08000eec:   subs    r0, #0
08000eee:   ands    r2, r0
08000ef0:   subs    r0, #0
08000ef2:   ands    r1, r0
08000ef4:   movs    r0, r0
08000ef6:   ands    r2, r0
08000ef8:   lsls    r0, r0, #16
08000efa:   ands    r2, r0
08000efc:   lsrs    r0, r0, #32
08000efe:   ands    r2, r0
08000f00:   lsrs    r0, r0, #16
08000f02:   ands    r2, r0
08000f04:   asrs    r0, r0, #32
08000f06:   ands    r2, r0
08000f08:   subs    r4, #0
08000f0a:   ands    r1, r0
411       {
          HAL_GPIO_WritePin:
08000f0c:   push    {r7}
08000f0e:   sub     sp, #12
08000f10:   add     r7, sp, #0
08000f12:   str     r0, [r7, #4]
08000f14:   mov     r3, r1
08000f16:   strh    r3, [r7, #2]
08000f18:   mov     r3, r2
08000f1a:   strb    r3, [r7, #1]
416         if(PinState != GPIO_PIN_RESET)
08000f1c:   ldrb    r3, [r7, #1]
08000f1e:   cmp     r3, #0
08000f20:   beq.n   0x8000f2a <HAL_GPIO_WritePin+30>
418           GPIOx->BSRR = GPIO_Pin;
08000f22:   ldrh    r2, [r7, #2]
08000f24:   ldr     r3, [r7, #4]
08000f26:   str     r2, [r3, #24]
424       }
08000f28:   b.n     0x8000f32 <HAL_GPIO_WritePin+38>
422           GPIOx->BSRR = (uint32_t)GPIO_Pin << 16U;
08000f2a:   ldrh    r3, [r7, #2]
08000f2c:   lsls    r2, r3, #16
08000f2e:   ldr     r3, [r7, #4]
08000f30:   str     r2, [r3, #24]
424       }
08000f32:   nop     
08000f34:   adds    r7, #12
08000f36:   mov     sp, r7
08000f38:   ldr.w   r7, [sp], #4
08000f3c:   bx      lr
08000f3e:   movs    r0, r0
          HAL_RCC_OscConfig:
08000f40:   push    {r7, lr}
08000f42:   sub     sp, #24
08000f44:   add     r7, sp, #0
08000f46:   str     r0, [r7, #4]
08000f48:   ldr     r3, [r7, #4]
08000f4a:   cmp     r3, #0
08000f4c:   bne.n   0x8000f52 <HAL_RCC_OscConfig+18>
08000f4e:   movs    r3, #1
08000f50:   b.n     0x8001422 <HAL_RCC_OscConfig+1250>
08000f52:   ldr     r3, [r7, #4]
08000f54:   ldr     r3, [r3, #0]
08000f56:   and.w   r3, r3, #1
08000f5a:   cmp     r3, #0
08000f5c:   beq.n   0x800104a <HAL_RCC_OscConfig+266>
08000f5e:   ldr     r3, [pc, #544]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000f60:   ldr     r3, [r3, #8]
08000f62:   and.w   r3, r3, #12
08000f66:   cmp     r3, #4
08000f68:   beq.n   0x8000f84 <HAL_RCC_OscConfig+68>
08000f6a:   ldr     r3, [pc, #532]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000f6c:   ldr     r3, [r3, #8]
08000f6e:   and.w   r3, r3, #12
08000f72:   cmp     r3, #8
08000f74:   bne.n   0x8000f9c <HAL_RCC_OscConfig+92>
08000f76:   ldr     r3, [pc, #520]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000f78:   ldr     r3, [r3, #4]
08000f7a:   and.w   r3, r3, #4194304        @ 0x400000
08000f7e:   cmp.w   r3, #4194304    @ 0x400000
08000f82:   bne.n   0x8000f9c <HAL_RCC_OscConfig+92>
08000f84:   ldr     r3, [pc, #504]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000f86:   ldr     r3, [r3, #0]
08000f88:   and.w   r3, r3, #131072 @ 0x20000
08000f8c:   cmp     r3, #0
08000f8e:   beq.n   0x8001048 <HAL_RCC_OscConfig+264>
08000f90:   ldr     r3, [r7, #4]
08000f92:   ldr     r3, [r3, #4]
08000f94:   cmp     r3, #0
08000f96:   bne.n   0x8001048 <HAL_RCC_OscConfig+264>
08000f98:   movs    r3, #1
08000f9a:   b.n     0x8001422 <HAL_RCC_OscConfig+1250>
08000f9c:   ldr     r3, [r7, #4]
08000f9e:   ldr     r3, [r3, #4]
08000fa0:   cmp.w   r3, #65536      @ 0x10000
08000fa4:   bne.n   0x8000fb4 <HAL_RCC_OscConfig+116>
08000fa6:   ldr     r3, [pc, #472]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fa8:   ldr     r3, [r3, #0]
08000faa:   ldr     r2, [pc, #468]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fac:   orr.w   r3, r3, #65536  @ 0x10000
08000fb0:   str     r3, [r2, #0]
08000fb2:   b.n     0x8000ff0 <HAL_RCC_OscConfig+176>
08000fb4:   ldr     r3, [r7, #4]
08000fb6:   ldr     r3, [r3, #4]
08000fb8:   cmp.w   r3, #327680     @ 0x50000
08000fbc:   bne.n   0x8000fd8 <HAL_RCC_OscConfig+152>
08000fbe:   ldr     r3, [pc, #448]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fc0:   ldr     r3, [r3, #0]
08000fc2:   ldr     r2, [pc, #444]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fc4:   orr.w   r3, r3, #262144 @ 0x40000
08000fc8:   str     r3, [r2, #0]
08000fca:   ldr     r3, [pc, #436]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fcc:   ldr     r3, [r3, #0]
08000fce:   ldr     r2, [pc, #432]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fd0:   orr.w   r3, r3, #65536  @ 0x10000
08000fd4:   str     r3, [r2, #0]
08000fd6:   b.n     0x8000ff0 <HAL_RCC_OscConfig+176>
08000fd8:   ldr     r3, [pc, #420]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fda:   ldr     r3, [r3, #0]
08000fdc:   ldr     r2, [pc, #416]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fde:   bic.w   r3, r3, #65536  @ 0x10000
08000fe2:   str     r3, [r2, #0]
08000fe4:   ldr     r3, [pc, #408]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fe6:   ldr     r3, [r3, #0]
08000fe8:   ldr     r2, [pc, #404]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08000fea:   bic.w   r3, r3, #262144 @ 0x40000
08000fee:   str     r3, [r2, #0]
08000ff0:   ldr     r3, [r7, #4]
08000ff2:   ldr     r3, [r3, #4]
 251            if ((RCC_OscInitStruct->HSEState) != RCC_HSE_OFF)
08000ff4:   cmp     r3, #0
08000ff6:   beq.n   0x8001020 <HAL_RCC_OscConfig+224>
 254              tickstart = HAL_GetTick();
08000ff8:   bl      0x80009d8 <HAL_GetTick>
08000ffc:   str     r0, [r7, #16]
 257              while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
08000ffe:   b.n     0x8001012 <HAL_RCC_OscConfig+210>
 259                if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
08001000:   bl      0x80009d8 <HAL_GetTick>
08001004:   mov     r2, r0
08001006:   ldr     r3, [r7, #16]
08001008:   subs    r3, r2, r3
0800100a:   cmp     r3, #100        @ 0x64
0800100c:   bls.n   0x8001012 <HAL_RCC_OscConfig+210>
 261                  return HAL_TIMEOUT;
0800100e:   movs    r3, #3
08001010:   b.n     0x8001422 <HAL_RCC_OscConfig+1250>
 257              while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) == RESET)
08001012:   ldr     r3, [pc, #364]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08001014:   ldr     r3, [r3, #0]
08001016:   and.w   r3, r3, #131072 @ 0x20000
0800101a:   cmp     r3, #0
0800101c:   beq.n   0x8001000 <HAL_RCC_OscConfig+192>
0800101e:   b.n     0x800104a <HAL_RCC_OscConfig+266>
 268              tickstart = HAL_GetTick();
08001020:   bl      0x80009d8 <HAL_GetTick>
08001024:   str     r0, [r7, #16]
 271              while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
08001026:   b.n     0x800103a <HAL_RCC_OscConfig+250>
 273                if ((HAL_GetTick() - tickstart) > HSE_TIMEOUT_VALUE)
08001028:   bl      0x80009d8 <HAL_GetTick>
0800102c:   mov     r2, r0
0800102e:   ldr     r3, [r7, #16]
08001030:   subs    r3, r2, r3
08001032:   cmp     r3, #100        @ 0x64
08001034:   bls.n   0x800103a <HAL_RCC_OscConfig+250>
 275                  return HAL_TIMEOUT;
08001036:   movs    r3, #3
08001038:   b.n     0x8001422 <HAL_RCC_OscConfig+1250>
 271              while (__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET)
0800103a:   ldr     r3, [pc, #324]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
0800103c:   ldr     r3, [r3, #0]
0800103e:   and.w   r3, r3, #131072 @ 0x20000
08001042:   cmp     r3, #0
08001044:   bne.n   0x8001028 <HAL_RCC_OscConfig+232>
08001046:   b.n     0x800104a <HAL_RCC_OscConfig+266>
 240            if ((__HAL_RCC_GET_FLAG(RCC_FLAG_HSERDY) != RESET) && (RCC_OscInitStruct->HSEState == RCC_HSE_OFF))
08001048:   nop     
 282        if (((RCC_OscInitStruct->OscillatorType) & RCC_OSCILLATORTYPE_HSI) == RCC_OSCILLATORTYPE_HSI)
0800104a:   ldr     r3, [r7, #4]
0800104c:   ldr     r3, [r3, #0]
0800104e:   and.w   r3, r3, #2
08001052:   cmp     r3, #0
08001054:   beq.n   0x800111e <HAL_RCC_OscConfig+478>
 289          if ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) || \
08001056:   ldr     r3, [pc, #296]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08001058:   ldr     r3, [r3, #8]
0800105a:   and.w   r3, r3, #12
0800105e:   cmp     r3, #0
08001060:   beq.n   0x800107a <HAL_RCC_OscConfig+314>
 290              ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
08001062:   ldr     r3, [pc, #284]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08001064:   ldr     r3, [r3, #8]
08001066:   and.w   r3, r3, #12
 289          if ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_HSI) || \
0800106a:   cmp     r3, #8
0800106c:   bne.n   0x80010a8 <HAL_RCC_OscConfig+360>
 290              ((__HAL_RCC_GET_SYSCLK_SOURCE() == RCC_CFGR_SWS_PLL) && ((RCC->PLLCFGR & RCC_PLLCFGR_PLLSRC) == RCC_PLLCFGR_PLLSRC_HSI)))
0800106e:   ldr     r3, [pc, #272]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08001070:   ldr     r3, [r3, #4]
08001072:   and.w   r3, r3, #4194304        @ 0x400000
08001076:   cmp     r3, #0
08001078:   bne.n   0x80010a8 <HAL_RCC_OscConfig+360>
 293            if ((__HAL_RCC_GET_FLAG(RCC_FLAG_HSIRDY) != RESET) && (RCC_OscInitStruct->HSIState != RCC_HSI_ON))
0800107a:   ldr     r3, [pc, #260]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
0800107c:   ldr     r3, [r3, #0]
0800107e:   and.w   r3, r3, #2
08001082:   cmp     r3, #0
08001084:   beq.n   0x8001092 <HAL_RCC_OscConfig+338>
08001086:   ldr     r3, [r7, #4]
08001088:   ldr     r3, [r3, #12]
0800108a:   cmp     r3, #1
0800108c:   beq.n   0x8001092 <HAL_RCC_OscConfig+338>
 295              return HAL_ERROR;
0800108e:   movs    r3, #1
08001090:   b.n     0x8001422 <HAL_RCC_OscConfig+1250>
 301              __HAL_RCC_HSI_CALIBRATIONVALUE_ADJUST(RCC_OscInitStruct->HSICalibrationValue);
08001092:   ldr     r3, [pc, #236]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
08001094:   ldr     r3, [r3, #0]
08001096:   bic.w   r2, r3, #248    @ 0xf8
0800109a:   ldr     r3, [r7, #4]
0800109c:   ldr     r3, [r3, #16]
0800109e:   lsls    r3, r3, #3
080010a0:   ldr     r1, [pc, #220]  @ (0x8001180 <HAL_RCC_OscConfig+576>)
080010a2:   orrs    r3, r2
080010a4:   str     r3, [r1, #0]
......... ...
