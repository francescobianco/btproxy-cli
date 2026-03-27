.class Lcom/keephealth/android/sevice/AssistService$SmsObserver;
.super Landroid/database/ContentObserver;
.source "AssistService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/keephealth/android/sevice/AssistService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SmsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/sevice/AssistService;


# direct methods
.method constructor <init>(Lcom/keephealth/android/sevice/AssistService;Landroid/os/Handler;)V
    .registers 3

    .line 764
    iput-object p1, p0, Lcom/keephealth/android/sevice/AssistService$SmsObserver;->this$0:Lcom/keephealth/android/sevice/AssistService;

    .line 765
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .registers 2

    .line 805
    invoke-super {p0}, Landroid/database/ContentObserver;->deliverSelfNotifications()Z

    move-result v0

    return v0
.end method

.method synthetic lambda$onChange$0$com-keephealth-android-sevice-AssistService$SmsObserver()V
    .registers 2

    .line 786
    :try_start_0
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->isSysndata()Z

    move-result v0

    if-nez v0, :cond_2e

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_2e

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-nez v0, :cond_2e

    .line 787
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRunningDialCenter:Z

    if-nez v0, :cond_29

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isSendDial:Z

    if-nez v0, :cond_29

    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isHomeLoading:Z

    if-eqz v0, :cond_1f

    goto :goto_29

    .line 790
    :cond_1f
    sget-boolean v0, Lcom/keephealth/android/app/AppApplication;->isRefreshing:Z

    if-nez v0, :cond_2e

    .line 791
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$SmsObserver;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # invokes: Lcom/keephealth/android/sevice/AssistService;->sendMessage()V
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$1700(Lcom/keephealth/android/sevice/AssistService;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    goto :goto_2e

    :cond_29
    :goto_29
    return-void

    :catch_2a
    move-exception v0

    .line 795
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-void
.end method

.method public onChange(Z)V
    .registers 5

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onChange..............selfChange:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/log/LogUtil;->d(Ljava/lang/String;)V

    .line 772
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$SmsObserver;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->context:Landroid/content/Context;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$700(Lcom/keephealth/android/sevice/AssistService;)Landroid/content/Context;

    move-result-object p1

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceConfig(Landroid/content/Context;I)Lcom/keephealth/android/model/bean/DeviceConfig;

    move-result-object p1

    if-nez p1, :cond_21

    return-void

    .line 776
    :cond_21
    iget-boolean v0, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isDisturbMode:Z

    if-nez v0, :cond_26

    return-void

    .line 779
    :cond_26
    iget-object v0, p0, Lcom/keephealth/android/sevice/AssistService$SmsObserver;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/keephealth/android/sevice/AssistService;->access$700(Lcom/keephealth/android/sevice/AssistService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/SPHelper;->getDeviceModel(Landroid/content/Context;)Lcom/keephealth/android/model/bean/DeviceModel;

    move-result-object v0

    if-eqz v0, :cond_39

    .line 780
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/DeviceModel;->isSms()Z

    move-result v0

    if-nez v0, :cond_39

    return-void

    .line 783
    :cond_39
    iget-boolean p1, p1, Lcom/keephealth/android/model/bean/DeviceConfig;->isMessage:Z

    if-eqz p1, :cond_4d

    .line 784
    iget-object p1, p0, Lcom/keephealth/android/sevice/AssistService$SmsObserver;->this$0:Lcom/keephealth/android/sevice/AssistService;

    # getter for: Lcom/keephealth/android/sevice/AssistService;->handler:Landroid/os/Handler;
    invoke-static {p1}, Lcom/keephealth/android/sevice/AssistService;->access$400(Lcom/keephealth/android/sevice/AssistService;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/keephealth/android/sevice/AssistService$SmsObserver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/keephealth/android/sevice/AssistService$SmsObserver$$ExternalSyntheticLambda0;-><init>(Lcom/keephealth/android/sevice/AssistService$SmsObserver;)V

    const-wide/16 v1, 0xbb8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4d
    return-void
.end method
