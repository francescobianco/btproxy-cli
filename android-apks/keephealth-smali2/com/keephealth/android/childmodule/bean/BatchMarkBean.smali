.class public Lcom/keephealth/android/childmodule/bean/BatchMarkBean;
.super Ljava/lang/Object;
.source "BatchMarkBean.java"


# instance fields
.field private date:Ljava/lang/String;

.field private id:J

.field private status:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDate()Ljava/lang/String;
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->date:Ljava/lang/String;

    return-object v0
.end method

.method public getId()J
    .registers 3

    .line 19
    iget-wide v0, p0, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->id:J

    return-wide v0
.end method

.method public getStatus()I
    .registers 2

    .line 27
    iget v0, p0, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->status:I

    return v0
.end method

.method public setDate(Ljava/lang/String;)V
    .registers 2

    .line 39
    iput-object p1, p0, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->date:Ljava/lang/String;

    return-void
.end method

.method public setId(J)V
    .registers 3

    .line 23
    iput-wide p1, p0, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->id:J

    return-void
.end method

.method public setStatus(I)V
    .registers 2

    .line 31
    iput p1, p0, Lcom/keephealth/android/childmodule/bean/BatchMarkBean;->status:I

    return-void
.end method
