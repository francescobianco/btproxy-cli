.class Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$1;
.super Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;
.source "MoreSetActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->onSwitched(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;

    invoke-direct {p0}, Lcom/keephealth/android/util/ble/bluetooth/OnLeWriteCharacteristicListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/keephealth/android/util/ble/bluetooth/exception/WriteBleException;)V
    .registers 4

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CalenderDataStruc2t"

    invoke-static {v0, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onSuccess(Landroid/bluetooth/BluetoothGattCharacteristic;)V
    .registers 6

    .line 327
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isClickSchedule:Z
    invoke-static {v0}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$100(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Z

    move-result v0

    if-eqz v0, :cond_87

    .line 328
    iget-object v0, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;

    iget-object v0, v0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    const/4 v1, 0x0

    # setter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->isClickSchedule:Z
    invoke-static {v0, v1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$102(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;Z)Z

    if-eqz p1, :cond_87

    .line 330
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object p1

    if-eqz p1, :cond_87

    .line 331
    array-length v0, p1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_87

    .line 332
    aget-byte v0, p1, v1

    const/16 v2, -0x10

    if-ne v0, v2, :cond_87

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    if-ne v2, v0, :cond_87

    const/4 v2, 0x3

    aget-byte p1, p1, v2

    if-nez p1, :cond_87

    .line 333
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2$1;->this$1:Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/MoreSetActivity$2;->this$0:Lcom/keephealth/android/ui/device/activity/MoreSetActivity;

    # getter for: Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->scheduleStatus:Z
    invoke-static {p1}, Lcom/keephealth/android/ui/device/activity/MoreSetActivity;->access$200(Lcom/keephealth/android/ui/device/activity/MoreSetActivity;)Z

    move-result p1

    const-string v2, "trt5t55"

    const-string v3, "openOrCloseSchedule"

    if-nez p1, :cond_62

    .line 334
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 335
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4fdd\u5b58:true:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 337
    :cond_62
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v3, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putBool(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 338
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u4fdd\u5b58:false:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/keephealth/android/util/SharePreferenceUtils;->getBool(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    :cond_87
    :goto_87
    return-void
.end method
