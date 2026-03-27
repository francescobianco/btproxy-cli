.class Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "DeviceLanguagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->getDeviceLanguage(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/util/List<",
        "Lcom/keephealth/android/model/bean/LanguageBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 31
    iget-object p1, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->access$100(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;

    invoke-interface {p1}, Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;->getFail()V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->access$200(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;->hideLoading()V

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 42
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    # invokes: Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->access$300(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/LanguageBean;",
            ">;>;)V"
        }
    .end annotation

    .line 25
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter$1;->this$0:Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;

    # getter for: Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;->access$000(Lcom/keephealth/android/persenter/device/DeviceLanguagePresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/device/DeviceLanguageContract$View;->getSuccess(Ljava/util/List;)V

    return-void
.end method
