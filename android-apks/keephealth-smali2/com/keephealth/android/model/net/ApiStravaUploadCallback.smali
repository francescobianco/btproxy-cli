.class public abstract Lcom/keephealth/android/model/net/ApiStravaUploadCallback;
.super Ljava/lang/Object;
.source "ApiStravaUploadCallback.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/keephealth/android/model/StravaUploadFileBean;",
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

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 54
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->onFinish()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 4

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    instance-of v0, p1, Lretrofit2/HttpException;

    const v1, 0x7f1005b9

    if-eqz v0, :cond_23

    .line 29
    check-cast p1, Lretrofit2/HttpException;

    .line 30
    invoke-virtual {p1}, Lretrofit2/HttpException;->code()I

    move-result p1

    iput p1, p0, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->code:I

    .line 31
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 32
    iget v0, p0, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->code:I

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->onFailure(ILjava/lang/String;)V

    .line 33
    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    .line 34
    :cond_23
    instance-of p1, p1, Ljava/net/SocketTimeoutException;

    if-eqz p1, :cond_43

    .line 35
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1001cd

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->onFailure(ILjava/lang/String;)V

    .line 36
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_5e

    .line 38
    :cond_43
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f10033b

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0, p1}, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->onFailure(ILjava/lang/String;)V

    .line 39
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 42
    :goto_5e
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->onFinish()V

    return-void
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public onNext(Lcom/keephealth/android/model/StravaUploadFileBean;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 48
    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->onSuccess(Lcom/keephealth/android/model/StravaUploadFileBean;)V

    .line 49
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->onFinish()V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 17
    check-cast p1, Lcom/keephealth/android/model/StravaUploadFileBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/net/ApiStravaUploadCallback;->onNext(Lcom/keephealth/android/model/StravaUploadFileBean;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/keephealth/android/model/StravaUploadFileBean;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation
.end method
