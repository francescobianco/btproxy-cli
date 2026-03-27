.class Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "FarmilyHealthPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->getFarmilList()V
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
        "Lcom/keephealth/android/model/bean/FamilyBean;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)V
    .registers 2

    .line 46
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;

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

    .line 59
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->access$300(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;->hideLoading()V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;

    # invokes: Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->access$400(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/util/List<",
            "Lcom/keephealth/android/model/bean/FamilyBean;",
            ">;>;)V"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter$2;->this$0:Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;->access$200(Lcom/keephealth/android/persenter/main/FarmilyHealthPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/main/FarmilyHealthContract$View;->returnFamilyList(Ljava/util/List;)V

    return-void
.end method
