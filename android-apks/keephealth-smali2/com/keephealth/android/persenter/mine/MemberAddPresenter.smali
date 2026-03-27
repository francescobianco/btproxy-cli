.class public Lcom/keephealth/android/persenter/mine/MemberAddPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "MemberAddPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/mine/MemberAddContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/mine/MemberAddContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/mine/MemberAddContract$Presenter;"
    }
.end annotation


# instance fields
.field headerurl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$700(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;Lio/reactivex/disposables/Disposable;)V
    .registers 2

    .line 28
    invoke-virtual {p0, p1}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->addDisposable(Lio/reactivex/disposables/Disposable;)V

    return-void
.end method


# virtual methods
.method public addMember(Lcom/keephealth/android/model/bean/UserBean;)V
    .registers 8

    .line 32
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/mine/MemberAddContract$View;->showLoading()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "headerUrl:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeaderUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FF543f3"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->headerurl:Ljava/lang/String;

    .line 35
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v2, ""

    const-string v3, "FF5433"

    if-nez v0, :cond_46

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    const-string v4, "null"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 36
    const-string v0, "===="

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iput-object v2, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->headerurl:Ljava/lang/String;

    .line 39
    :cond_46
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeaderUrl()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_53

    .line 40
    const-string v0, "==null=="

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    iput-object v2, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->headerurl:Ljava/lang/String;

    .line 43
    :cond_53
    iget-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->headerurl:Ljava/lang/String;

    iput-object v0, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->headerurl:Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "{\"name\":\""

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"sex\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getGender()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"birthday\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 45
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getYear()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getMonth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%02d"

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getDay()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"height\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"weight\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 46
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/UserBean;->getWeight()F

    move-result v2

    float-to-int v2, v2

    mul-int/lit8 v2, v2, 0xa

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\",\"avatar\":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter;->headerurl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\"}"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "jsonStr:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    new-instance v0, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$1;-><init>(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;Lcom/keephealth/android/model/bean/UserBean;)V

    invoke-static {v2, v0}, Lcom/keephealth/android/model/net/http/FamilyHttp;->addMember(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public uploadImage(Ljava/io/File;I)V
    .registers 5

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "file2:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  type\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ggee23"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    new-instance v0, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v0}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v1, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v0, v1}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 81
    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    move-result-object p2

    .line 82
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/*"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p1

    const-string v1, "image"

    invoke-virtual {p2, v1, v0, p1}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$2;

    invoke-direct {p2, p0}, Lcom/keephealth/android/persenter/mine/MemberAddPresenter$2;-><init>(Lcom/keephealth/android/persenter/mine/MemberAddPresenter;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/FileHttp;->uploadImage(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
