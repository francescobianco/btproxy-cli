.class Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;
.super Ljava/lang/Object;
.source "ScanSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
    .registers 4

    .line 255
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;-><init>(Landroid/os/Parcel;Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 247
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;->createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;
    .registers 2

    .line 250
    new-array p1, p1, [Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 247
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings$1;->newArray(I)[Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanSettings;

    move-result-object p1

    return-object p1
.end method
