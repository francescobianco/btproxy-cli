.class Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "FamilyPermissonPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->removeFamily(I)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)V
    .registers 2

    .line 20
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 28
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->access$100(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;

    const/4 p2, 0x1

    invoke-interface {p1, p2}, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;->returnRemoveFamily(I)V

    return-void
.end method

.method public onFinish()V
    .registers 2

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->access$200(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;->hideLoading()V

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 23
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->access$000(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;->returnRemoveFamily(I)V

    return-void
.end method
