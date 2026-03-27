.class public abstract Lcom/keephealth/android/model/net/ApiCallback;
.super Ljava/lang/Object;
.source "ApiCallback.java"

# interfaces
.implements Lio/reactivex/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/keephealth/android/model/BaseBean;",
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

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 1

    .line 136
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiCallback;->onFinish()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 6

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u9875\u9762:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u8bf7\u6c42error:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1, v0}, Lcom/keephealth/android/util/FileUtilsTest;->writeTxtToFile(ZLjava/lang/String;)V

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FF321h2"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 48
    instance-of v0, p1, Lretrofit2/HttpException;

    const v2, 0x7f1005b9

    if-eqz v0, :cond_5d

    .line 49
    move-object v0, p1

    check-cast v0, Lretrofit2/HttpException;

    .line 50
    invoke-virtual {v0}, Lretrofit2/HttpException;->code()I

    move-result v0

    iput v0, p0, Lcom/keephealth/android/model/net/ApiCallback;->code:I

    .line 51
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget v2, p0, Lcom/keephealth/android/model/net/ApiCallback;->code:I

    invoke-virtual {p0, v2, v0}, Lcom/keephealth/android/model/net/ApiCallback;->onFailure(ILjava/lang/String;)V

    .line 53
    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_98

    .line 54
    :cond_5d
    instance-of v0, p1, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_7d

    .line 55
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f1001cd

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3e9

    invoke-virtual {p0, v3, v0}, Lcom/keephealth/android/model/net/ApiCallback;->onFailure(ILjava/lang/String;)V

    .line 56
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_98

    .line 58
    :cond_7d
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f10033b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3ea

    invoke-virtual {p0, v3, v0}, Lcom/keephealth/android/model/net/ApiCallback;->onFailure(ILjava/lang/String;)V

    .line 59
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    .line 61
    :goto_98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "  code:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/keephealth/android/model/net/ApiCallback;->code:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "trt4r"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiCallback;->onFinish()V

    return-void
.end method

.method public abstract onFailure(ILjava/lang/String;)V
.end method

.method public abstract onFinish()V
.end method

.method public onNext(Lcom/keephealth/android/model/BaseBean;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 68
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result v0

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u539f\u59cbcode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  model:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FF321h2"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_61

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u539f\u59cb0:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/net/ApiCallback;->onSuccess(Lcom/keephealth/android/model/BaseBean;)V

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u539f\u59cb:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_161

    :cond_61
    const/4 v1, 0x1

    if-ne v0, v1, :cond_71

    .line 78
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1005d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_150

    :cond_71
    const/4 v1, 0x3

    if-ne v0, v1, :cond_76

    goto/16 :goto_14f

    :cond_76
    const/4 v1, 0x4

    if-ne v0, v1, :cond_7b

    goto/16 :goto_14f

    :cond_7b
    const/4 v1, 0x5

    if-ne v0, v1, :cond_80

    goto/16 :goto_14f

    :cond_80
    const/4 v1, 0x6

    if-ne v0, v1, :cond_85

    goto/16 :goto_14f

    :cond_85
    const/4 v1, 0x7

    if-ne v0, v1, :cond_8a

    goto/16 :goto_14f

    :cond_8a
    const/16 v1, 0x8

    if-ne v0, v1, :cond_90

    goto/16 :goto_14f

    :cond_90
    const/16 v1, 0x9

    if-ne v0, v1, :cond_a1

    .line 92
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1005c6

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_150

    :cond_a1
    const/16 v1, 0xa

    if-ne v0, v1, :cond_b2

    .line 94
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002af

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_150

    :cond_b2
    const/16 v1, 0x1d

    if-ne v0, v1, :cond_c3

    .line 96
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1006bc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_150

    :cond_c3
    const/16 v1, 0x1e

    if-ne v0, v1, :cond_c9

    goto/16 :goto_14f

    :cond_c9
    const/16 v1, 0x1f

    if-ne v0, v1, :cond_cf

    goto/16 :goto_14f

    :cond_cf
    const/16 v1, 0x191

    if-eq v0, v1, :cond_165

    const/16 v1, 0x192

    if-ne v0, v1, :cond_d9

    goto/16 :goto_165

    :cond_d9
    const/16 v1, 0x1f4

    if-ne v0, v1, :cond_e9

    .line 108
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002b4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_150

    :cond_e9
    const/16 v1, 0xc

    if-ne v0, v1, :cond_fc

    .line 111
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002d9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_14f

    :cond_fc
    const/16 v1, 0xd

    if-ne v0, v1, :cond_10f

    .line 113
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002cc

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_14f

    :cond_10f
    const/16 v1, 0xe

    if-ne v0, v1, :cond_122

    .line 115
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002dd

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_14f

    :cond_122
    const/16 v1, 0xf

    if-ne v0, v1, :cond_135

    .line 117
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1002de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_14f

    :cond_135
    const/16 v1, 0x16

    if-ne v0, v1, :cond_14f

    .line 119
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f10040f

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 121
    invoke-static {p1}, Lcom/keephealth/android/app/AppApplication;->toLogin(Ljava/lang/String;)V

    return-void

    :cond_14f
    :goto_14f
    const/4 v0, 0x0

    :goto_150
    if-eqz v0, :cond_156

    .line 125
    invoke-static {v0}, Lcom/keephealth/android/util/ToastUtil;->showToast(Ljava/lang/String;)V

    goto :goto_15a

    .line 127
    :cond_156
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 129
    :goto_15a
    invoke-virtual {p1}, Lcom/keephealth/android/model/BaseBean;->getCode()I

    move-result p1

    invoke-virtual {p0, p1, v0}, Lcom/keephealth/android/model/net/ApiCallback;->onFailure(ILjava/lang/String;)V

    .line 131
    :goto_161
    invoke-virtual {p0}, Lcom/keephealth/android/model/net/ApiCallback;->onFinish()V

    return-void

    .line 102
    :cond_165
    :goto_165
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1002b2

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    .line 104
    invoke-static {p1}, Lcom/keephealth/android/app/AppApplication;->toLogin(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 37
    check-cast p1, Lcom/keephealth/android/model/BaseBean;

    invoke-virtual {p0, p1}, Lcom/keephealth/android/model/net/ApiCallback;->onNext(Lcom/keephealth/android/model/BaseBean;)V

    return-void
.end method

.method public abstract onSuccess(Lcom/keephealth/android/model/BaseBean;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation
.end method
