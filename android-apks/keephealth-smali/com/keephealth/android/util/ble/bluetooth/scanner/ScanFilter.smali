.class public final Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;


# instance fields
.field private final mDeviceAddress:Ljava/lang/String;

.field private final mDeviceName:Ljava/lang/String;

.field private final mManufacturerData:[B

.field private final mManufacturerDataMask:[B

.field private final mManufacturerId:I

.field private final mServiceData:[B

.field private final mServiceDataMask:[B

.field private final mServiceDataUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuid:Landroid/os/ParcelUuid;

.field private final mServiceUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 69
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object v0

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->EMPTY:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    .line 144
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V
    .registers 11

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    .line 77
    iput-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 78
    iput-object p4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 79
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 81
    iput-object p6, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    .line 82
    iput-object p7, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    .line 83
    iput p8, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerId:I

    .line 84
    iput-object p9, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    .line 85
    iput-object p10, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$1;)V
    .registers 12

    .line 51
    invoke-direct/range {p0 .. p10}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[B)V

    return-void
.end method

.method private matchesPartialData([B[B[B)Z
    .registers 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_9

    if-eqz p3, :cond_7

    goto :goto_8

    :cond_7
    move v0, v1

    :goto_8
    return v0

    :cond_9
    if-eqz p3, :cond_34

    .line 359
    array-length v2, p3

    array-length v3, p1

    if-ge v2, v3, :cond_10

    goto :goto_34

    :cond_10
    if-nez p2, :cond_21

    move p2, v1

    .line 363
    :goto_13
    array-length v2, p1

    if-ge p2, v2, :cond_20

    .line 364
    aget-byte v2, p3, p2

    aget-byte v3, p1, p2

    if-eq v2, v3, :cond_1d

    return v1

    :cond_1d
    add-int/lit8 p2, p2, 0x1

    goto :goto_13

    :cond_20
    return v0

    :cond_21
    move v2, v1

    .line 370
    :goto_22
    array-length v3, p1

    if-ge v2, v3, :cond_33

    .line 371
    aget-byte v3, p2, v2

    aget-byte v4, p3, v2

    and-int/2addr v4, v3

    aget-byte v5, p1, v2

    and-int/2addr v3, v5

    if-eq v4, v3, :cond_30

    return v1

    :cond_30
    add-int/lit8 v2, v2, 0x1

    goto :goto_22

    :cond_33
    return v0

    :cond_34
    :goto_34
    return v1
.end method

.method private matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z
    .registers 10

    if-nez p2, :cond_7

    .line 342
    invoke-virtual {p1, p3}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 344
    :cond_7
    invoke-virtual {p1}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v0

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    and-long/2addr v0, v2

    .line 345
    invoke-virtual {p3}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getLeastSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_1f

    return v1

    .line 348
    :cond_1f
    invoke-virtual {p1}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v2

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    and-long/2addr v2, v4

    .line 349
    invoke-virtual {p3}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide v4

    invoke-virtual {p2}, Ljava/util/UUID;->getMostSignificantBits()J

    move-result-wide p1

    and-long/2addr p1, v4

    cmp-long p1, v2, p1

    if-nez p1, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1
.end method

.method private matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelUuid;",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    if-nez p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p3, :cond_8

    return v1

    .line 330
    :cond_8
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_c
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2f

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelUuid;

    if-nez p2, :cond_1c

    const/4 v3, 0x0

    goto :goto_20

    .line 331
    :cond_1c
    invoke-virtual {p2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v3

    .line 332
    :goto_20
    invoke-virtual {p1}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v4

    invoke-virtual {v2}, Landroid/os/ParcelUuid;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-direct {p0, v4, v3, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->matchesServiceUuid(Ljava/util/UUID;Ljava/util/UUID;Ljava/util/UUID;)Z

    move-result v2

    if-eqz v2, :cond_c

    return v0

    :cond_2f
    return v1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_77

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_77

    .line 405
    :cond_12
    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    .line 406
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    .line 407
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerId:I

    iget v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerId:I

    if-ne v2, v3, :cond_75

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    .line 409
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    .line 410
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 411
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    .line 412
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    .line 413
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->deepEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 414
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    iget-object p1, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 415
    invoke-static {v2, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_75

    goto :goto_76

    :cond_75
    move v0, v1

    :goto_76
    return v0

    :cond_77
    :goto_77
    return v1
.end method

.method public getDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceName()Ljava/lang/String;
    .registers 2

    .line 213
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturerData()[B
    .registers 2

    .line 258
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    return-object v0
.end method

.method public getManufacturerDataMask()[B
    .registers 2

    .line 263
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    return-object v0
.end method

.method public getManufacturerId()I
    .registers 2

    .line 253
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerId:I

    return v0
.end method

.method public getServiceData()[B
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    return-object v0
.end method

.method public getServiceDataMask()[B
    .registers 2

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    return-object v0
.end method

.method public getServiceDataUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuid()Landroid/os/ParcelUuid;
    .registers 2

    .line 221
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public getServiceUuidMask()Landroid/os/ParcelUuid;
    .registers 2

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    return-object v0
.end method

.method public hashCode()I
    .registers 11

    .line 392
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    iget v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    iget-object v7, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    iget-object v8, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v9, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    filled-new-array/range {v0 .. v9}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public matches(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 274
    :cond_4
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 276
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v2, :cond_19

    if-eqz v1, :cond_18

    .line 277
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    :cond_18
    return v0

    .line 281
    :cond_19
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object p1

    if-nez p1, :cond_30

    .line 284
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    if-nez v1, :cond_2f

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    if-eqz v1, :cond_30

    :cond_2f
    return v0

    .line 291
    :cond_30
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v1, :cond_3f

    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    return v0

    .line 296
    :cond_3f
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_50

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    .line 297
    invoke-virtual {p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getServiceUuids()Ljava/util/List;

    move-result-object v3

    .line 296
    invoke-direct {p0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->matchesServiceUuids(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Ljava/util/List;)Z

    move-result v1

    if-nez v1, :cond_50

    return v0

    .line 302
    :cond_50
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v1, :cond_63

    .line 303
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    .line 304
    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getServiceData(Landroid/os/ParcelUuid;)[B

    move-result-object v1

    .line 303
    invoke-direct {p0, v2, v3, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result v1

    if-nez v1, :cond_63

    return v0

    .line 310
    :cond_63
    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerId:I

    if-ltz v1, :cond_76

    .line 311
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    .line 312
    invoke-virtual {p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getManufacturerSpecificData(I)[B

    move-result-object p1

    .line 311
    invoke-direct {p0, v2, v3, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->matchesPartialData([B[B[B)Z

    move-result p1

    if-nez p1, :cond_76

    return v0

    :cond_76
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BluetoothLeScanFilter [mDeviceName="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDeviceAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mUuidMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataUuid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 383
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    .line 384
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mServiceDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    .line 385
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    .line 386
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mManufacturerDataMask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    .line 387
    invoke-static {v1}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 95
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8

    move v0, v1

    goto :goto_9

    :cond_8
    move v0, v2

    :goto_9
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceName:Ljava/lang/String;

    if-eqz v0, :cond_13

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 99
    :cond_13
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-nez v0, :cond_19

    move v0, v1

    goto :goto_1a

    :cond_19
    move v0, v2

    :goto_1a
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mDeviceAddress:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 101
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 103
    :cond_24
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_2a

    move v0, v1

    goto :goto_2b

    :cond_2a
    move v0, v2

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 104
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_46

    .line 105
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 106
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-nez v0, :cond_3b

    move v0, v1

    goto :goto_3c

    :cond_3b
    move v0, v2

    :goto_3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 107
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_46

    .line 108
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 111
    :cond_46
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-nez v0, :cond_4c

    move v0, v1

    goto :goto_4d

    :cond_4c
    move v0, v2

    :goto_4d
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_85

    .line 113
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 114
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    if-nez p2, :cond_5d

    move p2, v1

    goto :goto_5e

    :cond_5d
    move p2, v2

    :goto_5e
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    if-eqz p2, :cond_85

    .line 116
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 119
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    if-nez p2, :cond_74

    move p2, v1

    goto :goto_75

    :cond_74
    move p2, v2

    :goto_75
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    if-eqz p2, :cond_85

    .line 121
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mServiceDataMask:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 126
    :cond_85
    iget p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    if-nez p2, :cond_90

    move p2, v1

    goto :goto_91

    :cond_90
    move p2, v2

    :goto_91
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    if-eqz p2, :cond_b7

    .line 129
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerData:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 132
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    if-nez p2, :cond_a6

    goto :goto_a7

    :cond_a6
    move v1, v2

    :goto_a7
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    if-eqz p2, :cond_b7

    .line 134
    array-length p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;->mManufacturerDataMask:[B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    :cond_b7
    return-void
.end method
