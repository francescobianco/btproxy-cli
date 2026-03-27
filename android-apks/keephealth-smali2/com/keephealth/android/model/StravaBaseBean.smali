.class public Lcom/keephealth/android/model/StravaBaseBean;
.super Ljava/lang/Object;
.source "StravaBaseBean.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/keephealth/android/model/StravaBaseBean$Athlete;
    }
.end annotation


# instance fields
.field private access_token:Ljava/lang/String;

.field private athlete:Lcom/keephealth/android/model/StravaBaseBean$Athlete;

.field private expires_at:Ljava/lang/String;

.field private expires_in:Ljava/lang/String;

.field private refresh_token:Ljava/lang/String;

.field private token_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccess_token()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean;->access_token:Ljava/lang/String;

    return-object v0
.end method

.method public getAthlete()Lcom/keephealth/android/model/StravaBaseBean$Athlete;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean;->athlete:Lcom/keephealth/android/model/StravaBaseBean$Athlete;

    return-object v0
.end method

.method public getExpires_at()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean;->expires_at:Ljava/lang/String;

    return-object v0
.end method

.method public getExpires_in()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean;->expires_in:Ljava/lang/String;

    return-object v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getToken_type()Ljava/lang/String;
    .registers 2

    .line 12
    iget-object v0, p0, Lcom/keephealth/android/model/StravaBaseBean;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public setAccess_token(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean;->access_token:Ljava/lang/String;

    return-void
.end method

.method public setAthlete(Lcom/keephealth/android/model/StravaBaseBean$Athlete;)V
    .registers 2

    .line 56
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean;->athlete:Lcom/keephealth/android/model/StravaBaseBean$Athlete;

    return-void
.end method

.method public setExpires_at(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean;->expires_at:Ljava/lang/String;

    return-void
.end method

.method public setExpires_in(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean;->expires_in:Ljava/lang/String;

    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setToken_type(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/keephealth/android/model/StravaBaseBean;->token_type:Ljava/lang/String;

    return-void
.end method
