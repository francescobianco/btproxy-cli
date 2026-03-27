.class public Lcom/keephealth/android/persenter/mine/AccountPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "AccountPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/mine/AccountContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/mine/AccountContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/mine/AccountContract$Presenter;"
    }
.end annotation


# instance fields
.field private downSuccessCount:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V
    .registers 1

    .line 85
    invoke-direct {p0}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccess()V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/mine/AccountPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 85
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/AccountPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$800(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/keephealth/android/persenter/mine/AccountPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 85
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method private downSuccess()V
    .registers 4

    .line 1140
    iget v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccessCount:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2f

    .line 1142
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->hideLoading()V

    .line 1143
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    const/4 v0, 0x0

    .line 1144
    iput v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->downSuccessCount:I

    .line 1145
    sput v0, Lcom/keephealth/android/ui/mine/activity/AccoutActivity;->a:I

    .line 1146
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100727

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->showMsg(Ljava/lang/String;)V

    :cond_2f
    return-void
.end method


# virtual methods
.method public clearUserData()V
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->showLoadingFalse()V

    .line 118
    new-instance v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$2;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->clearUserData(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadBlood()V
    .registers 4

    .line 386
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_blood"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 387
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    if-nez v0, :cond_16

    .line 388
    :cond_14
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_16
    if-nez v0, :cond_1a

    .line 391
    const-string v0, "0"

    .line 394
    :cond_1a
    new-instance v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$5;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$5;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadBlood(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadEcg()V
    .registers 4

    .line 1031
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_ecg"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1032
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1033
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 1036
    const-string v0, "0"

    .line 1039
    :cond_18
    new-instance v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$10;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$10;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadEcg(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadHeart()V
    .registers 4

    .line 284
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_heart"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 286
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 289
    const-string v0, "0"

    .line 292
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finalUpdateTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FFF432f"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$4;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$4;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadHeart(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadOxygen()V
    .registers 4

    .line 522
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_oxygen"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 523
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 524
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 527
    const-string v0, "0"

    .line 530
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FDD3fd22"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    new-instance v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$6;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$6;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadOxygen(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadSleep()V
    .registers 4

    .line 652
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_sleep"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 654
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 657
    const-string v0, "0"

    .line 660
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "finalUpdateTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GGG4433"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    new-instance v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$7;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$7;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadSleep(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadSport()V
    .registers 4

    .line 890
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_sport"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 891
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 892
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 895
    const-string v0, "0"

    .line 897
    :cond_18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "updateTime:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FFF432fde"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    new-instance v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$9;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$9;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadSport(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadSteps()V
    .registers 4

    .line 145
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_step"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 147
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 150
    const-string v0, "0"

    .line 153
    :cond_18
    new-instance v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$3;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$3;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadSteps(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadTemp()V
    .registers 4

    .line 794
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_temp"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 795
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 796
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 799
    const-string v0, "0"

    .line 802
    :cond_18
    new-instance v1, Lcom/keephealth/android/persenter/mine/AccountPresenter$8;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$8;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadTemp(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public loginOut()V
    .registers 2

    .line 89
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/AccountPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/mine/AccountContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/AccountContract$View;->showLoadingFalse()V

    .line 90
    new-instance v0, Lcom/keephealth/android/persenter/mine/AccountPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/mine/AccountPresenter$1;-><init>(Lcom/keephealth/android/persenter/mine/AccountPresenter;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->loginOut(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
