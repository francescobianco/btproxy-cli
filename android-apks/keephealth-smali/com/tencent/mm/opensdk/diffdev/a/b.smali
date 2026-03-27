.class final Lcom/tencent/mm/opensdk/diffdev/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/diffdev/OAuthListener;


# instance fields
.field final synthetic g:Lcom/tencent/mm/opensdk/diffdev/a/a;


# direct methods
.method constructor <init>(Lcom/tencent/mm/opensdk/diffdev/a/a;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/mm/opensdk/diffdev/a/b;->g:Lcom/tencent/mm/opensdk/diffdev/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V
    .registers 5

    invoke-virtual {p1}, Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;->toString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, p2}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "onAuthFinish, errCode = %s, authCode = %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.SDK.ListenerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/b;->g:Lcom/tencent/mm/opensdk/diffdev/a/a;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/diffdev/a/a;->c(Lcom/tencent/mm/opensdk/diffdev/a/a;)Lcom/tencent/mm/opensdk/diffdev/a/d;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/opensdk/diffdev/a/b;->g:Lcom/tencent/mm/opensdk/diffdev/a/a;

    invoke-static {v1}, Lcom/tencent/mm/opensdk/diffdev/a/a;->a(Lcom/tencent/mm/opensdk/diffdev/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    invoke-interface {v1, p1, p2}, Lcom/tencent/mm/opensdk/diffdev/OAuthListener;->onAuthFinish(Lcom/tencent/mm/opensdk/diffdev/OAuthErrCode;Ljava/lang/String;)V

    goto :goto_2a

    :cond_3a
    return-void
.end method

.method public final onAuthGotQrcode(Ljava/lang/String;[B)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAuthGotQrcode, qrcodeImgPath = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MicroMsg.SDK.ListenerWrapper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/tencent/mm/opensdk/diffdev/a/b;->g:Lcom/tencent/mm/opensdk/diffdev/a/a;

    invoke-static {v1}, Lcom/tencent/mm/opensdk/diffdev/a/a;->a(Lcom/tencent/mm/opensdk/diffdev/a/a;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_26
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/mm/opensdk/diffdev/OAuthListener;

    invoke-interface {v1, p1, p2}, Lcom/tencent/mm/opensdk/diffdev/OAuthListener;->onAuthGotQrcode(Ljava/lang/String;[B)V

    goto :goto_26

    :cond_36
    return-void
.end method

.method public final onQrcodeScanned()V
    .registers 3

    const-string v0, "MicroMsg.SDK.ListenerWrapper"

    const-string v1, "onQrcodeScanned"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/b;->g:Lcom/tencent/mm/opensdk/diffdev/a/a;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/diffdev/a/a;->b(Lcom/tencent/mm/opensdk/diffdev/a/a;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/tencent/mm/opensdk/diffdev/a/b;->g:Lcom/tencent/mm/opensdk/diffdev/a/a;

    invoke-static {v0}, Lcom/tencent/mm/opensdk/diffdev/a/a;->b(Lcom/tencent/mm/opensdk/diffdev/a/a;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/opensdk/diffdev/a/c;

    invoke-direct {v1, p0}, Lcom/tencent/mm/opensdk/diffdev/a/c;-><init>(Lcom/tencent/mm/opensdk/diffdev/a/b;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    return-void
.end method
