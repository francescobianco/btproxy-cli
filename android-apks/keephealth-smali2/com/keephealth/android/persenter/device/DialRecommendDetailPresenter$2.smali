.class Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$2;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "DialRecommendDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->downLoadDial(III)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$2;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

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
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter$2;->this$0:Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;

    # invokes: Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;->access$400(Lcom/keephealth/android/persenter/device/DialRecommendDetailPresenter;Lio/reactivex/disposables/Disposable;)V

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
