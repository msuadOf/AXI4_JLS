# 

## 工作流程简述

1.检查ECtrl（Encoder_Ctrl）控制寄存器的监视位，查看外设是否在工作

2.如不在工作（ECtrl[1]==0）,进行外设的帧配置：对EBAdd（Encoder_BMP_Address）赋内存图片起始值和偏移量EBAddOff（Encoder_BMP_Address_Offset  ），并且设置写回时的内存设置EJAdd（Encoder_JLS_Address）和EJAddOff（Encoder_JLS_Address_Offset）

3.设置好相关寄存器后，操作ECtrl寄存器0 bit位启动外设开始转换

4.对ECtrl（Encoder_Ctrl）控制寄存器的监视位进行轮询，若不在工作则进入下一次转换

## 寄存器

| 寄存器名称 | R/W  | 全称                       | 作用                              | 描述                                                         |
| ---------- | ---- | -------------------------- | --------------------------------- | ------------------------------------------------------------ |
| ECtrl      | R/W  | Encoder_Ctrl               | Encode阶段控制寄存器              | 0 bit：启动控制位，为1时启动，启动后外设自动置0<br />1 bit：监视位，在转换的时候为1，空闲时为0<br />[63:2]: Reserved |
| EBAdd      | W    | Encoder_BMP_Address        | Encode阶段BMP帧的起始地址         | [63:0]:Addr                                                  |
| EBAddOff   | W    | Encoder_BMP_Address_Offset | Encode阶段BMP帧的地址偏移量       | [63:0]:Offset                                                |
| EJAdd      | W    | Encoder_JLS_Address        | 指定Encode阶段JLS帧存放的起始地址 | [63:0]:Addr                                                  |
| EJAddOff   | R    | Encoder_JLS_Address_Offset | Encode阶段JLS帧的偏移量           | [63:0]:Offset                                                |

