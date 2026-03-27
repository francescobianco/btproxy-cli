.class public Lcom/keephealth/android/model/bean/ScanNameBean;
.super Lcom/keephealth/android/base/BaseBean;
.source "ScanNameBean.java"


# instance fields
.field private address:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private rssi:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ScanNameBean;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/model/bean/ScanNameBean;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getRssi()I
    .registers 2

    .line 12
    iget v0, p0, Lcom/keephealth/android/model/bean/ScanNameBean;->rssi:I

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ScanNameBean;->address:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/model/bean/ScanNameBean;->name:Ljava/lang/String;

    return-void
.end method

.method public setRssi(I)V
    .registers 2

    .line 16
    iput p1, p0, Lcom/keephealth/android/model/bean/ScanNameBean;->rssi:I

    return-void
.end method
