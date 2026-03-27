.class Lcom/keephealth/android/viewmodel/mine/LoginViewModel$5;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LoginViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCode(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/model/net/ApiCallback<",
        "Lcom/keephealth/android/model/BaseBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$5;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 5

    .line 350
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$5;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object v0, v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " -- "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "\u9a8c\u8bc1\u7801\u8fd4\u56de\u90ae\u7bb1"

    invoke-static {p2, p1}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 361
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$5;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->access$400(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 3

    .line 343
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_14

    .line 344
    iget-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$5;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_14
    return-void
.end method
