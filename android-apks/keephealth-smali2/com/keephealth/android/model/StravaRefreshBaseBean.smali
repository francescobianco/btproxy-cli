.class public Lcom/keephealth/android/model/StravaRefreshBaseBean;
.super Ljava/lang/Object;
.source "StravaRefreshBaseBean.java"


# instance fields
.field private expires_at:J

.field private expires_in:I

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
.method public getExpires_at()J
    .registers 3

    .line 18
    iget-wide v0, p0, Lcom/keephealth/android/model/StravaRefreshBaseBean;->expires_at:J

    return-wide v0
.end method

.method public getExpires_in()I
    .registers 2

    .line 26
    iget v0, p0, Lcom/keephealth/android/model/StravaRefreshBaseBean;->expires_in:I

    return v0
.end method

.method public getRefresh_token()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/model/StravaRefreshBaseBean;->refresh_token:Ljava/lang/String;

    return-object v0
.end method

.method public getToken_type()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/keephealth/android/model/StravaRefreshBaseBean;->token_type:Ljava/lang/String;

    return-object v0
.end method

.method public setExpires_at(J)V
    .registers 3

    .line 22
    iput-wide p1, p0, Lcom/keephealth/android/model/StravaRefreshBaseBean;->expires_at:J

    return-void
.end method

.method public setExpires_in(I)V
    .registers 2

    .line 30
    iput p1, p0, Lcom/keephealth/android/model/StravaRefreshBaseBean;->expires_in:I

    return-void
.end method

.method public setRefresh_token(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/model/StravaRefreshBaseBean;->refresh_token:Ljava/lang/String;

    return-void
.end method

.method public setToken_type(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/model/StravaRefreshBaseBean;->token_type:Ljava/lang/String;

    return-void
.end method
