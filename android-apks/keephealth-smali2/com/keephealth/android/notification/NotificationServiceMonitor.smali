.class public Lcom/keephealth/android/notification/NotificationServiceMonitor;
.super Ljava/lang/Object;
.source "NotificationServiceMonitor.java"


# instance fields
.field private handler:Landroid/os/Handler;

.field private monitorTask:Ljava/lang/Runnable;

.field startTime:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor;->handler:Landroid/os/Handler;

    .line 15
    new-instance v0, Lcom/keephealth/android/notification/NotificationServiceMonitor$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/notification/NotificationServiceMonitor$1;-><init>(Lcom/keephealth/android/notification/NotificationServiceMonitor;)V

    iput-object v0, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor;->monitorTask:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/notification/NotificationServiceMonitor;)Landroid/os/Handler;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public closeMonitor()V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor;->monitorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method startMonitor()V
    .registers 3

    .line 31
    invoke-virtual {p0}, Lcom/keephealth/android/notification/NotificationServiceMonitor;->closeMonitor()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor;->startTime:J

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/keephealth/android/notification/NotificationServiceMonitor;->monitorTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
