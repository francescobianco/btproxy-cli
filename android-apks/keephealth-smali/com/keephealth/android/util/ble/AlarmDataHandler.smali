.class public Lcom/keephealth/android/util/ble/AlarmDataHandler;
.super Ljava/lang/Object;
.source "AlarmDataHandler.java"


# instance fields
.field private dataByte:[B

.field private dataIndex:I

.field dataLength:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x28

    .line 19
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    const/4 v0, 0x0

    .line 21
    iput v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataLength:I

    return-void
.end method


# virtual methods
.method public handlerAlarmData([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 12

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    .line 50
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    invoke-static {v1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v1

    .line 51
    div-int/lit8 v1, v1, 0x4

    const/4 v3, 0x0

    move v4, v3

    :goto_13
    if-ge v4, v1, :cond_a4

    mul-int/lit8 v5, v4, 0x4

    add-int/lit8 v6, v5, 0x3

    .line 53
    aget-byte v7, p1, v6

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v7

    const/16 v8, 0xff

    if-ne v7, v8, :cond_42

    add-int/lit8 v7, v5, 0x4

    aget-byte v7, p1, v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v7

    if-ne v7, v8, :cond_42

    add-int/lit8 v7, v5, 0x5

    aget-byte v7, p1, v7

    .line 54
    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v7

    if-ne v7, v8, :cond_42

    add-int/lit8 v7, v5, 0x6

    aget-byte v7, p1, v7

    invoke-static {v7}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v7

    if-ne v7, v8, :cond_42

    goto :goto_a4

    .line 57
    :cond_42
    new-instance v7, Lcom/keephealth/android/model/bean/Alarm;

    invoke-direct {v7}, Lcom/keephealth/android/model/bean/Alarm;-><init>()V

    add-int/lit8 v8, v5, 0x6

    .line 58
    aget-byte v8, p1, v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmType(I)V

    add-int/lit8 v8, v5, 0x4

    .line 59
    aget-byte v8, p1, v8

    invoke-static {v8}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmHour(I)V

    add-int/lit8 v5, v5, 0x5

    .line 60
    aget-byte v5, p1, v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-virtual {v7, v5}, Lcom/keephealth/android/model/bean/Alarm;->setAlarmMinute(I)V

    .line 61
    aget-byte v5, p1, v6

    if-ne v5, v2, :cond_70

    .line 62
    invoke-virtual {v7, v2}, Lcom/keephealth/android/model/bean/Alarm;->setOn_off(Z)V

    goto :goto_9d

    :cond_70
    const/4 v6, 0x7

    .line 64
    new-array v6, v6, [Z

    .line 65
    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Byte2Int(B)I

    move-result v5

    invoke-static {v5}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->Int2Bit8(I)[B

    move-result-object v5

    .line 66
    aget-byte v8, v5, v3

    if-ne v8, v2, :cond_83

    .line 67
    invoke-virtual {v7, v2}, Lcom/keephealth/android/model/bean/Alarm;->setOn_off(Z)V

    goto :goto_86

    .line 69
    :cond_83
    invoke-virtual {v7, v3}, Lcom/keephealth/android/model/bean/Alarm;->setOn_off(Z)V

    :goto_86
    move v8, v2

    .line 71
    :goto_87
    array-length v9, v5

    if-ge v8, v9, :cond_9a

    .line 72
    aget-byte v9, v5, v8

    if-nez v9, :cond_93

    add-int/lit8 v9, v8, -0x1

    .line 73
    aput-boolean v3, v6, v9

    goto :goto_97

    :cond_93
    add-int/lit8 v9, v8, -0x1

    .line 75
    aput-boolean v2, v6, v9

    :goto_97
    add-int/lit8 v8, v8, 0x1

    goto :goto_87

    .line 78
    :cond_9a
    invoke-virtual {v7, v6}, Lcom/keephealth/android/model/bean/Alarm;->setWeekRepeat([Z)V

    .line 80
    :goto_9d
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_13

    .line 83
    :cond_a4
    :goto_a4
    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->saveAlarms(Ljava/util/List;)V

    .line 84
    new-instance p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {p1}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    .line 85
    iput-boolean v2, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 86
    iput-boolean v3, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object p1
.end method

.method public initData([B)V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x3

    .line 23
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToInt([B)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataLength:I

    .line 24
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    const/4 v0, 0x0

    .line 25
    :goto_13
    array-length v1, p1

    if-ge v0, v1, :cond_1f

    .line 26
    iget-object v1, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    .line 28
    :cond_1f
    array-length p1, p1

    iput p1, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataIndex:I

    return-void
.end method

.method public receiverData([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;
    .registers 10

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "flag_start:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataIndex:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " -- "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    array-length v3, v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    invoke-static {v3}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    array-length v4, v3

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    aget-byte v3, v3, v4

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "\u83b7\u53d6\u95f9\u949f\u6570\u636e"

    invoke-static {v3, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 33
    :goto_51
    array-length v4, p1

    if-ge v0, v4, :cond_60

    .line 34
    iget-object v4, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    iget v6, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataIndex:I

    add-int/2addr v6, v0

    aget-byte v7, p1, v0

    aput-byte v7, v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_51

    .line 36
    :cond_60
    iget v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataIndex:I

    array-length p1, p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataIndex:I

    .line 37
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataIndex:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    array-length v1, v0

    sub-int/2addr v1, v5

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    invoke-static {v0}, Lcom/keephealth/android/util/ble/ByteDataConvertUtil;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget p1, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataIndex:I

    iget-object v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    array-length v1, v0

    if-ne p1, v1, :cond_cd

    invoke-static {v0}, Lcom/keephealth/android/util/ble/CmdHelper;->completeCheckCodeReceive([B)B

    move-result p1

    and-int/lit16 p1, p1, 0xff

    iget-object v0, p0, Lcom/keephealth/android/util/ble/AlarmDataHandler;->dataByte:[B

    array-length v1, v0

    sub-int/2addr v1, v5

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    if-ne p1, v1, :cond_cd

    .line 39
    invoke-virtual {p0, v0}, Lcom/keephealth/android/util/ble/AlarmDataHandler;->handlerAlarmData([B)Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    move-result-object p1

    return-object p1

    .line 41
    :cond_cd
    new-instance p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;

    invoke-direct {p1}, Lcom/keephealth/android/util/ble/HandlerBleDataResult;-><init>()V

    .line 42
    iput-boolean v5, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->isComplete:Z

    .line 43
    iput-boolean v5, p1, Lcom/keephealth/android/util/ble/HandlerBleDataResult;->hasNext:Z

    return-object p1
.end method
