.class public abstract Lcom/keephealth/android/model/net/ApiStravaCancelCallback;
.super Ljava/lang/Object;
.source "ApiStravaCancelCallback.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/keephealth/android/model/net/CanceStravalAuthBean;",
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

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 109
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->onFinish()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    instance-of v0, p1, Lretrofit2/HttpException;

    const v1, 0x7f1005b9

    if-eqz v0, :cond_23

    .line 28
    check-cast p1, Lretrofit2/HttpException;

    .line 29
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->code:I

    .line 30
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 31
    iget v0, p0, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->code:I

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->onFailure(ILjava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    .line 33
    :cond_23
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_43

    .line 34
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1001cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->onFailure(ILjava/lang/String;)V

    .line 35
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    .line 37
    :cond_43
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10033b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->onFailure(ILjava/lang/String;)V

    .line 38
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 41
    :goto_5e
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->onFinish()V

    return-void
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public onNext(Lcom/keephealth/android/model/net/CanceStravalAuthBean;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 47
    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->onSuccess(Lcom/keephealth/android/model/net/CanceStravalAuthBean;)V

    .line 104
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->onFinish()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 16
    check-cast p1, Lcom/keephealth/android/model/net/CanceStravalAuthBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/net/ApiStravaCancelCallback;->onNext(Lcom/keephealth/android/model/net/CanceStravalAuthBean;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/keephealth/android/model/net/CanceStravalAuthBean;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation
.end method
