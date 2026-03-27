.class Lcom/keephealth/android/sevice/IntelligentNotificationAddService$1;
.super Ljava/lang/Object;
.source "IntelligentNotificationAddService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/IntelligentNotificationAddService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$1;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 217
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$1;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$1;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->task:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$1;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget v2, v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->delayMillis:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 218
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_17

    return-void

    .line 221
    :cond_17
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->appInbefore:Z

    return-void
.end method
