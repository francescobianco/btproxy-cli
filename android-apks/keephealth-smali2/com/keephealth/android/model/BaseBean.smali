.class public Lcom/keephealth/android/model/BaseBean;
.super Ljava/lang/Object;
.source "BaseBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private code:I

.field private data:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private message:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/lang/Object;)V
    .registers 4

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/keephealth/android/model/BaseBean;->message:Ljava/lang/String;

    .line 42
    iput p2, p0, Lcom/keephealth/android/model/BaseBean;->code:I

    .line 43
    iput-object p3, p0, Lcom/keephealth/android/model/BaseBean;->data:Ljava/lang/Object;

    return-void
.end method

.method public static parseObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 48
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_9

    return-object v1

    .line 52
    :cond_9
    :try_start_9
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_12} :catch_13

    return-object p0

    :catch_13
    move-exception p0

    .line 55
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    return-object v1
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .line 17
    iget v0, p0, Lcom/keephealth/android/model/BaseBean;->code:I

    return v0
.end method

.method public getData()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/keephealth/android/model/BaseBean;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/keephealth/android/model/BaseBean;->message:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/keephealth/android/model/BaseBean;->code:I

    return-void
.end method

.method public setData(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 37
    iput-object p1, p0, Lcom/keephealth/android/model/BaseBean;->data:Ljava/lang/Object;

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2

    .line 29
    iput-object p1, p0, Lcom/keephealth/android/model/BaseBean;->message:Ljava/lang/String;

    return-void
.end method
