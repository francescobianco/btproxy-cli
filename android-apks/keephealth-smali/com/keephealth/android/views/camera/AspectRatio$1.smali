.class Lcom/keephealth/android/views/camera/AspectRatio$1;
.super Ljava/lang/Object;
.source "AspectRatio.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/views/camera/AspectRatio;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/keephealth/android/views/camera/AspectRatio;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/views/camera/AspectRatio;
    .registers 3

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-static {v0, p1}, Lcom/keephealth/android/views/camera/AspectRatio;->of(II)Lcom/keephealth/android/views/camera/AspectRatio;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/camera/AspectRatio$1;->createFromParcel(Landroid/os/Parcel;)Lcom/keephealth/android/views/camera/AspectRatio;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/keephealth/android/views/camera/AspectRatio;
    .registers 2

    .line 169
    new-array p1, p1, [Lcom/keephealth/android/views/camera/AspectRatio;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 2

    .line 158
    invoke-virtual {p0, p1}, Lcom/keephealth/android/views/camera/AspectRatio$1;->newArray(I)[Lcom/keephealth/android/views/camera/AspectRatio;

    move-result-object p1

    return-object p1
.end method
