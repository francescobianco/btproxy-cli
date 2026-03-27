.class Lcom/keephealth/android/persenter/main/FamilyDetailPresenter$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "FamilyDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->getFamilyDetail(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean<",
        "Lcom/keephealth/android/model/bean/FamilyDetail;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;)V
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 27
    iget-object p1, p0, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {p1}, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->access$100(Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/persenter/main/FamilyDetailContract$View;

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Lcom/keephealth/android/persenter/main/FamilyDetailContract$View;->returnDetail(Lcom/keephealth/android/model/bean/FamilyDetail;)V

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
            "Lcom/keephealth/android/model/bean/FamilyDetail;",
            ">;)V"
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter$1;->this$0:Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;

    # getter for: Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;
    invoke-static {v0}, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->access$000(Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;)Lcom/keephealth/android/base/IBaseView;

    move-result-object v0

    check-cast v0, Lcom/keephealth/android/persenter/main/FamilyDetailContract$View;

    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getData()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/model/bean/FamilyDetail;

    invoke-interface {v0, p1}, Lcom/keephealth/android/persenter/main/FamilyDetailContract$View;->returnDetail(Lcom/keephealth/android/model/bean/FamilyDetail;)V

    return-void
.end method
