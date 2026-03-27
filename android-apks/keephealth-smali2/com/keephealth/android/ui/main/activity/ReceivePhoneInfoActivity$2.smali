.class Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "ReceivePhoneInfoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->getNoticeData()V
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
.field final synthetic this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;


# direct methods
.method constructor <init>(Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;)V
    .registers 2

    .line 115
    iput-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 124
    iget-object p1, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-virtual {p1}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->hideLoading()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 129
    iget-object v0, p0, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity$2;->this$0:Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;

    invoke-virtual {v0}, Lcom/keephealth/android/ui/main/activity/ReceivePhoneInfoActivity;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DeviceModel;",
            ">;)V"
        }
    .end annotation

    .line 118
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DeviceModel;

    .line 119
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/keephealth/android/util/SPHelper;->saveDeviceModel(Lcom/keephealth/android/model/bean/DeviceModel;Landroid/content/Context;)V

    return-void
.end method
