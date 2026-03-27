.class Lcom/keephealth/android/viewmodel/mine/LoginViewModel$8;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "LoginViewModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifityEmail(Ljava/lang/String;Ljava/lang/String;)V
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
.field final synthetic this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;


# direct methods
.method constructor <init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V
    .registers 2

    .line 452
    iput-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$8;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 4

    .line 466
    iget-object p2, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$8;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p2, p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyCode:Landroidx/lifecycle/MutableLiveData;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onFinish()V
    .registers 1

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 3

    .line 476
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$8;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    # invokes: Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V
    invoke-static {v0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->access$700(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method public onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/keephealth/android/model/BaseBean<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 455
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result p1

    const/16 v0, 0xc8

    if-ne p1, v0, :cond_2a

    .line 456
    iget-object p1, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$8;->this$0:Lcom/keephealth/android/viewmodel/mine/LoginViewModel;

    iget-object p1, p1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyCode:Landroidx/lifecycle/MutableLiveData;

    const-string v0, "1"

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    const/16 p1, 0x3f9

    .line 457
    invoke-static {p1}, Lcom/keephealth/android/util/EventBusHelper;->postSticky(I)V

    const/4 p1, 0x1

    .line 458
    sput-boolean p1, Lcom/keephealth/android/app/AppApplication;->isGetUserinfo:Z

    .line 460
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const-string v1, "bing_time"

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/util/SharePreferenceUtils;->putLong(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2a
    return-void
.end method
