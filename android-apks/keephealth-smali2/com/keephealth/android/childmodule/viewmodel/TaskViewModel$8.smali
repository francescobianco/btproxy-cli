.class Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "TaskViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->getSucceedTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;)V
    .registers 2

    .line 522
    iput-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 3

    .line 563
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isReceiveTask:Z

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 9

    .line 525
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-boolean v0, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isReceiveTask:Z

    if-eqz v0, :cond_18d

    .line 526
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/BaseCmdUtil;->copyByte([B)[B

    move-result-object p1

    .line 527
    const-string v0, "\u6536\u5230\u624b\u73af\u5b8c\u6210\u4efb\u52a1\u6570\u636e:"

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 528
    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xf0

    const/4 v3, 0x5

    const/4 v4, 0x1

    const/4 v5, 0x4

    if-ne v1, v2, :cond_b2

    const/4 v1, 0x3

    aget-byte v2, p1, v1

    if-nez v2, :cond_b2

    aget-byte v2, p1, v3

    const/4 v6, 0x2

    if-ne v2, v6, :cond_b2

    .line 529
    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    invoke-static {p1, v4, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    iput v1, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    .line 530
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    if-ne v1, v5, :cond_4d

    .line 531
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-boolean v0, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isReceiveTask:Z

    .line 532
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->successTask:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "success"

    invoke-static {p1, v0}, Lcom/keephealth/android/util/ThreadUtil;->setMainLooper(Landroidx/lifecycle/MutableLiveData;Ljava/lang/String;)V

    return-void

    .line 535
    :cond_4d
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    add-int/2addr v2, v5

    new-array v2, v2, [B

    iput-object v2, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    .line 536
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    const/16 v2, 0x10

    if-le v1, v2, :cond_74

    .line 537
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    array-length v3, p1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 538
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    array-length p1, p1

    add-int/2addr v1, p1

    iput v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    goto/16 :goto_18d

    .line 540
    :cond_74
    aget-byte v1, p1, v5

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    add-int/lit8 v2, v2, -0x6

    div-int/lit8 v2, v2, 0x7

    if-ne v1, v2, :cond_18d

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    array-length v2, p1

    sub-int/2addr v2, v5

    if-ne v1, v2, :cond_18d

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p1

    sub-int/2addr v2, v4

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    if-ne v1, v2, :cond_18d

    .line 541
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-boolean v0, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isReceiveTask:Z

    .line 542
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    new-array v1, v1, [B

    .line 543
    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    sub-int/2addr v2, v4

    invoke-static {p1, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    invoke-virtual {v0, v1, p1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->setSuccessTask([BI)V

    goto/16 :goto_18d

    .line 548
    :cond_b2
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    array-length v6, p1

    invoke-static {p1, v0, v1, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 549
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    array-length p1, p1

    add-int/2addr v2, p1

    iput v2, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    .line 550
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "onSuccess: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " -- "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    add-int/lit8 v2, v2, -0x6

    div-int/lit8 v2, v2, 0x7

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    add-int/2addr v2, v5

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    invoke-static {v2}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    array-length v2, v2

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u6d4b\u8bd5\u63a5\u6536\u4efb\u52a1\u5b8c\u6210\u60c5\u51b5\u6570\u636e"

    invoke-static {v1, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    aget-byte p1, p1, v5

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    add-int/lit8 v1, v1, -0x6

    div-int/lit8 v1, v1, 0x7

    if-ne p1, v1, :cond_18d

    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLengthCount:I

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    add-int/2addr v1, v5

    if-ne p1, v1, :cond_18d

    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    invoke-static {p1}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    array-length v2, v2

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    if-ne p1, v1, :cond_18d

    .line 552
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iput-boolean v0, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->isReceiveTask:Z

    .line 553
    iget-object p1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget p1, p1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    new-array p1, p1, [B

    .line 554
    iget-object v1, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v1, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    iget-object v2, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget v2, v2, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataLength:I

    sub-int/2addr v2, v4

    invoke-static {v1, v3, p1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 555
    iget-object v0, p0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel$8;->this$0:Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;

    iget-object v1, v0, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->dataAll:[B

    aget-byte v1, v1, v5

    and-int/lit16 v1, v1, 0xff

    invoke-virtual {v0, p1, v1}, Lcom/keephealth/android/childmodule/viewmodel/TaskViewModel;->setSuccessTask([BI)V

    :cond_18d
    :goto_18d
    return-void
.end method
