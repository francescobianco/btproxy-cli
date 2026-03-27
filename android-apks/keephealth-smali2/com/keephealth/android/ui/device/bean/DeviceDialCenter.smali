.class public Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;
.super Ljava/lang/Object;
.source "DeviceDialCenter.java"


# instance fields
.field private backgroundId:I

.field private backgroundUrl:Ljava/lang/String;

.field private imageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBackgroundId()I
    .registers 2

    .line 25
    iget v0, p0, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->backgroundId:I

    return v0
.end method

.method public getBackgroundUrl()Ljava/lang/String;
    .registers 2

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->backgroundUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    .line 9
    iget-object v0, p0, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->imageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setBackgroundId(I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->backgroundId:I

    return-void
.end method

.method public setBackgroundUrl(Ljava/lang/String;)V
    .registers 2

    .line 21
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->backgroundUrl:Ljava/lang/String;

    return-void
.end method

.method public setImageUrl(Ljava/lang/String;)V
    .registers 2

    .line 13
    iput-object p1, p0, Lcom/keephealth/android/ui/device/bean/DeviceDialCenter;->imageUrl:Ljava/lang/String;

    return-void
.end method
