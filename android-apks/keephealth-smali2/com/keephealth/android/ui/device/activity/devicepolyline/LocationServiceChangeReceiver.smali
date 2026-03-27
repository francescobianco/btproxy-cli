.class public Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LocationServiceChangeReceiver.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private isGpsEnabled:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->isGpsEnabled:Z

    .line 44
    new-instance v0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver$1;-><init>(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;)V

    iput-object v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;)Z
    .registers 1

    .line 26
    iget-boolean p0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->isGpsEnabled:Z

    return p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_55

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_55

    .line 32
    const-string p2, "location"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    .line 34
    const-string p2, "gps"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->isGpsEnabled:Z

    .line 35
    const-string p2, "network"

    invoke-virtual {p1, p2}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p1

    .line 36
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 37
    iget-object p2, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->handler:Landroid/os/Handler;

    const-wide/16 v1, 0xc8

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "GPS Enabled: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/keephealth/android/ui/device/activity/devicepolyline/LocationServiceChangeReceiver;->isGpsEnabled:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", Network Enabled: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u539f\u59cbLocationService"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_55
    return-void
.end method
