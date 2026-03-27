.class public Lcom/keephealth/android/persenter/mine/PersonPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "PersonPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/mine/PersonContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/mine/PersonContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/mine/PersonContract$Presenter;"
    }
.end annotation


# instance fields
.field private mWeight:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/mine/PersonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/mine/PersonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/mine/PersonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/mine/PersonPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 35
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/PersonPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public setUserInfo(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 14

    .line 39
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/mine/PersonContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/PersonContract$View;->showLoadingFalse()V

    .line 41
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mWeight:I

    const/16 v1, 0x12d

    if-le v0, v1, :cond_2d

    .line 43
    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mWeight:I

    int-to-float v0, v0

    .line 44
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/keephealth/android/model/bean/UserBean;->setWeight(F)V

    .line 45
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/keephealth/android/app/AppApplication;->setUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    .line 46
    invoke-static {p1}, Lcom/keephealth/android/util/SPHelper;->saveUserBean(Lcom/keephealth/android/model/bean/UserBean;)V

    goto :goto_31

    :cond_2d
    mul-int/lit8 v0, v0, 0xa

    .line 48
    iput v0, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mWeight:I

    .line 50
    :goto_31
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v0

    const-string v1, "\"}"

    const-string v2, "\",\"temperatureUnit\":\""

    const-string v3, "\",\"stepSize\":\""

    const-string v4, "\",\"weight\":\""

    const-string v5, "\",\"height\":\""

    const-string v6, "\",\"birthday\":\""

    const-string v7, "\",\"sex\":\""

    const-string v8, "{\"name\":\""

    const-string v9, "%02d"

    const-string v10, "-"

    if-eqz v0, :cond_12e

    .line 51
    invoke-static {}, Lcom/keephealth/android/app/AppApplication;->getInstance()Lcom/keephealth/android/app/AppApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/keephealth/android/app/AppApplication;->getaMapLocation()Lcom/keephealth/android/model/bean/LocationBean;

    move-result-object v0

    .line 52
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 53
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-static {v7, v9, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mWeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 54
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"appleHealth\":\"false\",\"lat\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 55
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LocationBean;->getLatitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"lon\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LocationBean;->getLongitude()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"country\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 56
    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LocationBean;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\",\"city\":\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/keephealth/android/model/bean/LocationBean;->getCity()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\",\"unit\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1cb

    .line 58
    :cond_12e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 59
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-static {v6, v9, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p0, Lcom/keephealth/android/persenter/mine/PersonPresenter;->mWeight:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 60
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getStepDistance()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\",\"appleHealth\":\"false\",\"unit\":\""

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 61
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUnit()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getTemperatureUnit()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 63
    :goto_1cb
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "jsonStr:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GGG443"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 65
    new-instance v0, Lcom/keephealth/android/persenter/mine/PersonPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/mine/PersonPresenter$1;-><init>(Lcom/keephealth/android/persenter/mine/PersonPresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/UserHttp;->setUserInfo(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
