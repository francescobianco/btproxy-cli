.class Lcom/keephealth/android/viewmodel/mine/AccountViewModel$1;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "AccountViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->loginOut()V
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
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$1;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 104
    iget-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$1;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iget-object p1, p1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->loginOut:Landroidx/lifecycle/MutableLiveData;

    const-string p2, "failed"

    invoke-virtual {p1, p2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 114
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$1;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->access$000(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V

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

    .line 99
    iget-object p1, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$1;->this$0:Lcom/keephealth/android/viewmodel/mine/AccountViewModel;

    iget-object p1, p1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->loginOut:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "success"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method
