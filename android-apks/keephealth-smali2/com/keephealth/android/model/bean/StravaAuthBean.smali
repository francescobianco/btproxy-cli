.class public Lcom/keephealth/android/model/bean/StravaAuthBean;
.super Ljava/lang/Object;
.source "StravaAuthBean.java"


# instance fields
.field private client_id:Ljava/lang/String;

.field private client_secret:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private grant_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getClient_id()Ljava/lang/String;
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/keephealth/android/model/bean/StravaAuthBean;->client_id:Ljava/lang/String;

    return-object v0
.end method

.method public getClient_secret()Ljava/lang/String;
    .registers 2

    .line 18
    iget-object v0, p0, Lcom/keephealth/android/model/bean/StravaAuthBean;->client_secret:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/keephealth/android/model/bean/StravaAuthBean;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getGrant_type()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/keephealth/android/model/bean/StravaAuthBean;->grant_type:Ljava/lang/String;

    return-object v0
.end method

.method public setClient_id(Ljava/lang/String;)V
    .registers 2

    .line 14
    iput-object p1, p0, Lcom/keephealth/android/model/bean/StravaAuthBean;->client_id:Ljava/lang/String;

    return-void
.end method

.method public setClient_secret(Ljava/lang/String;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/keephealth/android/model/bean/StravaAuthBean;->client_secret:Ljava/lang/String;

    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/keephealth/android/model/bean/StravaAuthBean;->code:Ljava/lang/String;

    return-void
.end method

.method public setGrant_type(Ljava/lang/String;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/keephealth/android/model/bean/StravaAuthBean;->grant_type:Ljava/lang/String;

    return-void
.end method
