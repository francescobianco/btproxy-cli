.class Lcom/keephealth/android/sevice/RestartConnService$1;
.super Ljava/lang/Object;
.source "RestartConnService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/RestartConnService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/RestartConnService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/RestartConnService;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/keephealth/android/sevice/RestartConnService$1;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/keephealth/android/sevice/RestartConnService$1;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    # getter for: Lcom/keephealth/android/sevice/RestartConnService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/RestartConnService;->access$100(Lcom/keephealth/android/sevice/RestartConnService;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handler1:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/sevice/RestartConnService$1;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    # getter for: Lcom/keephealth/android/sevice/RestartConnService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/keephealth/android/sevice/RestartConnService;->access$100(Lcom/keephealth/android/sevice/RestartConnService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "hfgffr2"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget-object v0, p0, Lcom/keephealth/android/sevice/RestartConnService$1;->this$0:Lcom/keephealth/android/sevice/RestartConnService;

    # getter for: Lcom/keephealth/android/sevice/RestartConnService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/RestartConnService;->access$100(Lcom/keephealth/android/sevice/RestartConnService;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x156

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2d
    return-void
.end method
