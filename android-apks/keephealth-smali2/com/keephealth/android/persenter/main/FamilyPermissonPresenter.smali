.class public Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "FamilyPermissonPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$400(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 14
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method


# virtual methods
.method public UpdateFamily(Lcom/keephealth/android/model/bean/FamilyBean;)V
    .registers 5

    .line 45
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;->showLoading()V

    .line 47
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 48
    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMyHealthInfoPower()Lcom/keephealth/android/model/bean/FamilyPermisson;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{\"mid\":\""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getMid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\",\"nickName\":\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/keephealth/android/model/bean/FamilyBean;->getNickName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\",\"myHealthInfoPower\":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 50
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 51
    new-instance v0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$2;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$2;-><init>(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/FamilyHttp;->updateFamilyPerssion(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method

.method public removeFamily(I)V
    .registers 4

    .line 17
    iget-object v0, p0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    check-cast v0, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;

    invoke-interface {v0}, Lcom/keephealth/android/persenter/main/FamilyPermissonContreact$View;->showLoading()V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"mid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\"}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 20
    new-instance v0, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$1;

    invoke-direct {v0, p0}, Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter$1;-><init>(Lcom/keephealth/android/persenter/main/FamilyPermissonPresenter;)V

    invoke-static {p1, v0}, Lcom/keephealth/android/model/net/http/FamilyHttp;->removeFamily(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
