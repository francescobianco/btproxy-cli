.class public Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$Builder;
    }
.end annotation


# static fields
.field public static final CALLBACK_TYPE_ALL_MATCHES:I = 0x1

.field public static final CALLBACK_TYPE_FIRST_MATCH:I = 0x2

.field public static final CALLBACK_TYPE_MATCH_LOST:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;",
            ">;"
        }
    .end annotation
.end field

.field public static final MATCH_LOST_DEVICE_TIMEOUT_DEFAULT:J = 0x2710L

.field public static final MATCH_LOST_TASK_INTERVAL_DEFAULT:J = 0x2710L

.field public static final MATCH_MODE_AGGRESSIVE:I = 0x1

.field public static final MATCH_MODE_STICKY:I = 0x2

.field public static final MATCH_NUM_FEW_ADVERTISEMENT:I = 0x2

.field public static final MATCH_NUM_MAX_ADVERTISEMENT:I = 0x3

.field public static final MATCH_NUM_ONE_ADVERTISEMENT:I = 0x1

.field public static final SCAN_MODE_BALANCED:I = 0x1

.field public static final SCAN_MODE_LOW_LATENCY:I = 0x2

.field public static final SCAN_MODE_LOW_POWER:I = 0x0

.field public static final SCAN_MODE_OPPORTUNISTIC:I = -0x1


# instance fields
.field private mCallbackType:I

.field private mMatchLostDeviceTimeout:J

.field private mMatchLostTaskInterval:J

.field private mMatchMode:I

.field private mNumOfMatchesPerFilter:I

.field private final mPowerSaveRestInterval:J

.field private final mPowerSaveScanInterval:J

.field private mReportDelayMillis:J

.field private mScanMode:I

.field private mUseHardwareBatchingIfSupported:Z

.field private mUseHardwareCallbackTypesIfSupported:Z

.field private mUseHardwareFilteringIfSupported:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 247
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(IIJIIZZZJJJJ)V
    .registers 21

    move-object v0, p0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move v1, p1

    .line 202
    iput v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mScanMode:I

    move v1, p2

    .line 203
    iput v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mCallbackType:I

    move-wide v1, p3

    .line 204
    iput-wide v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mReportDelayMillis:J

    move v1, p6

    .line 205
    iput v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mNumOfMatchesPerFilter:I

    move v1, p5

    .line 206
    iput v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mMatchMode:I

    move v1, p7

    .line 207
    iput-boolean v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareFilteringIfSupported:Z

    move v1, p8

    .line 208
    iput-boolean v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareBatchingIfSupported:Z

    move v1, p9

    .line 209
    iput-boolean v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareCallbackTypesIfSupported:Z

    const-wide/32 v1, 0xf4240

    mul-long/2addr v1, p10

    .line 210
    iput-wide v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mMatchLostDeviceTimeout:J

    move-wide v1, p12

    .line 211
    iput-wide v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mMatchLostTaskInterval:J

    move-wide/from16 v1, p14

    .line 212
    iput-wide v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveScanInterval:J

    move-wide/from16 v1, p16

    .line 213
    iput-wide v1, v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveRestInterval:J

    return-void
.end method

.method synthetic constructor <init>(IIJIIZZZJJJJLcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;)V
    .registers 19

    .line 29
    invoke-direct/range {p0 .. p17}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;-><init>(IIJIIZZZJJJJ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 5

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mScanMode:I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mCallbackType:I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mReportDelayMillis:J

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mMatchMode:I

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mNumOfMatchesPerFilter:I

    .line 222
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2b

    move v0, v2

    goto :goto_2c

    :cond_2b
    move v0, v1

    :goto_2c
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareFilteringIfSupported:Z

    .line 223
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_35

    move v1, v2

    :cond_35
    iput-boolean v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareBatchingIfSupported:Z

    .line 224
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveScanInterval:J

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveRestInterval:J

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;)V
    .registers 3

    .line 29
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method disableUseHardwareCallbackTypes()V
    .registers 2

    const/4 v0, 0x0

    .line 181
    iput-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareCallbackTypesIfSupported:Z

    return-void
.end method

.method public getCallbackType()I
    .registers 2

    .line 153
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mCallbackType:I

    return v0
.end method

.method public getMatchLostDeviceTimeout()J
    .registers 3

    .line 185
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mMatchLostDeviceTimeout:J

    return-wide v0
.end method

.method public getMatchLostTaskInterval()J
    .registers 3

    .line 189
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mMatchLostTaskInterval:J

    return-wide v0
.end method

.method public getMatchMode()I
    .registers 2

    .line 157
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mMatchMode:I

    return v0
.end method

.method public getNumOfMatches()I
    .registers 2

    .line 161
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mNumOfMatchesPerFilter:I

    return v0
.end method

.method public getPowerSaveRest()J
    .registers 3

    .line 268
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveRestInterval:J

    return-wide v0
.end method

.method public getPowerSaveScan()J
    .registers 3

    .line 272
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveScanInterval:J

    return-wide v0
.end method

.method public getReportDelayMillis()J
    .registers 3

    .line 196
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mReportDelayMillis:J

    return-wide v0
.end method

.method public getScanMode()I
    .registers 2

    .line 149
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mScanMode:I

    return v0
.end method

.method public getUseHardwareBatchingIfSupported()Z
    .registers 2

    .line 169
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareBatchingIfSupported:Z

    return v0
.end method

.method public getUseHardwareCallbackTypesIfSupported()Z
    .registers 2

    .line 173
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareCallbackTypesIfSupported:Z

    return v0
.end method

.method public getUseHardwareFilteringIfSupported()Z
    .registers 2

    .line 165
    iget-boolean v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareFilteringIfSupported:Z

    return v0
.end method

.method public hasPowerSaveMode()Z
    .registers 5

    .line 264
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveRestInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveScanInterval:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 230
    iget p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mScanMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mCallbackType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mReportDelayMillis:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 233
    iget p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mMatchMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    iget p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mNumOfMatchesPerFilter:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareFilteringIfSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 236
    iget-boolean p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mUseHardwareBatchingIfSupported:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveScanInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 238
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;->mPowerSaveRestInterval:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
