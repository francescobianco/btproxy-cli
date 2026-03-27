.class Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;
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

    .line 228
    iput-object p1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 231
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    # getter for: Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->access$000(Lcom/keephealth/android/sevice/IntelligentNotificationAddService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->task2:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget v2, v2, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->delayMillis2:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 232
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningEcg:Z

    if-eqz v0, :cond_17

    return-void

    .line 236
    :cond_17
    invoke-static {}, Lcom/keephealth/android/util/DiscoverServiceUtils;->discoverService()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1001ec

    goto :goto_34

    :cond_29
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f100258

    :goto_34
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iget-object v1, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->lastStatus:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    return-void

    .line 240
    :cond_43
    iget-object v1, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    iput-object v0, v1, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->lastStatus:Ljava/lang/String;

    .line 241
    iget-object v0, p0, Lcom/keephealth/android/sevice/IntelligentNotificationAddService$2;->this$0:Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    invoke-virtual {v0}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getCurrentStep()V

    return-void
.end method
