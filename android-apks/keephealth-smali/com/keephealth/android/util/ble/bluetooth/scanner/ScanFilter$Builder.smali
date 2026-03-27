.class public final Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
.super Ljava/lang/Object;
.source "ScanFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mDeviceAddress:Ljava/lang/String;

.field private mDeviceName:Ljava/lang/String;

.field private mManufacturerData:[B

.field private mManufacturerDataMask:[B

.field private mManufacturerId:I

.field private mServiceData:[B

.field private mServiceDataMask:[B

.field private mServiceDataUuid:Landroid/os/ParcelUuid;

.field private mServiceUuid:Landroid/os/ParcelUuid;

.field private mUuidMask:Landroid/os/ParcelUuid;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 433
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerId:I

    return-void
.end method


# virtual methods
.method public build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;
    .registers 14

    .line 593
    new-instance v12, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    iget-object v4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    iget-object v5, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    iget-object v6, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceData:[B

    iget-object v7, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    iget v8, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerId:I

    iget-object v9, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerData:[B

    iget-object v10, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    const/4 v11, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v11}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;[B[BI[B[BLcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$1;)V

    return-object v12
.end method

.method public setDeviceAddress(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    .registers 5

    if-eqz p1, :cond_1e

    .line 455
    invoke-static {p1}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    .line 456
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid device address "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 458
    :cond_1e
    :goto_1e
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mDeviceAddress:Ljava/lang/String;

    return-object p0
.end method

.method public setDeviceName(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    .registers 2

    .line 442
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public setManufacturerData(I[B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    .registers 3

    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    .line 545
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 547
    :cond_d
    :goto_d
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerId:I

    .line 548
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerData:[B

    const/4 p1, 0x0

    .line 549
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setManufacturerData(I[B[B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    .registers 6

    if-eqz p2, :cond_d

    if-ltz p1, :cond_5

    goto :goto_d

    .line 567
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "invalid manufacture id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 569
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    if-eqz v0, :cond_2a

    .line 570
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerData:[B

    if-eqz v1, :cond_22

    .line 576
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_1a

    goto :goto_2a

    .line 577
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for manufacturerData and manufacturerDataMask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 571
    :cond_22
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "manufacturerData is null while manufacturerDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 581
    :cond_2a
    :goto_2a
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerId:I

    .line 582
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerData:[B

    .line 583
    iput-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mManufacturerDataMask:[B

    return-object p0
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    .registers 3

    if-eqz p1, :cond_a

    .line 497
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 498
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceData:[B

    const/4 p1, 0x0

    .line 499
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    .line 495
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    .registers 6

    if-eqz p1, :cond_26

    .line 518
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    if-eqz v0, :cond_1f

    .line 519
    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceData:[B

    if-eqz v1, :cond_17

    .line 525
    array-length v1, v1

    array-length v0, v0

    if-ne v1, v0, :cond_f

    goto :goto_1f

    .line 526
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "size mismatch for service data and service data mask"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 520
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceData is null while serviceDataMask is not null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 530
    :cond_1f
    :goto_1f
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceDataUuid:Landroid/os/ParcelUuid;

    .line 531
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceData:[B

    .line 532
    iput-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceDataMask:[B

    return-object p0

    .line 516
    :cond_26
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "serviceDataUuid is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    .registers 2

    .line 466
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    const/4 p1, 0x0

    .line 467
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method

.method public setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;
    .registers 4

    .line 480
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    if-eqz v0, :cond_9

    goto :goto_11

    .line 481
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "uuid is null while uuidMask is not null!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 483
    :cond_11
    :goto_11
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mServiceUuid:Landroid/os/ParcelUuid;

    .line 484
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->mUuidMask:Landroid/os/ParcelUuid;

    return-object p0
.end method
