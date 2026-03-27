.class public Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;
.super Ljava/lang/Object;
.source "BleException.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final CONNECT:I = 0x1

.field public static final INDICATION:I = 0x6

.field public static final NOTIFICATION:I = 0x5

.field public static final READ_CHARACTERISTIC:I = 0x3

.field public static final READ_RSSI:I = 0x4

.field public static final SCAN:I = 0x0

.field public static final WRITE_CHARACTERISTIC:I = 0x2


# instance fields
.field private detailMessage:Ljava/lang/String;

.field private status:I

.field private type:I

.field private typeArr:[Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .registers 7

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x7

    .line 45
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SCAN"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CONNECT"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "WRITE_CHARACTERISTIC"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "READ_CHARACTERISTIC"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "READ_RSSI"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "NOTIFICATION"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "INDICATION"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->typeArr:[Ljava/lang/String;

    .line 53
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->status:I

    .line 54
    iput p2, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->type:I

    .line 55
    iput-object p3, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->detailMessage:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDetailMessage()Ljava/lang/String;
    .registers 2

    .line 84
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->detailMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .line 59
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->status:I

    return v0
.end method

.method public getType()I
    .registers 2

    .line 67
    iget v0, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->type:I

    return v0
.end method

.method public getTypeArr()[Ljava/lang/String;
    .registers 2

    .line 76
    iget-object v0, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->typeArr:[Ljava/lang/String;

    return-object v0
.end method

.method public setDetailMessage(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->detailMessage:Ljava/lang/String;

    return-object p0
.end method

.method public setStatus(I)V
    .registers 2

    .line 63
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->status:I

    return-void
.end method

.method public setType(I)Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;
    .registers 2

    .line 71
    iput p1, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->type:I

    return-object p0
.end method

.method public setTypeArr([Ljava/lang/String;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->typeArr:[Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BleException : \n{ \nstatus = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\ntype = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->typeArr:[Ljava/lang/String;

    iget v2, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->type:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",\ndetail = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/util/ble/bluetooth/exception/BleException;->detailMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
