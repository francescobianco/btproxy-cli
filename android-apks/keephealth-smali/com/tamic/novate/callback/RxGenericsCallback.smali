.class public abstract Lcom/tamic/novate/callback/RxGenericsCallback;
.super Lcom/tamic/novate/callback/ResponseCallback;
.source "RxGenericsCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tamic/novate/callback/ResponseCallback<",
        "TT;TE;>;"
    }
.end annotation


# instance fields
.field protected code:I

.field protected dataResponse:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected dataStr:Ljava/lang/String;

.field protected msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Lcom/tamic/novate/callback/ResponseCallback;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataResponse:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 45
    iput v0, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->code:I

    .line 46
    const-string v0, ""

    iput-object v0, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->msg:Ljava/lang/String;

    .line 47
    iput-object v0, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onHandleResponse(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 54
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_21

    .line 55
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0

    .line 57
    :cond_21
    new-instance v1, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    .line 58
    const-string p1, "Novate"

    invoke-static {p1, v1}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0, v1, v0}, Lcom/tamic/novate/callback/RxGenericsCallback;->transform(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract onNext(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "I",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onNext(Ljava/lang/Object;Lokhttp3/Call;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lokhttp3/Call;",
            "TT;)V"
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/tamic/novate/util/Utils;->checkMain()Z

    move-result p2

    if-eqz p2, :cond_10

    .line 66
    iget p2, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->code:I

    iget-object p3, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->msg:Ljava/lang/String;

    iget-object v0, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataResponse:Ljava/lang/Object;

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tamic/novate/callback/RxGenericsCallback;->onNext(Ljava/lang/Object;ILjava/lang/String;Ljava/lang/Object;)V

    goto :goto_1a

    .line 68
    :cond_10
    iget-object p2, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->handler:Landroid/os/Handler;

    new-instance p3, Lcom/tamic/novate/callback/RxGenericsCallback$1;

    invoke-direct {p3, p0, p1}, Lcom/tamic/novate/callback/RxGenericsCallback$1;-><init>(Lcom/tamic/novate/callback/RxGenericsCallback;Ljava/lang/Object;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method

.method public transform(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassCastException;
        }
    .end annotation

    .line 81
    const-string v0, "data"

    const-class v1, Lcom/tamic/novate/NovateResponse;

    if-ne p2, v1, :cond_10

    .line 82
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 86
    :cond_10
    iget-object v1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->TAG:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    :try_start_15
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    const-string p1, "code"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->code:I

    .line 90
    const-string p1, "msg"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->msg:Ljava/lang/String;

    .line 91
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_38

    .line 92
    const-string p1, "error"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->msg:Ljava/lang/String;

    .line 95
    :cond_38
    iget-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_48

    .line 96
    const-string p1, "message"

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->msg:Ljava/lang/String;

    .line 99
    :cond_48
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_56} :catch_b8

    const-string v2, "result"

    if-eqz p1, :cond_64

    .line 101
    :try_start_5a
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    .line 104
    :cond_64
    iget-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 v4, 0x7b

    if-ne p1, v4, :cond_7d

    .line 105
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataResponse:Ljava/lang/Object;

    goto :goto_bc

    .line 106
    :cond_7d
    iget-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result p1

    const/16 p2, 0x5b

    if-ne p1, p2, :cond_bc

    .line 107
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    .line 108
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_a1

    .line 109
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    .line 111
    :cond_a1
    new-instance p1, Lcom/tamic/novate/callback/RxGenericsCallback$2;

    invoke-direct {p1, p0}, Lcom/tamic/novate/callback/RxGenericsCallback$2;-><init>(Lcom/tamic/novate/callback/RxGenericsCallback;)V

    .line 112
    invoke-virtual {p1}, Lcom/tamic/novate/callback/RxGenericsCallback$2;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 113
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v0, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataStr:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataResponse:Ljava/lang/Object;
    :try_end_b7
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_b7} :catch_b8

    goto :goto_bc

    :catch_b8
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 119
    :cond_bc
    :goto_bc
    iget-object p1, p0, Lcom/tamic/novate/callback/RxGenericsCallback;->dataResponse:Ljava/lang/Object;

    return-object p1
.end method
