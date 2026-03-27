.class Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver$1;
.super Landroid/os/Handler;
.source "LocationServiceChangeReceiver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;)V
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 47
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 48
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_8

    goto :goto_45

    .line 50
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "GPS Enabled: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->isGpsEnabled:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->access$000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", AppApplication.isGPSRequest: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u539f\u59cbLocationService"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGPSRequest:Z

    if-eqz p1, :cond_45

    .line 52
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver$1;->this$0:Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;

    # getter for: Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->isGpsEnabled:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->access$000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;)Z

    move-result p1

    if-eqz p1, :cond_40

    const/16 p1, 0x403

    .line 53
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    goto :goto_45

    :cond_40
    const/16 p1, 0x404

    .line 55
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->post(I)V

    :cond_45
    :goto_45
    return-void
.end method
