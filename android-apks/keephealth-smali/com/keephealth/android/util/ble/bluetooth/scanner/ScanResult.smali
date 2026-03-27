.class public Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mRssi:I

.field private mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

.field private mTimestampNanos:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 184
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/bluetooth/BluetoothDevice;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;IJ)V
    .registers 6

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 55
    iput-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    .line 56
    iput p3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    .line 57
    iput-wide p4, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .registers 2

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult$1;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .registers 4

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 84
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 86
    :cond_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_21

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->parseFromBytes([B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    .line 89
    :cond_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_39

    .line 168
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_39

    .line 171
    :cond_12
    check-cast p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    .line 172
    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    iget v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    if-ne v2, v3, :cond_37

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    iget-object v3, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    .line 173
    invoke-static {v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    iget-wide v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    iget-wide v4, p1, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_37

    goto :goto_38

    :cond_37
    move v0, v1

    :goto_38
    return v0

    :cond_39
    :goto_39
    return v1
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 134
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getRssi()I
    .registers 2

    .line 148
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    return v0
.end method

.method public getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;
    .registers 2

    .line 141
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    return-object v0
.end method

.method public getTimestampNanos()J
    .registers 3

    .line 155
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public getmDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getmRssi()I
    .registers 2

    .line 110
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    return v0
.end method

.method public getmScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;
    .registers 2

    .line 102
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    return-object v0
.end method

.method public getmTimestampNanos()J
    .registers 3

    .line 118
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 6

    .line 160
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    iget-wide v3, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setmDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 98
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setmRssi(I)V
    .registers 2

    .line 114
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    return-void
.end method

.method public setmScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    return-void
.end method

.method public setmTimestampNanos(J)V
    .registers 3

    .line 122
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ScanResult{mDevice="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mScanRecord="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    .line 180
    invoke-static {v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTimestampNanos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6

    .line 66
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_f

    .line 67
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothDevice;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_12

    .line 70
    :cond_f
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    :goto_12
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    if-eqz p2, :cond_23

    .line 73
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mScanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    invoke-virtual {p2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;->getBytes()[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_26

    .line 76
    :cond_23
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    :goto_26
    iget p2, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mRssi:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;->mTimestampNanos:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
