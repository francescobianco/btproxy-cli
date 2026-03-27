.class public Lcom/keephealth/android/sevice/RestartConnService;
.super Landroid/app/Service;
.source "RestartConnService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/sevice/RestartConnService$MyBinder;
    }
.end annotation


# static fields
.field private static final RESTART_DELAY:J = 0x7d0L

.field private static final TAG:Ljava/lang/String; = "RestartConnService"


# instance fields
.field private a:I

.field private addRequest:I

.field private bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

.field private deviceModel:Lcom/keephealth/android/model/bean/DeviceModel;

.field private mBinder:Lcom/keephealth/android/sevice/RestartConnService$MyBinder;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/keephealth/android/sevice/RestartConnService;->a:I

    .line 67
    new-instance v0, Lcom/keephealth/android/sevice/RestartConnService$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/RestartConnService$1;-><init>(Lcom/keephealth/android/sevice/RestartConnService;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/RestartConnService;->mRunnable:Ljava/lang/Runnable;

    .line 81
    new-instance v0, Lcom/keephealth/android/sevice/RestartConnService$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/RestartConnService$2;-><init>(Lcom/keephealth/android/sevice/RestartConnService;)V

    iput-object v0, p0, Lcom/keephealth/android/sevice/RestartConnService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/sevice/RestartConnService;)Ljava/lang/Runnable;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/keephealth/android/sevice/RestartConnService;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/sevice/RestartConnService;)Landroid/os/Handler;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/keephealth/android/sevice/RestartConnService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/sevice/RestartConnService;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 1

    .line 22
    iget-object p0, p0, Lcom/keephealth/android/sevice/RestartConnService;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p0
.end method

.method static synthetic access$202(Lcom/keephealth/android/sevice/RestartConnService;Lcom/keephealth/android/model/bean/BLEDevice;)Lcom/keephealth/android/model/bean/BLEDevice;
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService;->bleDevice:Lcom/keephealth/android/model/bean/BLEDevice;

    return-object p1
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3

    .line 54
    const-string p1, "RestartConnService"

    const-string v0, "onBind"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService;->mBinder:Lcom/keephealth/android/sevice/RestartConnService$MyBinder;

    if-nez p1, :cond_12

    .line 56
    new-instance p1, Lcom/keephealth/android/sevice/RestartConnService$MyBinder;

    invoke-direct {p1, p0}, Lcom/keephealth/android/sevice/RestartConnService$MyBinder;-><init>(Lcom/keephealth/android/sevice/RestartConnService;)V

    iput-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService;->mBinder:Lcom/keephealth/android/sevice/RestartConnService$MyBinder;

    .line 58
    :cond_12
    iget-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService;->mBinder:Lcom/keephealth/android/sevice/RestartConnService$MyBinder;

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 147
    const-string v0, "RestartConnService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    const-string v0, "hfgffr2"

    const-string v1, "onDestroy-restart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .registers 4

    .line 63
    const-string v0, "RestartConnService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result p1

    return p1
.end method
