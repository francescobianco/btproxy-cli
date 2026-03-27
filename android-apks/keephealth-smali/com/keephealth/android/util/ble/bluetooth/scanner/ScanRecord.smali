.class public Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;
.super Ljava/lang/Object;
.source "ScanRecord.java"


# static fields
.field private static final DATA_TYPE_FLAGS:I = 0x1

.field private static final DATA_TYPE_LOCAL_NAME_COMPLETE:I = 0x9

.field private static final DATA_TYPE_LOCAL_NAME_SHORT:I = 0x8

.field private static final DATA_TYPE_MANUFACTURER_SPECIFIC_DATA:I = 0xff

.field private static final DATA_TYPE_SERVICE_DATA:I = 0x16

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_COMPLETE:I = 0x7

.field private static final DATA_TYPE_SERVICE_UUIDS_128_BIT_PARTIAL:I = 0x6

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_COMPLETE:I = 0x3

.field private static final DATA_TYPE_SERVICE_UUIDS_16_BIT_PARTIAL:I = 0x2

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_COMPLETE:I = 0x5

.field private static final DATA_TYPE_SERVICE_UUIDS_32_BIT_PARTIAL:I = 0x4

.field private static final DATA_TYPE_TX_POWER_LEVEL:I = 0xa

.field private static final TAG:Ljava/lang/String; = "ScanRecord"


# instance fields
.field private final mAdvertiseFlags:I

.field private final mBytes:[B

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private final mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field

.field private final mTxPowerLevel:I

.field private parcelId:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;",
            "Landroid/util/SparseArray<",
            "[B>;",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;II",
            "Ljava/lang/String;",
            "[B)V"
        }
    .end annotation

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mServiceUuids:Ljava/util/List;

    .line 153
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 154
    iput-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mServiceData:Ljava/util/Map;

    .line 155
    iput-object p6, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mDeviceName:Ljava/lang/String;

    .line 156
    iput p4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mAdvertiseFlags:I

    .line 157
    iput p5, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mTxPowerLevel:I

    .line 158
    iput-object p7, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mBytes:[B

    .line 159
    invoke-direct {p0, p7}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->setParcelId([B)V

    return-void
.end method

.method private static extractBytes([BII)[B
    .registers 5

    .line 316
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 317
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method static parseFromBytes([B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;
    .registers 16

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 203
    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 207
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 208
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/high16 v6, -0x80000000

    move-object v8, v0

    move v7, v6

    move v6, v3

    .line 211
    :goto_1a
    :try_start_1a
    array-length v3, p0

    if-ge v2, v3, :cond_87

    add-int/lit8 v3, v2, 0x1

    .line 213
    aget-byte v9, p0, v2

    const/16 v10, 0xff

    and-int/2addr v9, v10

    if-nez v9, :cond_27

    goto :goto_87

    :cond_27
    add-int/lit8 v11, v9, -0x1

    add-int/lit8 v12, v2, 0x2

    .line 220
    aget-byte v3, p0, v3

    and-int/2addr v3, v10

    const/16 v13, 0x16

    const/4 v14, 0x2

    if-eq v3, v13, :cond_71

    if-eq v3, v10, :cond_5a

    packed-switch v3, :pswitch_data_c0

    goto :goto_84

    .line 246
    :pswitch_39
    aget-byte v7, p0, v12

    goto :goto_84

    .line 242
    :pswitch_3c
    new-instance v8, Ljava/lang/String;

    .line 243
    invoke-static {p0, v12, v11}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->extractBytes([BII)[B

    move-result-object v2

    invoke-direct {v8, v2}, Ljava/lang/String;-><init>([B)V

    goto :goto_84

    :pswitch_46
    const/16 v2, 0x10

    .line 237
    invoke-static {p0, v12, v11, v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_84

    :pswitch_4c
    const/4 v2, 0x4

    .line 232
    invoke-static {p0, v12, v11, v2, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_84

    .line 227
    :pswitch_51
    invoke-static {p0, v12, v11, v14, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseServiceUuid([BIIILjava/util/List;)I

    goto :goto_84

    .line 223
    :pswitch_55
    aget-byte v2, p0, v12

    and-int/lit16 v6, v2, 0xff

    goto :goto_84

    :cond_5a
    add-int/lit8 v3, v2, 0x3

    .line 263
    aget-byte v3, p0, v3

    and-int/2addr v3, v10

    shl-int/lit8 v3, v3, 0x8

    aget-byte v13, p0, v12

    and-int/2addr v10, v13

    add-int/2addr v3, v10

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v9, v9, -0x3

    .line 265
    invoke-static {p0, v2, v9}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->extractBytes([BII)[B

    move-result-object v2

    .line 267
    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_84

    .line 252
    :cond_71
    invoke-static {p0, v12, v14}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->extractBytes([BII)[B

    move-result-object v3

    .line 254
    invoke-static {v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v3

    add-int/lit8 v2, v2, 0x4

    add-int/lit8 v9, v9, -0x3

    .line 256
    invoke-static {p0, v2, v9}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->extractBytes([BII)[B

    move-result-object v2

    .line 258
    invoke-interface {v5, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_84
    add-int v2, v12, v11

    goto :goto_1a

    .line 276
    :cond_87
    :goto_87
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_8f

    move-object v3, v0

    goto :goto_90

    :cond_8f
    move-object v3, v1

    .line 279
    :goto_90
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-object v2, v0

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V
    :try_end_97
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_97} :catch_98

    return-object v0

    .line 282
    :catch_98
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unable to parse scan record: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScanRecord"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    const/high16 v7, -0x80000000

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object v2, v0

    move-object v9, p0

    invoke-direct/range {v2 .. v9}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;IILjava/lang/String;[B)V

    return-object v0

    nop

    :pswitch_data_c0
    .packed-switch 0x1
        :pswitch_55
        :pswitch_51
        :pswitch_51
        :pswitch_4c
        :pswitch_4c
        :pswitch_46
        :pswitch_46
        :pswitch_3c
        :pswitch_3c
        :pswitch_39
    .end packed-switch
.end method

.method private static parseServiceUuid([BIIILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BIII",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)I"
        }
    .end annotation

    :goto_0
    if-lez p2, :cond_10

    .line 305
    invoke-static {p0, p1, p3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->extractBytes([BII)[B

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/BluetoothUuid;->parseUuidFrom([B)Landroid/os/ParcelUuid;

    move-result-object v0

    invoke-interface {p4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sub-int/2addr p2, p3

    add-int/2addr p1, p3

    goto :goto_0

    :cond_10
    return p1
.end method

.method private setParcelId([B)V
    .registers 7

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 175
    array-length v1, p1

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_30

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xa

    if-ge v3, v4, :cond_22

    .line 177
    const-string v4, "0"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2d

    .line 180
    :cond_22
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 183
    :cond_30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x15

    const/16 v1, 0x1b

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parcelId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAdvertiseFlags()I
    .registers 2

    .line 77
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mAdvertiseFlags:I

    return v0
.end method

.method public getBytes()[B
    .registers 2

    .line 144
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mBytes:[B

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerSpecificData()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    return-object v0
.end method

.method public getManufacturerSpecificData(I)[B
    .registers 3

    .line 101
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getParcelId()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parcelId:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceData()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mServiceData:Ljava/util/Map;

    return-object v0
.end method

.method public getServiceData(Landroid/os/ParcelUuid;)[B
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 119
    :cond_4
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    return-object p1
.end method

.method public getServiceUuids()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mServiceUuids:Ljava/util/List;

    return-object v0
.end method

.method public getTxPowerLevel()I
    .registers 2

    .line 130
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mTxPowerLevel:I

    return v0
.end method

.method public setParcelId(Ljava/lang/String;)V
    .registers 2

    .line 170
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parcelId:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanRecord [mAdvertiseFlags="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mAdvertiseFlags:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceUuids="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mServiceUuids:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerSpecificData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mServiceData:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTxPowerLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mTxPowerLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
