.class public Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
.super Ljava/lang/Object;
.source "ConnParameters.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private connIntervalMax:D

.field private connIntervalMin:D

.field private mProperties:Ljava/lang/String;

.field private mUUID:Ljava/util/UUID;

.field private slaveLatency:I

.field private supervisionTimeout:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters$1;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters$1;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mUUID:Ljava/util/UUID;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mProperties:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const-string v0, "0000ff01-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mUUID:Ljava/util/UUID;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mProperties:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/util/UUID;

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mUUID:Ljava/util/UUID;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mProperties:Ljava/lang/String;

    .line 120
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMin:D

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMax:D

    .line 122
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->slaveLatency:I

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->supervisionTimeout:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getConnIntervalMax()D
    .registers 3

    .line 68
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMax:D

    return-wide v0
.end method

.method public getConnIntervalMin()D
    .registers 3

    .line 60
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMin:D

    return-wide v0
.end method

.method public getProperties()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mProperties:Ljava/lang/String;

    return-object v0
.end method

.method public getSlaveLatency()I
    .registers 2

    .line 76
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->slaveLatency:I

    return v0
.end method

.method public getSupervisionTimeout()I
    .registers 2

    .line 84
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->supervisionTimeout:I

    return v0
.end method

.method public getUUID()Ljava/util/UUID;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mUUID:Ljava/util/UUID;

    return-object v0
.end method

.method public setConnIntervalMax(D)V
    .registers 3

    .line 72
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMax:D

    return-void
.end method

.method public setConnIntervalMin(D)V
    .registers 3

    .line 64
    iput-wide p1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMin:D

    return-void
.end method

.method public setProperties(Ljava/lang/String;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mProperties:Ljava/lang/String;

    return-void
.end method

.method public setSlaveLatency(I)V
    .registers 2

    .line 80
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->slaveLatency:I

    return-void
.end method

.method public setSupervisionTimeout(I)V
    .registers 2

    .line 88
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->supervisionTimeout:I

    return-void
.end method

.method public setUUID(Ljava/util/UUID;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mUUID:Ljava/util/UUID;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ConnParameters:{UUID = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mUUID:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Connection Interval Min = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMin:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Connection Interval Max = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMax:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Slave Latency = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->slaveLatency:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Supervision Timeout Multiplier = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->supervisionTimeout:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 106
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mUUID:Ljava/util/UUID;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    .line 107
    iget-object p2, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->mProperties:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 108
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMin:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 109
    iget-wide v0, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->connIntervalMax:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 110
    iget p2, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->slaveLatency:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget p2, p0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;->supervisionTimeout:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
