.class Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$3;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "HealthMonitoringActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->postData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/DeviceModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;)V
    .registers 2

    .line 252
    iput-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 4

    .line 270
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onFailure2:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "23ee43332"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 256
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DeviceModel;

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "deviceModel111:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "23ee43332"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3d

    .line 260
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/DeviceModel;->isBloodGlucose()Z

    move-result p1

    if-eqz p1, :cond_34

    .line 261
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->relative_xuetang:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_3d

    .line 263
    :cond_34
    iget-object p1, p0, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity$3;->this$0:Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;

    iget-object p1, p1, Lcom/keephealth/android/ui/device/activity/HealthMonitoringActivity;->relative_xuetang:Landroid/widget/RelativeLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_3d
    :goto_3d
    return-void
.end method
