.class Lcom/keephealth/android/persenter/device/TimeSystemPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "TimeSystemPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/TimeSystemPresenter;->saveUser(Lcom/keephealth/android/model/bean/UserBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/TimeSystemPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/TimeSystemPresenter;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/TimeSystemPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/TimeSystemPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/TimeSystemPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/TimeSystemPresenter;

    invoke-virtual {v0}, Lcom/keephealth/android/persenter/device/TimeSystemPresenter;->dispose()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/TimeSystemPresenter$1;->this$0:Lcom/keephealth/android/persenter/device/TimeSystemPresenter;

    # invokes: Lcom/keephealth/android/persenter/device/TimeSystemPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/device/TimeSystemPresenter;->access$000(Lcom/keephealth/android/persenter/device/TimeSystemPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
