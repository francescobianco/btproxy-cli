.class public Lcom/keephealth/android/model/bean/ScanDeviceBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "ScanDeviceBean.java"


# instance fields
.field private address:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field public rssi:I

.field public scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ScanDeviceBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 30
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ScanDeviceBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .registers 2

    .line 14
    iget v0, p0, Lcom/keephealth/android/model/bean/ScanDeviceBean;->rssi:I

    return v0
.end method

.method public getScanRecord()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;
    .registers 2

    .line 22
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ScanDeviceBean;->scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    .line 42
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ScanDeviceBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ScanDeviceBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/keephealth/android/model/bean/ScanDeviceBean;->rssi:I

    return-void
.end method

.method public setScanRecord(Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;)V
    .registers 2

    .line 26
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ScanDeviceBean;->scanRecord:Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanRecord;

    return-void
.end method
