.class Lcom/keephealth/android/persenter/main/MainFragmentPresenter$12;
.super Lcom/keephealth/android/model/net/ApiCallback;
.source "MainFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/keephealth/android/persenter/main/MainFragmentPresenter;->handlerDeviceInfo([B)V
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
.field final synthetic this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/keephealth/android/persenter/main/MainFragmentPresenter;)V
    .registers 2

    .line 599
    iput-object p1, p0, Lcom/keephealth/android/persenter/main/MainFragmentPresenter$12;->this$0:Lcom/keephealth/android/persenter/main/MainFragmentPresenter;

    invoke-direct {p0}, Lcom/keephealth/android/model/net/ApiCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .registers 3

    .line 607
    const-string p1, "FF543f3"

    const-string p2, "\u5931\u8d25"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 602
    const-string p1, "FF543f3"

    const-string v0, "\u6210\u529f"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
