.class public Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;
.super Lcom/keephealth/android/base/BasePersenter;
.source "FamilyDetailPresenter.java"

# interfaces
.implements Lcom/keephealth/android/persenter/main/FamilyDetailContract$Presenter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/keephealth/android/base/BasePersenter<",
        "Lcom/keephealth/android/persenter/main/FamilyDetailContract$View;",
        ">;",
        "Lcom/keephealth/android/persenter/main/FamilyDetailContract$Presenter;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Lcom/keephealth/android/base/BasePersenter;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;)Lcom/keephealth/android/base/IBaseView;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;->mView:Lcom/keephealth/android/base/IBaseView;

    return-object p0
.end method


# virtual methods
.method public getFamilyDetail(ILjava/lang/String;)V
    .registers 5

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{\"mid\":\""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\",\"dateTime\":\""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\"}"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 18
    const-string p2, "application/json; charset=utf-8"

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 19
    new-instance p2, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter$1;

    invoke-direct {p2, p0}, Lcom/keephealth/android/persenter/main/FamilyDetailPresenter$1;-><init>(Lcom/keephealth/android/persenter/main/FamilyDetailPresenter;)V

    invoke-static {p1, p2}, Lcom/keephealth/android/model/net/http/FamilyHttp;->getFamilyDetail(Lokhttp3/RequestBody;Lcom/keephealth/android/model/net/ApiCallback;)V

    return-void
.end method
