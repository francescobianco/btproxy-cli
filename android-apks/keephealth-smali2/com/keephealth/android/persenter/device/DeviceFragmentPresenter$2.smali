.class Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "DeviceFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->getDialCenter(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/DicalDataBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)V
    .registers 2

    .line 222
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FF3324"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$200(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;->getDialCenterFail()V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 243
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$300(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DicalDataBean;",
            ">;)V"
        }
    .end annotation

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "model:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF3324"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$2;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$100(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DicalDataBean;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;->getDialCenterDetail(Lcom/keephealth/android/model/bean/DicalDataBean;)V

    return-void
.end method
