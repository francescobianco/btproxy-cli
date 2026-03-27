.class Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$1;
.super Ljava/lang/Object;
.source "ScanFilter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;
    .registers 7

    .line 153
    new-instance v0, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    invoke-direct {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;-><init>()V

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_13

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setDeviceName(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    .line 157
    :cond_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_20

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setDeviceAddress(Ljava/lang/String;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    .line 160
    :cond_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_4a

    .line 161
    const-class v1, Landroid/os/ParcelUuid;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 162
    invoke-virtual {v0, v1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_4a

    .line 164
    const-class v3, Landroid/os/ParcelUuid;

    .line 165
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 164
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    .line 166
    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    .line 169
    :cond_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_81

    .line 170
    const-class v1, Landroid/os/ParcelUuid;

    .line 171
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/ParcelUuid;

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_81

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 174
    new-array v3, v3, [B

    .line 175
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-nez v4, :cond_75

    .line 177
    invoke-virtual {v0, v1, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    goto :goto_81

    .line 179
    :cond_75
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 180
    new-array v4, v4, [B

    .line 181
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->readByteArray([B)V

    .line 182
    invoke-virtual {v0, v1, v3, v4}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setServiceData(Landroid/os/ParcelUuid;[B[B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    .line 188
    :cond_81
    :goto_81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-ne v3, v2, :cond_aa

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 191
    new-array v2, v2, [B

    .line 192
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-nez v3, :cond_9e

    .line 194
    invoke-virtual {v0, v1, v2}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setManufacturerData(I[B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    goto :goto_aa

    .line 196
    :cond_9e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 197
    new-array v3, v3, [B

    .line 198
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 199
    invoke-virtual {v0, v1, v2, v3}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->setManufacturerData(I[B[B)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;

    .line 204
    :cond_aa
    :goto_aa
    invoke-virtual {v0}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$Builder;->build()Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;
    .registers 2

    .line 148
    new-array p1, p1, [Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 144
    invoke-virtual {p0, p1}, Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter$1;->newArray(I)[Lcom/keephealth/android/util/ble/bluetooth/scanner/ScanFilter;

    move-result-object p1

    return-object p1
.end method
