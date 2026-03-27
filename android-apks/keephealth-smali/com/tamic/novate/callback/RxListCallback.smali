.class public abstract Lcom/tamic/novate/callback/RxListCallback;
.super Lcom/tamic/novate/callback/RxGenericsCallback;
.source "RxListCallback.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tamic/novate/callback/RxGenericsCallback<",
        "TT;",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field private collectionType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Lcom/tamic/novate/callback/RxGenericsCallback;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Type;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Lcom/tamic/novate/callback/RxGenericsCallback;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->collectionType:Ljava/lang/reflect/Type;

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

    .line 60
    iget-object v0, p0, Lcom/tamic/novate/callback/RxListCallback;->collectionType:Ljava/lang/reflect/Type;

    if-nez v0, :cond_17

    .line 61
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/tamic/novate/callback/RxListCallback;->collectionType:Ljava/lang/reflect/Type;

    .line 63
    :cond_17
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 64
    const-string p1, "Novate"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 65
    invoke-virtual {p0, v0, p1}, Lcom/tamic/novate/callback/RxListCallback;->transform(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public transform(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
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

    .line 71
    const-string p2, "xxx"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :try_start_5
    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    const-string p1, "code"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/tamic/novate/callback/RxListCallback;->code:I

    .line 75
    const-string p1, "msg"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->msg:Ljava/lang/String;

    .line 76
    iget-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 77
    const-string p1, "error"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->msg:Ljava/lang/String;

    .line 80
    :cond_2a
    iget-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->msg:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 81
    const-string p1, "message"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->msg:Ljava/lang/String;

    .line 84
    :cond_3a
    const-string p1, "data"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->dataStr:Ljava/lang/String;

    .line 85
    iget-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->dataStr:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5a

    .line 86
    const-string p1, "result"

    invoke-virtual {p2, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->dataStr:Ljava/lang/String;

    .line 89
    :cond_5a
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iget-object p2, p0, Lcom/tamic/novate/callback/RxListCallback;->dataStr:Ljava/lang/String;

    iget-object v0, p0, Lcom/tamic/novate/callback/RxListCallback;->collectionType:Ljava/lang/reflect/Type;

    invoke-virtual {p1, p2, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->dataResponse:Ljava/lang/Object;
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_69} :catch_6a

    goto :goto_6e

    :catch_6a
    move-exception p1

    .line 92
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :goto_6e
    iget-object p1, p0, Lcom/tamic/novate/callback/RxListCallback;->dataResponse:Ljava/lang/Object;

    return-object p1
.end method
