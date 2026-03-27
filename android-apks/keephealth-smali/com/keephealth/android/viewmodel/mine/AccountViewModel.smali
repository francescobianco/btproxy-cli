.class public Lcom/keephealth/android/viewmodel/mine/AccountViewModel;
.super Lcom/keephealth/android/base/BaseViewModel;
.source "AccountViewModel.java"


# instance fields
.field public clearUserData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public downSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private downSuccessCount:I

.field public loginOut:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 90
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseViewModel;-><init>()V

    .line 92
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->loginOut:Landroidx/lifecycle/MutableLiveData;

    .line 93
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->clearUserData:Landroidx/lifecycle/MutableLiveData;

    .line 94
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V
    .registers 1

    .line 90
    invoke-direct {p0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess()V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 90
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method private downSuccess()V
    .registers 3

    .line 1330
    iget v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccessCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccessCount:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_19

    .line 1332
    invoke-static {}, Lcom/keephealth/android/util/DialogHelperNew;->dismissWait()V

    const/4 v0, 0x0

    .line 1333
    iput v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccessCount:I

    .line 1334
    sput v0, Lcom/keephealth/android/ui/mine/activity/AccoutActivity;->a:I

    .line 1335
    iget-object v0, p0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel;->downSuccess:Landroidx/lifecycle/MutableLiveData;

    const-string v1, "success"

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    :cond_19
    return-void
.end method


# virtual methods
.method public clearUserData()V
    .registers 2

    .line 120
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$2;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->clearUserData(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadBlood()V
    .registers 4

    .line 452
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_blood"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 453
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_14

    if-nez v0, :cond_16

    .line 454
    :cond_14
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_16
    if-nez v0, :cond_1a

    .line 457
    const-string v0, "0"

    .line 460
    :cond_1a
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$6;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadBlood(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadEcg()V
    .registers 4

    .line 1224
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_ecg"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1225
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1226
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 1229
    const-string v0, "0"

    .line 1232
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$12;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$12;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadEcg(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadHeart()V
    .registers 4

    .line 257
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_heart"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 259
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 262
    const-string v0, "0"

    .line 265
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$4;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$4;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadHeart(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadHrv()V
    .registers 4

    .line 355
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_hrv"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 357
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 360
    const-string v0, "0"

    .line 363
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$5;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$5;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadHrv(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadOxygen()V
    .registers 4

    .line 585
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_oxygen"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 586
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 587
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 590
    const-string v0, "0"

    .line 593
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$7;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$7;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadOxygen(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadSleep()V
    .registers 4

    .line 710
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_sleep"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 711
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 712
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 715
    const-string v0, "0"

    .line 718
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$8;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$8;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadSleep(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadSleepHigh()V
    .registers 4

    .line 849
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_sleep"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 850
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 851
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 854
    const-string v0, "0"

    .line 857
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$9;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$9;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadSleep(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadSport()V
    .registers 4

    .line 1085
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_sport"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1086
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1087
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 1090
    const-string v0, "0"

    .line 1093
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$11;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$11;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadSport(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadSteps()V
    .registers 4

    .line 143
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_step"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 145
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 148
    const-string v0, "0"

    .line 151
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$3;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$3;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadSteps(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public downloadTemp()V
    .registers 4

    .line 991
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "update_time_temp"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lcom/keephealth/android/util/SharePreferenceUtils;->getString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 992
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 993
    sget-object v0, Lcom/keephealth/android/app/AppApplication;->registerTime:Ljava/lang/String;

    :cond_14
    if-nez v0, :cond_18

    .line 996
    const-string v0, "0"

    .line 999
    :cond_18
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$10;

    invoke-direct {v1, p0, v0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$10;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->downloadTemp(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public loginOut()V
    .registers 2

    .line 96
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/AccountViewModel$1;-><init>(Lcom/keephealth/android/viewmodel/mine/AccountViewModel;)V

    invoke-static {v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->loginOut(Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
