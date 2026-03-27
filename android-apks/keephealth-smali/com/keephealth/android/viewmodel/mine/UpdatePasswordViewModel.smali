.class public Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;
.super Lcom/keephealth/android/base/BaseViewModel;
.source "UpdatePasswordViewModel.java"


# instance fields
.field public sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public updatePassword:Landroidx/lifecycle/MutableLiveData;
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
            "Lcom/keephealth/android/model/bean/UserBean;",
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

.field public verifyEmailOrPhoneUser:Landroidx/lifecycle/MutableLiveData;
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

    .line 29
    invoke-direct {p0}, Lcom/keephealth/android/base/BaseViewModel;-><init>()V

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->sendCodeSuccess:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->userBeanData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->verifyEmailOrPhone:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->verifyEmailOrPhoneUser:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->updatePassword:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$100(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$300(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public sendCode(Ljava/lang/String;)V
    .registers 5

    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 38
    const-string v1, "email"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "application/json"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    .line 40
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$1;-><init>(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;)V

    const-string v1, ""

    invoke-static {p1, v1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->sendEmailVerifyCode(Ljava/lang/String;Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public sendPhoneVerifyCode(Ljava/lang/String;)V
    .registers 4

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string p1, "mobileCountryCode"

    const-string v1, "+86"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 128
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$4;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$4;-><init>(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->sendPhoneVerifyCode(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public updatePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"email\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"password\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p2}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\",\"verifyCode\":\""

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 65
    const-string p2, "application/json"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 66
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$2;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$2;-><init>(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->updatePassword(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public updatePasswordPhone(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    .line 91
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 92
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    const-string p1, "mobileCountryCode"

    const-string v1, "+86"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    const-string p1, "password"

    invoke-static {p2}, Lcom/keephealth/android/util/Md5Util;->stringToMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string p1, "verifyCode"

    invoke-interface {v0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 97
    const-string p2, "application/json; charset=utf-8"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 98
    new-instance p2, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$3;

    invoke-direct {p2, p0}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$3;-><init>(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/LoginHttp;->updatePasswordPhone(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public verifyEmailUser(Ljava/lang/String;)V
    .registers 3

    .line 153
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$5;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$5;-><init>(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->verifyEmailUser(Ljava/lang/String;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public verifyPhoneUser(Ljava/lang/String;)V
    .registers 4

    .line 178
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 179
    const-string v1, "phone"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    const-string p1, "mobileCountryCode"

    const-string v1, "+86"

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    const-string p1, "application/json"

    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 182
    new-instance v0, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$6;

    invoke-direct {v0, p0}, Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel$6;-><init>(Lcom/keephealth/android/viewmodel/mine/UpdatePasswordViewModel;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/LoginHttp;->verifyPhoneUser(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
