.class Lcom/keephealth/android/persenter/device/DialCenterPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "DialCenterPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DialCenterPresenter;->getDialCebter(Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DialCenterPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DialCenterPresenter;)V
    .registers 2

    .line 17
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DialCenterPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialCenterPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

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
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/DicalDataBean;",
            ">;)V"
        }
    .end annotation

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialCenterPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialCenterPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialCenterPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DialCenterPresenter;->access$000(Lcom/keephealth/android/persenter/device/DialCenterPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 21
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialCenterPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DialCenterPresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DialCenterPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DialCenterPresenter;->access$100(Lcom/keephealth/android/persenter/device/DialCenterPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DialCenterContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/DicalDataBean;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/device/DialCenterContract$View;->getDialCenterDetail(Lcom/keephealth/android/model/bean/DicalDataBean;)V

    :cond_19
    return-void
.end method
