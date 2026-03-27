.class Lcom/keephealth/android/util/ble/bluetooth/ConnParameters$1;
.super Ljava/lang/Object;
.source "ConnParameters.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    .registers 3

    .line 129
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    invoke-direct {v0, p1}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters$1;->createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;
    .registers 2

    .line 134
    new-array p1, p1, [Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 126
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/ConnParameters$1;->newArray(I)[Lcom/keephealth/android/util/ble/bluetooth/ConnParameters;

    move-result-object p1

    return-object p1
.end method
