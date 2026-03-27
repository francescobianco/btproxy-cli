.class Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$5;
.super Ljava/lang/Object;
.source "IntelligentNotificationAddServiceOld.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)V
    .registers 2

    .line 1319
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$5;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    :cond_0
    :goto_0
    const-wide/16 v0, 0x1388

    .line 1325
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_19

    .line 1330
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$5;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$700(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1331
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld$5;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;->access$700(Lcom/keephealth/android/sevice/IntelligentNotificationAddServiceOld;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x156

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :catch_19
    move-exception v0

    .line 1327
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
