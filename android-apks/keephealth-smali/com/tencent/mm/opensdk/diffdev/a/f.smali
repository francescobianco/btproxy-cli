.class final Lcom/tencent/mm/opensdk/diffdev/a/f;
.super Landroid/os/AsyncTask;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/mm/opensdk/diffdev/a/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/tencent/mm/opensdk/diffdev/a/f$a;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

.field private q:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private w:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/tencent/mm/opensdk/diffdev/OAuthListener;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->q:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->n:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    const-string p2, "https://long.open.weixin.qq.com/connect/l/qrconnect?f=json&uuid=%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->url:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 10

    iget-object p1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->q:Ljava/lang/String;

    const-string v0, "MicroMsg.SDK.NoopingTask"

    if-eqz p1, :cond_dd

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_e

    goto/16 :goto_dd

    :cond_e
    :goto_e
    invoke-virtual {p0}, Lcom/tencent/mm/opensdk/diffdev/a/f;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_ce

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->url:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->w:I

    if-nez v1, :cond_26

    const-string v1, ""

    goto :goto_37

    :cond_26
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "&last="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->w:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const v3, 0xea60

    invoke-static {p1, v3}, Lcom/tencent/mm/opensdk/diffdev/a/e;->a(Ljava/lang/String;I)[B

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3}, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->b([B)Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    move-result-object v3

    iget-object v6, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->p:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {v6}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->toString()Ljava/lang/String;

    move-result-object v6

    iget v7, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->y:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sub-long/2addr v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p1, v6, v7, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "nooping, url = %s, errCode = %s, uuidStatusCode = %d, time consumed = %d(ms)"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->p:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_OK:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    if-ne p1, v1, :cond_b4

    iget p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->y:I

    iput p1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->w:I

    iget p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->y:I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/a/g;->B:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v1

    if-ne p1, v1, :cond_8a

    iget-object p1, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->n:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    invoke-interface {p1}, Lcom/tencent/mm/opensdk/diffdev/OAuthListener;->onQrcodeScanned()V

    goto :goto_e

    :cond_8a
    iget p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->y:I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/a/g;->D:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v1

    if-eq p1, v1, :cond_e

    iget p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->y:I

    sget-object v1, Lcom/tencent/mm/opensdk/diffdev/a/g;->C:Lcom/tencent/mm/opensdk/diffdev/a/g;

    invoke-virtual {v1}, Lcom/tencent/mm/opensdk/diffdev/a/g;->getCode()I

    move-result v1

    if-ne p1, v1, :cond_e

    iget-object p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:Ljava/lang/String;

    if-eqz p1, :cond_aa

    iget-object p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_b3

    :cond_aa
    const-string p1, "nooping fail, confirm with an empty code!!!"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iput-object p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->p:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    :cond_b3
    return-object v3

    :cond_b4
    iget-object p1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->p:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->toString()Ljava/lang/String;

    move-result-object p1

    iget v1, v3, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->y:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "nooping fail, errCode = %s, uuidStatusCode = %d"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    :cond_ce
    const-string p1, "IDiffDevOAuth.stopAuth / detach invoked"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/diffdev/a/f$a;-><init>()V

    sget-object v0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_Auth_Stopped:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    :goto_da
    iput-object v0, p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->p:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    return-object p1

    :cond_dd
    :goto_dd
    const-string p1, "run fail, uuid is null"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    invoke-direct {p1}, Lcom/tencent/mm/opensdk/diffdev/a/f$a;-><init>()V

    sget-object v0, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->WechatAuth_Err_NormalErr:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    goto :goto_da
.end method

.method protected final synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;

    iget-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/f;->n:Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    iget-object v1, p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->p:Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;

    iget-object p1, p1, Lcom/tencent/mm/opensdk/diffdev/a/f$a;->x:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/tencent/mm/opensdk/diffdev/OAuthListener;->onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V

    return-void
.end method
