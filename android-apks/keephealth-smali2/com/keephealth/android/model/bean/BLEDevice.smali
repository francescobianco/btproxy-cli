.class public Lcom/keephealth/android/model/bean/BLEDevice;
.super Ljava/lang/Object;
.source "BLEDevice.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Comparable<",
        "Lcom/keephealth/android/model/bean/BLEDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x486907be67192890L


# instance fields
.field public bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field private deviceType:I

.field private filePath:Ljava/lang/String;

.field public isBind:Z

.field private isBonded:Z

.field private isConnected:Z

.field private isDfu:Z

.field private mBytes:[B

.field public mDeviceAddress:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mac"
    .end annotation
.end field

.field public mDeviceDfuName:Ljava/lang/String;

.field public mDeviceName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "name"
    .end annotation
.end field

.field public mDeviceProduct:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "model"
    .end annotation
.end field

.field public mDeviceVersion:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field public mRssi:I

.field public power:I

.field private scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    const/4 v1, 0x1

    .line 26
    iput-boolean v1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isConnected:Z

    .line 28
    iput-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceDfuName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/keephealth/android/model/bean/BLEDevice;)I
    .registers 3

    .line 140
    iget v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    iget p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    if-le v0, p1, :cond_8

    const/4 p1, -0x1

    goto :goto_d

    :cond_8
    if-ne v0, p1, :cond_c

    const/4 p1, 0x0

    goto :goto_d

    :cond_c
    const/4 p1, 0x1

    :goto_d
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 11
    check-cast p1, Lcom/keephealth/android/model/bean/BLEDevice;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/bean/BLEDevice;->compareTo(Lcom/keephealth/android/model/bean/BLEDevice;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_4
    check-cast p1, Lcom/keephealth/android/model/bean/BLEDevice;

    .line 148
    iget-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .registers 2

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDeviceType()I
    .registers 2

    .line 61
    iget v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->deviceType:I

    return v0
.end method

.method public getFilePath()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;
    .registers 2

    .line 87
    iget-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    return-object v0
.end method

.method public getmBytes()[B
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mBytes:[B

    return-object v0
.end method

.method public getmDeviceAddress()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getmDeviceName()Ljava/lang/String;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    return-object v0
.end method

.method public getmDeviceProduct()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    return-object v0
.end method

.method public isBind()Z
    .registers 2

    .line 104
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isBind:Z

    return v0
.end method

.method public isBonded()Z
    .registers 2

    .line 95
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isBonded:Z

    return v0
.end method

.method public isConnected()Z
    .registers 2

    .line 120
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isConnected:Z

    return v0
.end method

.method public isDfu()Z
    .registers 2

    .line 131
    iget-boolean v0, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu:Z

    return v0
.end method

.method public setBind(Z)V
    .registers 2

    .line 108
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isBind:Z

    return-void
.end method

.method public setBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->bluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method

.method public setBonded(Z)V
    .registers 2

    .line 99
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isBonded:Z

    return-void
.end method

.method public setConnected(Z)V
    .registers 2

    .line 124
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isConnected:Z

    return-void
.end method

.method public setDeviceType(I)V
    .registers 2

    .line 65
    iput p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->deviceType:I

    return-void
.end method

.method public setDfu(ZI)V
    .registers 5

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setDfu:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  a:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "3423rew22"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    iput-boolean p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->isDfu:Z

    return-void
.end method

.method public setFilePath(Ljava/lang/String;)V
    .registers 2

    .line 83
    iput-object p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->filePath:Ljava/lang/String;

    return-void
.end method

.method public setScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    .registers 2

    .line 91
    iput-object p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    return-void
.end method

.method public setmBytes([B)V
    .registers 2

    .line 116
    iput-object p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mBytes:[B

    return-void
.end method

.method public setmDeviceAddress(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    return-void
.end method

.method public setmDeviceName(Ljava/lang/String;)V
    .registers 2

    .line 75
    iput-object p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    return-void
.end method

.method public setmDeviceProduct(Ljava/lang/String;)V
    .registers 2

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BLEDevice{mDeviceName=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mDeviceAddress=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mDeviceProduct=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mDeviceVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', mRssi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/keephealth/android/model/bean/BLEDevice;->mRssi:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
