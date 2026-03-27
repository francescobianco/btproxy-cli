.class public Lcom/keephealth/android/sevice/DFUService;
.super Lno/nordicsemi/android/dfu/DfuBaseService;
.source "DFUService.java"


# instance fields
.field private CHANNEL_ONE_ID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;-><init>()V

    .line 23
    const-string v0, "dfu"

    iput-object v0, p0, Lcom/keephealth/android/sevice/DFUService;->CHANNEL_ONE_ID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getNotificationTarget()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation

    .line 49
    const-class v0, Lcom/keephealth/android/ui/device/activity/NotificationActivity;

    return-object v0
.end method

.method protected isDebug()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 59
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not yet implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate()V
    .registers 6

    .line 26
    invoke-super {p0}, Lno/nordicsemi/android/dfu/DfuBaseService;->onCreate()V

    .line 27
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 28
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_37

    .line 29
    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v2, p0, Lcom/keephealth/android/sevice/DFUService;->CHANNEL_ONE_ID:Ljava/lang/String;

    const-string v3, "otifition_one"

    const/4 v4, 0x4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x1

    .line 31
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableLights(Z)V

    const/high16 v3, -0x10000

    .line 32
    invoke-virtual {v1, v3}, Landroid/app/NotificationChannel;->setLightColor(I)V

    .line 33
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    .line 34
    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->setLockscreenVisibility(I)V

    .line 35
    const-string v2, "notification"

    invoke-virtual {p0, v2}, Lcom/keephealth/android/sevice/DFUService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 36
    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 37
    iget-object v1, p0, Lcom/keephealth/android/sevice/DFUService;->CHANNEL_ONE_ID:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    .line 39
    :cond_37
    const-string v1, "Foreground Service"

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 40
    const-string v1, "Foreground Service Started."

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    const v1, 0x7f0d0069

    .line 42
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 43
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, -0x1

    .line 44
    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/sevice/DFUService;->startForeground(ILandroid/app/Notification;)V

    return-void
.end method
