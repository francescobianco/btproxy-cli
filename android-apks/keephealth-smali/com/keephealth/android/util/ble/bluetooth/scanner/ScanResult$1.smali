.class Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult$1;
.super Ljava/lang/Object;
.source "ScanResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;
    .registers 4

    .line 187
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;-><init>(Landroid/os/Parcel;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 184
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;
    .registers 2

    .line 192
    new-array p1, p1, [Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 184
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult$1;->newArray(I)[Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanResult;

    move-result-object p1

    return-object p1
.end method
