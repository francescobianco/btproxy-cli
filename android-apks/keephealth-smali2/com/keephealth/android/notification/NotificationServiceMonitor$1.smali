.class Lcom/keephealth/android/notification/NotificationServiceMonitor$1;
.super Ljava/lang/Object;
.source "NotificationServiceMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/notification/NotificationServiceMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/notification/NotificationServiceMonitor;


# direct methods
.method constructor <init>(Lcom/keephealth/android/notification/NotificationServiceMonitor;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor$1;->this$0:Lcom/keephealth/android/notification/NotificationServiceMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor$1;->this$0:Lcom/keephealth/android/notification/NotificationServiceMonitor;

    iget-wide v2, v2, Lcom/keephealth/android/notification/NotificationServiceMonitor;->startTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7530

    cmp-long v0, v0, v2

    if-lez v0, :cond_15

    .line 21
    iget-object v0, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor$1;->this$0:Lcom/keephealth/android/notification/NotificationServiceMonitor;

    invoke-virtual {v0}, Lcom/keephealth/android/notification/NotificationServiceMonitor;->closeMonitor()V

    return-void

    .line 24
    :cond_15
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/keephealth/android/util/AppUtil;->isServiceRunning(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor$1;->this$0:Lcom/keephealth/android/notification/NotificationServiceMonitor;

    # getter for: Lcom/keephealth/android/notification/NotificationServiceMonitor;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/notification/NotificationServiceMonitor;->access$000(Lcom/keephealth/android/notification/NotificationServiceMonitor;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_30
    return-void
.end method
