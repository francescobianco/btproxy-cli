.class public final Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
.super Ljava/lang/Object;
.source "ScanSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mCallbackType:I

.field private mMatchLostDeviceTimeout:J

.field private mMatchLostTaskInterval:J

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private mPowerSaveRestInterval:J

.field private mPowerSaveScanInterval:J

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mUseHardwareBatchingIfSupported:Z

.field private mUseHardwareCallbackTypesIfSupported:Z

.field private mUseHardwareFilteringIfSupported:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    .line 278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 279
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mScanMode:I

    const/4 v0, 0x1

    .line 280
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mCallbackType:I

    const-wide/16 v1, 0x0

    .line 281
    iput-wide v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mReportDelayMillis:J

    .line 282
    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchMode:I

    const/4 v3, 0x3

    .line 283
    iput v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    .line 284
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareFilteringIfSupported:Z

    .line 285
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareBatchingIfSupported:Z

    .line 286
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareCallbackTypesIfSupported:Z

    const-wide/16 v3, 0x2710

    .line 287
    iput-wide v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchLostDeviceTimeout:J

    .line 288
    iput-wide v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchLostTaskInterval:J

    .line 289
    iput-wide v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mPowerSaveRestInterval:J

    .line 290
    iput-wide v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mPowerSaveScanInterval:J

    return-void
.end method

.method private isValidCallbackType(I)Z
    .registers 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f

    const/4 v1, 0x2

    if-eq p1, v1, :cond_f

    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    goto :goto_f

    :cond_a
    const/4 v1, 0x6

    if-ne p1, v1, :cond_e

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :cond_f
    :goto_f
    return v0
.end method


# virtual methods
.method public build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
    .registers 24

    move-object/from16 v0, p0

    .line 456
    new-instance v20, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-object/from16 v1, v20

    iget v2, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mScanMode:I

    iget v3, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mCallbackType:I

    iget-wide v4, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mReportDelayMillis:J

    iget v6, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchMode:I

    iget v7, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    iget-boolean v8, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareFilteringIfSupported:Z

    iget-boolean v9, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareBatchingIfSupported:Z

    iget-boolean v10, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareCallbackTypesIfSupported:Z

    iget-wide v11, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchLostDeviceTimeout:J

    iget-wide v13, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchLostTaskInterval:J

    move-object/from16 v21, v1

    move/from16 v22, v2

    iget-wide v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mPowerSaveScanInterval:J

    move-wide v15, v1

    iget-wide v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mPowerSaveRestInterval:J

    move-wide/from16 v17, v1

    const/16 v19, 0x0

    move-object/from16 v1, v21

    move/from16 v2, v22

    invoke-direct/range {v1 .. v19}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;-><init>(IIJIIZZZJJJJLcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;)V

    return-object v20
.end method

.method public setCallbackType(I)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 5

    .line 316
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->isValidCallbackType(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 319
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mCallbackType:I

    return-object p0

    .line 317
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid callback type - "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMatchMode(I)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x2

    if-gt p1, v0, :cond_9

    .line 380
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchMode:I

    return-object p0

    .line 378
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid matchMode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setMatchOptions(JJ)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    cmp-long v0, p3, v0

    if-lez v0, :cond_f

    .line 430
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchLostDeviceTimeout:J

    .line 431
    iput-wide p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mMatchLostTaskInterval:J

    return-object p0

    .line 428
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "maxDeviceAgeMillis and taskIntervalMillis must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setNumOfMatches(I)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x3

    if-gt p1, v0, :cond_9

    .line 363
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mNumOfMatchesPerFilter:I

    return-object p0

    .line 361
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid numOfMatches "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPowerSave(JJ)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 8

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_f

    cmp-long v0, p3, v0

    if-lez v0, :cond_f

    .line 447
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mPowerSaveScanInterval:J

    .line 448
    iput-wide p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mPowerSaveRestInterval:J

    return-object p0

    .line 445
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "scanInterval and restInterval must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setReportDelay(J)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_9

    .line 345
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mReportDelayMillis:J

    return-object p0

    .line 343
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "reportDelay must be > 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setScanMode(I)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 5

    const/4 v0, -0x1

    if-lt p1, v0, :cond_9

    const/4 v0, 0x2

    if-gt p1, v0, :cond_9

    .line 304
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mScanMode:I

    return-object p0

    .line 302
    :cond_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid scan mode "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setUseHardwareBatchingIfSupported(Z)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 2

    .line 403
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareBatchingIfSupported:Z

    return-object p0
.end method

.method public setUseHardwareCallbackTypesIfSupported(Z)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 2

    .line 415
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareCallbackTypesIfSupported:Z

    return-object p0
.end method

.method public setUseHardwareFilteringIfSupported(Z)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    .registers 2

    .line 391
    iput-boolean p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;->mUseHardwareFilteringIfSupported:Z

    return-object p0
.end method
