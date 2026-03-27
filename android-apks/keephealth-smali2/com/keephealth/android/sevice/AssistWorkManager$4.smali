.class Lcom/keephealth/android/sevice/AssistWorkManager$4;
.super Ljava/lang/Object;
.source "AssistWorkManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/AssistWorkManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistWorkManager;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/AssistWorkManager;)V
    .registers 2

    .line 432
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRemind:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z
    invoke-static {v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$800(Lcom/keephealth/android/sevice/AssistWorkManager;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF453ff4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->isRemind:Z
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$800(Lcom/keephealth/android/sevice/AssistWorkManager;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 437
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$900(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$900(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 438
    :cond_36
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1000(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$902(Lcom/keephealth/android/sevice/AssistWorkManager;Ljava/lang/String;)Ljava/lang/String;

    .line 440
    :cond_3f
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->contactName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$900(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1000(Lcom/keephealth/android/sevice/AssistWorkManager;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->addMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isAssReceivePhone:Z

    .line 442
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isPhoneReceivePhone:Z

    .line 443
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # getter for: Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1100(Lcom/keephealth/android/sevice/AssistWorkManager;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_65

    .line 444
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistWorkManager$4;->this$0:Lcom/keephealth/android/sevice/AssistWorkManager;

    # setter for: Lcom/keephealth/android/sevice/AssistWorkManager;->aa:I
    invoke-static {v0, v3}, Lcom/keephealth/android/sevice/AssistWorkManager;->access$1102(Lcom/keephealth/android/sevice/AssistWorkManager;I)I

    :cond_65
    return-void
.end method
