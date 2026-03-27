.class public abstract Lcom/keephealth/android/model/net/ApiStravaCallback;
.super Ljava/lang/Object;
.source "ApiStravaCallback.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/keephealth/android/model/StravaBaseBean;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TM;>;"
    }
.end annotation


# instance fields
.field code:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 125
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaCallback;->onFinish()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 5

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    instance-of v0, p1, Lretrofit2/HttpException;

    const v1, 0x7f1005b9

    if-eqz v0, :cond_24

    .line 43
    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    .line 44
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/model/net/ApiStravaCallback;->code:I

    .line 45
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 46
    iget v1, p0, Lcom/keephealth/android/model/net/ApiStravaCallback;->code:I

    invoke-virtual {p0, v1, v0}, Lcom/keephealth/android/model/net/ApiStravaCallback;->onFailure(ILjava/lang/String;)V

    .line 47
    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5f

    .line 48
    :cond_24
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_44

    .line 49
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f1001cd

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3e9

    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/model/net/ApiStravaCallback;->onFailure(ILjava/lang/String;)V

    .line 50
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5f

    .line 52
    :cond_44
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f10033b

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x3ea

    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/model/net/ApiStravaCallback;->onFailure(ILjava/lang/String;)V

    .line 53
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 55
    :goto_5f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  code:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/model/net/ApiStravaCallback;->code:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trt4r"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaCallback;->onFinish()V

    return-void
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public onNext(Lcom/keephealth/android/model/StravaBaseBean;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "model:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "trt4r"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/net/ApiStravaCallback;->onSuccess(Lcom/keephealth/android/model/StravaBaseBean;)V

    .line 120
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaCallback;->onFinish()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 31
    check-cast p1, Lcom/keephealth/android/model/StravaBaseBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/net/ApiStravaCallback;->onNext(Lcom/keephealth/android/model/StravaBaseBean;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/keephealth/android/model/StravaBaseBean;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation
.end method
