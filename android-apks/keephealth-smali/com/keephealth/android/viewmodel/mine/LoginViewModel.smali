.class public Lcom/keephealth/android/viewmodel/mine/LoginViewModel;
.super Lcom/keephealth/android/base/BaseViewModel;
.source "LoginViewModel.java"


# instance fields
.field public bindingAccount:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public codeFailed:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public registerAccount:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public userBeanData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/keephealth/android/model/BaseBean<",
            "Lcom/keephealth/android/model/bean/UserBean;",
            ">;>;"
        }
    .end annotation
.end field

.field public verifyCode:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public verifyEmailOrPhone:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 50
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseViewModel;-><init>()V

    .line 52
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->userBeanData:Landroidx/lifecycle/MutableLiveData;

    .line 53
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->codeFailed:Landroidx/lifecycle/MutableLiveData;

    .line 54
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 55
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->registerAccount:Landroidx/lifecycle/MutableLiveData;

    .line 56
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->bindingAccount:Landroidx/lifecycle/MutableLiveData;

    .line 57
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyCode:Landroidx/lifecycle/MutableLiveData;

    .line 58
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->verifyEmailOrPhone:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$700(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$900(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 50
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public bindPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 549
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 550
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 551
    const-string p1, "mobileCountryCode"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 553
    const-string p1, "password"

    invoke-static {p3}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 555
    :cond_1e
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_29

    .line 556
    const-string p1, "verifyCode"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 558
    :cond_29
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_34

    .line 559
    const-string p1, "countryCode"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 562
    :cond_34
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 563
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$11;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$11;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->bindPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public checkPhone(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 483
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 484
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    const-string p1, "mobileCountryCode"

    const-string v1, "+86"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    const-string p1, "verifyCode"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 488
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$9;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$9;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/UserHttp;->checkPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public loginByFacebook(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 159
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"facebookId\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"accessToken\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 160
    const-string p2, "application/json; charset=utf-8"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 161
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$4;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$4;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->loginByFacebook(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public loginByPhone(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 627
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u8bf7\u6c42\u53c2\u6570"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 629
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    const-string p1, "phone"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    const-string p1, "mobileCountryCode"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5b

    .line 633
    const-string p1, "password"

    invoke-static {p4}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 635
    :cond_5b
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_66

    .line 636
    const-string p1, "verifyCode"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_66
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 639
    const-string p2, "application/json; charset=utf-8"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 640
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$13;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$13;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->loginByPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public regiestAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    if-nez p1, :cond_3

    return-void

    .line 370
    :cond_3
    const-string v0, "main"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "countryCode"

    const-string v2, "application/json"

    const-string v3, "verifyCode"

    const-string v4, "password"

    const-string v5, "email"

    if-eqz v0, :cond_56

    .line 371
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 372
    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2a

    .line 374
    invoke-static {p3}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :cond_2a
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_33

    .line 377
    invoke-interface {p1, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    :cond_33
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_3c

    .line 380
    invoke-interface {p1, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    :cond_3c
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 384
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$6;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$6;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->bingdingAccount(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    goto :goto_9e

    .line 406
    :cond_56
    const-string v0, "login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9e

    .line 407
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 408
    invoke-interface {p1, v5, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_73

    .line 410
    invoke-static {p3}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v4, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    :cond_73
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_7c

    .line 413
    invoke-interface {p1, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    :cond_7c
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_85

    .line 416
    invoke-interface {p1, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    :cond_85
    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    new-instance p3, Lcom/google/gson/Gson;

    invoke-direct {p3}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p3, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 420
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$7;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$7;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->registerAccount(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method public registerPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 589
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 590
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 591
    const-string p1, "mobileCountryCode"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1e

    .line 593
    const-string p1, "password"

    invoke-static {p3}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 595
    :cond_1e
    const-string p1, "verifyCode"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2e

    .line 597
    const-string p1, "countryCode"

    invoke-interface {v0, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_2e
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 600
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$12;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$12;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->registerPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public requestLogin(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string v1, "type"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string p1, "email"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_22

    .line 65
    const-string p1, "password"

    invoke-static {p3}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_22
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2d

    .line 68
    const-string p1, "verifyCode"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    :cond_2d
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 71
    const-string p2, "application/json; charset=utf-8"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$1;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->loginByEmail(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public requestLoginByWechat(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"wxOpenid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"accessToken\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 131
    const-string p2, "application/json; charset=utf-8"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 132
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$3;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$3;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->loginByWechat(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public sendCode(Ljava/lang/String;)V
    .registers 4

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendCode: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Login"

    invoke-static {v1, v0}, Lcom/keephealth/android/util/log/LogUtil;->logD(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$5;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->sendCode(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public sendCodePhone(Ljava/lang/String;)V
    .registers 4

    .line 667
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 668
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 669
    const-string p1, "mobileCountryCode"

    const-string v1, "+86"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 671
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$14;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$14;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->sendCodePhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 518
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 519
    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 520
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1a

    const/4 v1, 0x2

    .line 521
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "checkAccountType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    :cond_1a
    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 524
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$10;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$10;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public sendPhoneVerifyCode(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 696
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 697
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 698
    const-string p1, "mobileCountryCode"

    const-string v1, "+86"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1c

    .line 700
    const-string p1, "checkAccountType"

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 702
    :cond_1c
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 703
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$15;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$15;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->sendPhoneVerifyCode(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public setDefalutMedal()Ljava/util/List;
    .registers 71
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/keephealth/android/ui/mine/bean/MedalData;",
            ">;"
        }
    .end annotation

    .line 188
    new-instance v11, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 189
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const/4 v10, 0x1

    const-wide/16 v1, 0x0

    const v3, 0x7f1003eb

    const v4, 0x7f1003ec

    const v5, 0x7f0d0168

    const v6, 0x7f0d0169

    const/4 v7, 0x0

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 190
    new-instance v0, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 191
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const/16 v22, 0x1

    const-wide/16 v13, 0x1

    const v15, 0x7f1003ed

    const v16, 0x7f1003ee

    const v17, 0x7f0d016a

    const v18, 0x7f0d016b

    const/16 v19, 0x0

    move-object v12, v0

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 192
    new-instance v1, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const/16 v33, 0x1

    const-wide/16 v24, 0x2

    const v26, 0x7f1003ef

    const v27, 0x7f1003f0

    const v28, 0x7f0d016c

    const v29, 0x7f0d016d

    const/16 v30, 0x0

    move-object/from16 v23, v1

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 194
    new-instance v2, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 195
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x3

    const v15, 0x7f1003f1

    const v16, 0x7f1003f2

    const v17, 0x7f0d016e

    const v18, 0x7f0d016f

    move-object v12, v2

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 196
    new-instance v3, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 197
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x4

    const v26, 0x7f1003f3

    const v27, 0x7f1003f4

    const v28, 0x7f0d0170

    const v29, 0x7f0d0171

    move-object/from16 v23, v3

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 198
    new-instance v4, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x5

    const v15, 0x7f1003ac

    const v16, 0x7f1003ad

    const v17, 0x7f0d012c

    const v18, 0x7f0d012d

    move-object v12, v4

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 200
    new-instance v5, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 201
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x6

    const v26, 0x7f1003aa

    const v27, 0x7f1003ab

    const v28, 0x7f0d012a

    const v29, 0x7f0d012b

    move-object/from16 v23, v5

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 202
    new-instance v6, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 203
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x7

    const v15, 0x7f1003ce

    const v16, 0x7f1003d5

    const v17, 0x7f0d0153

    const v18, 0x7f0d0154

    move-object v12, v6

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 204
    new-instance v7, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 205
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0x8

    const v26, 0x7f1003cf

    const v27, 0x7f1003d4

    const v28, 0x7f0d0151

    const v29, 0x7f0d0152

    move-object/from16 v23, v7

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 206
    new-instance v8, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 207
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0x9

    const v15, 0x7f1003d8

    const v16, 0x7f1003db

    const v17, 0x7f0d0159

    const v18, 0x7f0d015a

    move-object v12, v8

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 208
    new-instance v9, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0xa

    const v26, 0x7f1003d0

    const v27, 0x7f1003d3

    const v28, 0x7f0d0150

    const v29, 0x7f0d014f

    move-object/from16 v23, v9

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 210
    new-instance v10, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    const-wide/16 v13, 0xb

    const v15, 0x7f1003d9

    const v16, 0x7f1003da

    const v17, 0x7f0d0157

    const v18, 0x7f0d0158

    move-object v12, v10

    invoke-direct/range {v12 .. v22}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 212
    new-instance v12, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v31

    const-wide/16 v24, 0xc

    const v26, 0x7f1003dc

    const v27, 0x7f1003dd

    const v28, 0x7f0d015b

    const v29, 0x7f0d015c

    move-object/from16 v23, v12

    invoke-direct/range {v23 .. v33}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 214
    new-instance v14, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 215
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21

    const/16 v23, 0x1

    const-wide/16 v15, 0xd

    const v17, 0x7f1003d1

    const v18, 0x7f1003d2

    const v19, 0x7f0d014e

    const v20, 0x7f0d014f

    const/16 v24, 0x0

    move-object v13, v14

    move-object/from16 v34, v14

    move-wide v14, v15

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v24

    invoke-direct/range {v13 .. v23}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 216
    new-instance v13, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 217
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x1

    const-wide/16 v36, 0xe

    const v38, 0x7f1003d6

    const v39, 0x7f1003d7

    const v40, 0x7f0d0155

    const v41, 0x7f0d0156

    const/16 v42, 0x0

    move-object/from16 v35, v13

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 219
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 220
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v22

    const/16 v24, 0x2

    const-wide/16 v16, 0xf

    const v18, 0x7f1003b2

    const v19, 0x7f1003b5

    const v20, 0x7f0d0134

    const v21, 0x7f0d0135

    const/16 v25, 0x0

    move-object v14, v15

    move-object/from16 v46, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v25

    invoke-direct/range {v14 .. v24}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 221
    new-instance v14, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x2

    const-wide/16 v36, 0x10

    const v38, 0x7f1003b6

    const v39, 0x7f1003b9

    const v40, 0x7f0d0138

    const v41, 0x7f0d0139

    move-object/from16 v35, v14

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 223
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 224
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23

    const/16 v25, 0x2

    const-wide/16 v16, 0x11

    const v18, 0x7f1003ae

    const v19, 0x7f1003b1

    const v20, 0x7f0d0130

    const v21, 0x7f0d0131

    const/16 v22, 0x0

    move-object/from16 v26, v15

    invoke-direct/range {v15 .. v25}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 225
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 226
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x12

    const v38, 0x7f1003b3

    const v39, 0x7f1003b4

    const v40, 0x7f0d0132

    const v41, 0x7f0d0133

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v16, v15

    .line 227
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 228
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const/16 v57, 0x2

    const-wide/16 v48, 0x13

    const v50, 0x7f1003b7

    const v51, 0x7f1003b8

    const v52, 0x7f0d0136

    const v53, 0x7f0d0137

    const/16 v54, 0x0

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v17, v15

    .line 229
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x14

    const v38, 0x7f1003af

    const v39, 0x7f1003b0

    const v40, 0x7f0d012e

    const v41, 0x7f0d012f

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v18, v15

    .line 231
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x15

    const v50, 0x7f100404

    const v51, 0x7f100407

    const v52, 0x7f0d0181

    const v53, 0x7f0d0182

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v19, v15

    .line 233
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x16

    const v38, 0x7f10040a

    const v39, 0x7f10040b

    const v40, 0x7f0d0185

    const v41, 0x7f0d0186

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v20, v15

    .line 235
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x17

    const v50, 0x7f10040c

    const v51, 0x7f10040d

    const v52, 0x7f0d0187

    const v53, 0x7f0d0188

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v21, v15

    .line 237
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x18

    const v38, 0x7f100405

    const v39, 0x7f100406

    const v40, 0x7f0d017f

    const v41, 0x7f0d0180

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v22, v15

    .line 239
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 240
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x19

    const v50, 0x7f100408

    const v51, 0x7f100409

    const v52, 0x7f0d0183

    const v53, 0x7f0d0184

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v23, v15

    .line 242
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 243
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const/16 v45, 0x3

    const-wide/16 v36, 0x1a

    const v38, 0x7f1003be

    const v39, 0x7f1003c1

    const v40, 0x7f0d0140

    const v41, 0x7f0d0141

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v24, v15

    .line 244
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 245
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const/16 v57, 0x3

    const-wide/16 v48, 0x1b

    const v50, 0x7f1003c8

    const v51, 0x7f1003cd

    const v52, 0x7f0d014c

    const v53, 0x7f0d014d

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v25, v15

    .line 246
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 247
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x1c

    const v38, 0x7f1003ba

    const v39, 0x7f1003bd

    const v40, 0x7f0d013c

    const v41, 0x7f0d013d

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v27, v15

    .line 248
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x1d

    const v50, 0x7f1003c2

    const v51, 0x7f1003c5

    const v52, 0x7f0d0144

    const v53, 0x7f0d0145

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v28, v15

    .line 250
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 251
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x1e

    const v38, 0x7f1003c9

    const v39, 0x7f1003cc

    const v40, 0x7f0d014a

    const v41, 0x7f0d014b

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v29, v15

    .line 252
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 253
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x1f

    const v50, 0x7f1003bb

    const v51, 0x7f1003bc

    const v52, 0x7f0d013a

    const v53, 0x7f0d013b

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v30, v15

    .line 254
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 255
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x20

    const v38, 0x7f1003bf

    const v39, 0x7f1003c0

    const v40, 0x7f0d013e

    const v41, 0x7f0d013f

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v31, v15

    .line 256
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 257
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x21

    const v50, 0x7f1003c3

    const v51, 0x7f1003c4

    const v52, 0x7f0d0142

    const v53, 0x7f0d0143

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v32, v15

    .line 258
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 259
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x22

    const v38, 0x7f1003c6

    const v39, 0x7f1003c7

    const v40, 0x7f0d0146

    const v41, 0x7f0d0147

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v33, v15

    .line 260
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 261
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v55

    const-wide/16 v48, 0x23

    const v50, 0x7f1003ca

    const v51, 0x7f1003cb

    const v52, 0x7f0d0148

    const v53, 0x7f0d0149

    move-object/from16 v47, v15

    invoke-direct/range {v47 .. v57}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 262
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v43

    const-wide/16 v36, 0x24

    const v38, 0x7f1003f7

    const v39, 0x7f1003f8

    const v40, 0x7f0d0174

    const v41, 0x7f0d0175

    move-object/from16 v35, v15

    invoke-direct/range {v35 .. v45}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    .line 264
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 265
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const/16 v58, 0x3

    const-wide/16 v49, 0x25

    const v51, 0x7f1003f9

    const v52, 0x7f1003fa

    const v53, 0x7f0d0176

    const v54, 0x7f0d0177

    const/16 v55, 0x0

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v36, v15

    .line 266
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 267
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const/16 v69, 0x3

    const-wide/16 v60, 0x26

    const v62, 0x7f1003f5

    const v63, 0x7f1003f6

    const v64, 0x7f0d0172

    const v65, 0x7f0d0173

    const/16 v66, 0x0

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v37, v15

    .line 268
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 269
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x27

    const v51, 0x7f1003fc

    const v52, 0x7f1003fd

    const v53, 0x7f0d0179

    const v54, 0x7f0d017a

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v38, v15

    .line 270
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x28

    const v62, 0x7f1003fb

    const v63, 0x7f100400

    const v64, 0x7f0d0178

    const v65, 0x7f0d017d

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v39, v15

    .line 272
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 273
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x29

    const v51, 0x7f1003fe

    const v52, 0x7f1003ff

    const v53, 0x7f0d017b

    const v54, 0x7f0d017c

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v40, v15

    .line 275
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 276
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const/16 v69, 0x4

    const-wide/16 v60, 0x2a

    const v62, 0x7f1003e2

    const v63, 0x7f1003e5

    const v64, 0x7f0d0163

    const v65, 0x7f0d0164

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v41, v15

    .line 277
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 278
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const/16 v58, 0x4

    const-wide/16 v49, 0x2b

    const v51, 0x7f1003de

    const v52, 0x7f1003e1

    const v53, 0x7f0d015f

    const v54, 0x7f0d0160

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v42, v15

    .line 279
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 280
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x2c

    const v62, 0x7f1003e3

    const v63, 0x7f1003e4

    const v64, 0x7f0d0161

    const v65, 0x7f0d0162

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v43, v15

    .line 281
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 282
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v56

    const-wide/16 v49, 0x2d

    const v51, 0x7f1003e6

    const v52, 0x7f1003e7

    const v53, 0x7f0d0165

    const v54, 0x7f0d0166

    move-object/from16 v48, v15

    invoke-direct/range {v48 .. v58}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v44, v15

    .line 283
    new-instance v15, Lcom/keephealth/android/ui/mine/bean/MedalData;

    .line 284
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v67

    const-wide/16 v60, 0x2e

    const v62, 0x7f1003df

    const v63, 0x7f1003e0

    const v64, 0x7f0d015d

    const v65, 0x7f0d015e

    move-object/from16 v59, v15

    invoke-direct/range {v59 .. v69}, Lcom/keephealth/android/ui/mine/bean/MedalData;-><init>(JIIIIZJI)V

    move-object/from16 v45, v15

    .line 286
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 287
    invoke-interface {v15, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    invoke-interface {v15, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {v15, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-interface {v15, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {v15, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 295
    invoke-interface {v15, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-interface {v15, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v15, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 298
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-interface {v15, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v34

    .line 300
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    invoke-interface {v15, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v46

    .line 302
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v26

    .line 304
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v16

    .line 305
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v17

    .line 306
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v18

    .line 307
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v19

    .line 308
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v20

    .line 309
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v21

    .line 310
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v22

    .line 311
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v23

    .line 312
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v24

    .line 313
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v25

    .line 314
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v27

    .line 315
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v28

    .line 316
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v29

    .line 317
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v30

    .line 318
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v31

    .line 319
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v32

    .line 320
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v33

    .line 321
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v47

    .line 322
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v35

    .line 323
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v36

    .line 324
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v37

    .line 325
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v38

    .line 326
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v39

    .line 327
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v40

    .line 328
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v41

    .line 329
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v42

    .line 330
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v43

    .line 331
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v44

    .line 332
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, v45

    .line 333
    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v15
.end method

.method public syncDeviceData()V
    .registers 4

    .line 99
    invoke-static {}, Lcom/keephealth/android/util/SPHelper;->getBindBLEDevice()Lcom/keephealth/android/model/bean/BLEDevice;

    move-result-object v0

    if-eqz v0, :cond_61

    .line 101
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"model\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceProduct:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"mac\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"deviceType\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 102
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/BLEDevice;->getDeviceType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"version\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"name\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, v0, Lcom/keephealth/android/model/bean/BLEDevice;->mDeviceName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 104
    new-instance v1, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$2;

    invoke-direct {v1, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$2;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {v0, v1}, Lcom/keephealth/android/model/net/http/UserHttp;->sendDeviceInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    :cond_61
    return-void
.end method

.method public verifityEmail(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 448
    new-instance v0, Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;

    invoke-direct {v0}, Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;-><init>()V

    .line 449
    invoke-virtual {v0, p1}, Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;->setEmail(Ljava/lang/String;)V

    .line 450
    invoke-virtual {v0, p2}, Lcom/keephealth/android/ui/main/bean/VerifyEmailBean;->setVerifyCode(Ljava/lang/String;)V

    .line 451
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 452
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$8;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$8;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/UserHttp;->verifyEmail(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public verifyEmail(Ljava/lang/String;)V
    .registers 3

    .line 728
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$16;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$16;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->verifyEmail(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public verifyPhone(Ljava/lang/String;)V
    .registers 4

    .line 753
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 754
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 755
    const-string p1, "mobileCountryCode"

    const-string v1, "+86"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 757
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$17;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/LoginViewModel$17;-><init>(Lcom/keephealth/android/viewmodel/mine/LoginViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->verifyPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
