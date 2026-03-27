.class Lcom/tamic/novate/NovateSubscriber;
.super Lcom/tamic/novate/BaseSubscriber;
.source "NovateSubscriber.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tamic/novate/BaseSubscriber<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation


# instance fields
.field private callBack:Lcom/tamic/novate/Novate$ResponseCallBack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/tamic/novate/Novate$ResponseCallBack<",
            "TT;>;"
        }
    .end annotation
.end field

.field private finalNeedType:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tamic/novate/Novate$ResponseCallBack;)V
    .registers 3

    .line 51
    invoke-direct {p0, p1}, Lcom/tamic/novate/BaseSubscriber;-><init>(Landroid/content/Context;)V

    .line 52
    iput-object p2, p0, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    if-eqz v0, :cond_7

    .line 76
    invoke-interface {v0}, Lcom/tamic/novate/Novate$ResponseCallBack;->onCompleted()V

    :cond_7
    return-void
.end method

.method public onError(Lcom/tamic/novate/Throwable;)V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    if-eqz v0, :cond_7

    .line 83
    invoke-interface {v0, p1}, Lcom/tamic/novate/Novate$ResponseCallBack;->onError(Lcom/tamic/novate/Throwable;)V

    :cond_7
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .registers 2

    .line 44
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/tamic/novate/NovateSubscriber;->onNext(Lokhttp3/ResponseBody;)V

    return-void
.end method

.method public onNext(Lokhttp3/ResponseBody;)V
    .registers 18

    move-object/from16 v1, p0

    .line 90
    const-string v0, "data"

    const-string v2, "Novate"

    .line 0
    const-string v3, "dataResponse \u65e0\u6cd5\u89e3\u6790\u4e3a:"

    const-string v4, "data\u4e3a\u6570\u5bf9\u8c61\u65e0\u6cd5\u8f6c\u6362: --- "

    const-string v5, "ResponseBody:"

    .line 90
    :try_start_c
    invoke-virtual/range {p1 .. p1}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v6

    .line 91
    new-instance v7, Ljava/lang/String;

    invoke-direct {v7, v6}, Ljava/lang/String;-><init>([B)V

    .line 92
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    iget-object v5, v1, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_2b} :catch_1d2

    if-eqz v5, :cond_1e1

    .line 107
    :try_start_2d
    const-string v5, ""
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_2f} :catch_1b0

    const/4 v6, 0x0

    const/4 v8, 0x1

    .line 112
    :try_start_31
    new-instance v9, Lorg/json/JSONObject;

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 113
    const-string v10, "code"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 114
    const-string v10, "msg"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 115
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_52

    .line 116
    const-string v10, "message"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 118
    :cond_52
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5e

    .line 119
    const-string v10, "error"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 121
    :cond_5e
    new-instance v10, Lcom/tamic/novate/NovateResponse;

    invoke-direct {v10}, Lcom/tamic/novate/NovateResponse;-><init>()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_63} :catch_10f

    .line 122
    :try_start_63
    invoke-virtual {v10, v8}, Lcom/tamic/novate/NovateResponse;->setCode(I)V

    .line 123
    invoke-virtual {v10, v5}, Lcom/tamic/novate/NovateResponse;->setMessage(Ljava/lang/String;)V

    .line 124
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    .line 125
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_63 .. :try_end_75} :catch_10c

    const-string v13, "result"

    if-eqz v12, :cond_7d

    .line 126
    :try_start_79
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 129
    :cond_7d
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_86

    .line 130
    invoke-virtual {v10, v6}, Lcom/tamic/novate/NovateResponse;->setResult(Ljava/lang/Object;)V

    .line 133
    :cond_86
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v12

    const/4 v14, 0x0

    if-nez v12, :cond_e3

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v12

    const/16 v15, 0x7b

    if-ne v12, v15, :cond_e3

    .line 134
    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_ab

    .line 136
    invoke-virtual {v9, v13}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    .line 138
    :cond_ab
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    iget-object v9, v1, Lcom/tamic/novate/NovateSubscriber;->finalNeedType:Ljava/lang/reflect/Type;

    invoke-static {v9}, Lcom/tamic/novate/util/ReflectionUtil;->newInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v4, v0, v9}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_79 .. :try_end_be} :catch_10c

    .line 139
    :try_start_be
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tamic/novate/config/ConfigLoader;->isFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_127

    if-eqz v4, :cond_c9

    goto :goto_127

    .line 140
    :cond_c9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v9, v1, Lcom/tamic/novate/NovateSubscriber;->finalNeedType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    new-instance v0, Lcom/tamic/novate/exception/FormatException;

    invoke-direct {v0}, Lcom/tamic/novate/exception/FormatException;-><init>()V

    throw v0
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_be .. :try_end_e1} :catch_e1

    :catch_e1
    move-exception v0

    goto :goto_112

    .line 144
    :cond_e3
    :try_start_e3
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10a

    invoke-virtual {v11, v14}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v9, 0x5b

    if-eq v0, v9, :cond_f2

    goto :goto_10a

    .line 145
    :cond_f2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/tamic/novate/NovateSubscriber;->finalNeedType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    new-instance v0, Ljava/lang/ClassCastException;

    invoke-direct {v0}, Ljava/lang/ClassCastException;-><init>()V

    throw v0
    :try_end_10a
    .catch Ljava/lang/Exception; {:try_start_e3 .. :try_end_10a} :catch_10c

    :cond_10a
    :goto_10a
    move-object v4, v6

    goto :goto_127

    :catch_10c
    move-exception v0

    move-object v4, v6

    goto :goto_112

    :catch_10f
    move-exception v0

    move-object v4, v6

    move-object v10, v4

    .line 153
    :goto_112
    :try_start_112
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 154
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    iget-object v9, v1, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    if-eqz v9, :cond_127

    .line 156
    invoke-static {v0}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/tamic/novate/Novate$ResponseCallBack;->onError(Lcom/tamic/novate/Throwable;)V

    :cond_127
    :goto_127
    if-eqz v4, :cond_12c

    .line 161
    invoke-virtual {v10, v4}, Lcom/tamic/novate/NovateResponse;->setData(Ljava/lang/Object;)V

    :cond_12c
    if-nez v4, :cond_141

    .line 164
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->context:Landroid/content/Context;

    invoke-virtual {v10, v0}, Lcom/tamic/novate/NovateResponse;->isOk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_141

    .line 165
    const-string v0, "Response data \u6570\u636e\u83b7\u53d6\u5931\u8d25\uff01"

    invoke-static {v2, v0}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    invoke-interface {v0, v8, v5, v6, v7}, Lcom/tamic/novate/Novate$ResponseCallBack;->onsuccess(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 170
    :cond_141
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/tamic/novate/config/ConfigLoader;->isFormat(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_164

    if-eqz v10, :cond_14c

    goto :goto_164

    .line 171
    :cond_14c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v1, Lcom/tamic/novate/NovateSubscriber;->finalNeedType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    new-instance v0, Lcom/tamic/novate/exception/FormatException;

    invoke-direct {v0}, Lcom/tamic/novate/exception/FormatException;-><init>()V

    throw v0

    .line 175
    :cond_164
    :goto_164
    invoke-virtual {v10, v4}, Lcom/tamic/novate/NovateResponse;->setData(Ljava/lang/Object;)V

    .line 176
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->context:Landroid/content/Context;

    invoke-virtual {v10, v0}, Lcom/tamic/novate/NovateResponse;->isOk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_17a

    .line 177
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    invoke-interface {v0, v8, v5, v4, v7}, Lcom/tamic/novate/Novate$ResponseCallBack;->onsuccess(ILjava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    invoke-interface {v0, v10}, Lcom/tamic/novate/Novate$ResponseCallBack;->onSuccee(Lcom/tamic/novate/NovateResponse;)V

    goto :goto_1e1

    .line 180
    :cond_17a
    invoke-virtual {v10}, Lcom/tamic/novate/NovateResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_185

    invoke-virtual {v10}, Lcom/tamic/novate/NovateResponse;->getMsg()Ljava/lang/String;

    move-result-object v0

    goto :goto_19d

    :cond_185
    invoke-virtual {v10}, Lcom/tamic/novate/NovateResponse;->getError()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_190

    invoke-virtual {v10}, Lcom/tamic/novate/NovateResponse;->getError()Ljava/lang/String;

    move-result-object v0

    goto :goto_19d

    :cond_190
    invoke-virtual {v10}, Lcom/tamic/novate/NovateResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_19b

    invoke-virtual {v10}, Lcom/tamic/novate/NovateResponse;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_19d

    :cond_19b
    const-string v0, "api\u672a\u77e5\u5f02\u5e38"

    .line 181
    :goto_19d
    new-instance v3, Lcom/tamic/novate/exception/ServerException;

    invoke-virtual {v10}, Lcom/tamic/novate/NovateResponse;->getCode()I

    move-result v4

    invoke-direct {v3, v4, v0}, Lcom/tamic/novate/exception/ServerException;-><init>(ILjava/lang/String;)V

    .line 182
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    invoke-static {v3}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/tamic/novate/Novate$ResponseCallBack;->onError(Lcom/tamic/novate/Throwable;)V
    :try_end_1af
    .catch Ljava/lang/Exception; {:try_start_112 .. :try_end_1af} :catch_1b0

    goto :goto_1e1

    :catch_1b0
    move-exception v0

    .line 186
    :try_start_1b1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 187
    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    iget-object v0, v1, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    if-eqz v0, :cond_1e1

    .line 189
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "Response \u89e3\u6790\u5931\u8d25\uff01"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/tamic/novate/Novate$ResponseCallBack;->onError(Lcom/tamic/novate/Throwable;)V
    :try_end_1d1
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1d1} :catch_1d2

    goto :goto_1e1

    :catch_1d2
    move-exception v0

    .line 195
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    iget-object v2, v1, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    if-eqz v2, :cond_1e1

    .line 197
    invoke-static {v0}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/tamic/novate/Novate$ResponseCallBack;->onError(Lcom/tamic/novate/Throwable;)V

    :cond_1e1
    :goto_1e1
    return-void
.end method

.method public onStart()V
    .registers 3

    .line 57
    invoke-super {p0}, Lcom/tamic/novate/BaseSubscriber;->onStart()V

    .line 59
    iget-object v0, p0, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    invoke-static {v0}, Lcom/tamic/novate/util/ReflectionUtil;->getParameterizedTypeswithInterfaces(Ljava/lang/Object;)[Ljava/lang/reflect/Type;

    move-result-object v0

    .line 60
    invoke-static {v0}, Lcom/tamic/novate/util/ReflectionUtil;->methodHandler([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2e

    invoke-static {v0}, Lcom/tamic/novate/util/ReflectionUtil;->methodHandler([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_2e

    .line 64
    invoke-static {v0}, Lcom/tamic/novate/util/ReflectionUtil;->methodHandler([Ljava/lang/reflect/Type;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Type;

    iput-object v0, p0, Lcom/tamic/novate/NovateSubscriber;->finalNeedType:Ljava/lang/reflect/Type;

    .line 66
    iget-object v0, p0, Lcom/tamic/novate/NovateSubscriber;->callBack:Lcom/tamic/novate/Novate$ResponseCallBack;

    if-eqz v0, :cond_2d

    .line 67
    invoke-interface {v0}, Lcom/tamic/novate/Novate$ResponseCallBack;->onStart()V

    :cond_2d
    return-void

    .line 61
    :cond_2e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "callBack<T> \u4e2dT\u4e0d\u5408\u6cd5: -->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tamic/novate/NovateSubscriber;->finalNeedType:Ljava/lang/reflect/Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Novate"

    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "callBack<T> \u4e2dT\u4e0d\u5408\u6cd5"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
