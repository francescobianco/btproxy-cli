.class public Lcom/keephealth/android/sevice/RestartConnService$MyBinder;
.super Landroid/os/Binder;
.source "RestartConnService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/RestartConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/RestartConnService;


# direct methods
.method public constructor <init>(Lcom/keephealth/android/sevice/RestartConnService;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService$MyBinder;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public getService()Lcom/keephealth/android/sevice/RestartConnService;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/sevice/RestartConnService$MyBinder;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    return-object v0
.end method

.method public startRestartTask(Landroid/content/Context;)V
    .registers 3

    .line 43
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "AppApplication.ExistHandler:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->ExistHandler:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "gf3e3"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    sget-boolean p1, Lcom/keephealth/android/app/AppApplication;->ExistHandler:Z

    if-nez p1, :cond_2b

    const/4 p1, 0x1

    .line 45
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->ExistHandler:Z

    .line 46
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/keephealth/android/sevice/RestartConnService$MyBinder;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    # getter for: Lcom/keephealth/android/sevice/RestartConnService;->mRunnable:Ljava/lang/Runnable;
    invoke-static {v0}, Lcom/keephealth/android/sevice/RestartConnService;->access$000(Lcom/keephealth/android/sevice/RestartConnService;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_2b
    return-void
.end method
