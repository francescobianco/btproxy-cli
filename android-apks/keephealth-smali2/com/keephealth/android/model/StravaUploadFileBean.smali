.class public Lcom/keephealth/android/model/StravaUploadFileBean;
.super Ljava/lang/Object;
.source "StravaUploadFileBean.java"


# instance fields
.field private activity_id:I

.field private error:Ljava/lang/String;

.field private external_id:Ljava/lang/String;

.field private id:J

.field private id_str:Ljava/lang/String;

.field private status:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getActivity_id()I
    .registers 2

    .line 53
    iget v0, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->activity_id:I

    return v0
.end method

.method public getError()Ljava/lang/String;
    .registers 2

    .line 36
    iget-object v0, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->error:Ljava/lang/String;

    return-object v0
.end method

.method public getExternal_id()Ljava/lang/String;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->external_id:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 12
    iget-wide v0, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->id:J

    return-wide v0
.end method

.method public getId_str()Ljava/lang/String;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->id_str:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .registers 2

    .line 44
    iget-object v0, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->status:Ljava/lang/String;

    return-object v0
.end method

.method public setActivity_id(I)V
    .registers 2

    .line 57
    iput p1, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->activity_id:I

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .registers 2

    .line 40
    iput-object p1, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->error:Ljava/lang/String;

    return-void
.end method

.method public setExternal_id(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->external_id:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 16
    iput-wide p1, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->id:J

    return-void
.end method

.method public setId_str(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->id_str:Ljava/lang/String;

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .registers 2

    .line 48
    iput-object p1, p0, Lcom/keephealth/android/model/StravaUploadFileBean;->status:Ljava/lang/String;

    return-void
.end method
