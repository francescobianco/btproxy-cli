.class Lcom/keephealth/android/sevice/AssistService$4;
.super Ljava/lang/Object;
.source "AssistService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/AssistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/AssistService;)V
    .registers 2

    .line 461
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 464
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "isRemind:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->isRemind:Z
    invoke-static {v1}, Lcom/keephealth/android/sevice/AssistService;->access$900(Lcom/keephealth/android/sevice/AssistService;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF453ff4"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->isRemind:Z
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$900(Lcom/keephealth/android/sevice/AssistService;)Z

    move-result v0

    if-eqz v0, :cond_65

    .line 466
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$1000(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$1000(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 467
    :cond_36
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$1100(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/keephealth/android/sevice/AssistService;->access$1002(Lcom/keephealth/android/sevice/AssistService;Ljava/lang/String;)Ljava/lang/String;

    .line 469
    :cond_3f
    invoke-static {}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->getDefault()Lcom/keephealth/android/sevice/IntelligentNotificationAddService;

    move-result-object v0

    iget-object v1, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->contactName:Ljava/lang/String;
    invoke-static {v1}, Lcom/keephealth/android/sevice/AssistService;->access$1000(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->phoneNumber:Ljava/lang/String;
    invoke-static {v2}, Lcom/keephealth/android/sevice/AssistService;->access$1100(Lcom/keephealth/android/sevice/AssistService;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/keephealth/android/sevice/IntelligentNotificationAddService;->addMessage(ILjava/lang/String;Ljava/lang/String;)V

    .line 470
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isAssReceivePhone:Z

    .line 471
    sput-boolean v3, Lcom/keephealth/android/app/AppApplication;->isPhoneReceivePhone:Z

    .line 472
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->aa:I
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$1200(Lcom/keephealth/android/sevice/AssistService;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_65

    .line 473
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$4;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # setter for: Lcom/keephealth/android/sevice/AssistService;->aa:I
    invoke-static {v0, v3}, Lcom/keephealth/android/sevice/AssistService;->access$1202(Lcom/keephealth/android/sevice/AssistService;I)I

    :cond_65
    return-void
.end method
