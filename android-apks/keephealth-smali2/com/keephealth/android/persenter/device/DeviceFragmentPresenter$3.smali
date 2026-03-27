.class Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$3;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "DeviceFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->getDialCenterA(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/DialCenterB;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)V
    .registers 2

    .line 250
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$3;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 263
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$3;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$600(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

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

    .line 272
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$3;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # invokes: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$700(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DialCenterB;",
            ">;)V"
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DialCenterB;

    if-eqz p1, :cond_14

    .line 255
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$3;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$400(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;->getDialCenterDetailA(Lcom/keephealth/android/model/bean/DialCenterB;)V

    goto :goto_1f

    .line 257
    :cond_14
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter$3;->this$0:Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;->access$500(Lcom/keephealth/android/persenter/device/DeviceFragmentPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/DeviceFragmentContract$View;->getDialCenterFail()V

    :goto_1f
    return-void
.end method
