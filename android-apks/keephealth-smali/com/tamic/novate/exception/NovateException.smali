.class public Lcom/tamic/novate/exception/NovateException;
.super Ljava/lang/Object;
.source "NovateException.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tamic/novate/exception/NovateException$ERROR;
    }
.end annotation


# static fields
.field private static final ACCESS_DENIED:I = 0x12e

.field private static final BAD_GATEWAY:I = 0x1f6

.field private static final FORBIDDEN:I = 0x193

.field private static final GATEWAY_TIMEOUT:I = 0x1f8

.field private static final HANDEL_ERRROR:I = 0x1a1

.field private static final INTERNAL_SERVER_ERROR:I = 0x1f4

.field private static final NOT_FOUND:I = 0x194

.field private static final REQUEST_TIMEOUT:I = 0x198

.field private static final SERVICE_UNAVAILABLE:I = 0x1f7

.field private static final UNAUTHORIZED:I = 0x191


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;
    .registers 6

    .line 58
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Novate"

    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 61
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1a

    .line 60
    :cond_18
    const-string v0, ""

    .line 63
    :goto_1a
    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    instance-of v0, p0, Lcom/tamic/novate/exception/ServerException;

    const/16 v2, 0x194

    if-nez v0, :cond_c9

    instance-of v3, p0, Lretrofit2/adapter/rxjava/HttpException;

    if-eqz v3, :cond_c9

    .line 66
    move-object v0, p0

    check-cast v0, Lretrofit2/adapter/rxjava/HttpException;

    .line 67
    new-instance v1, Lcom/tamic/novate/Throwable;

    invoke-virtual {v0}, Lretrofit2/adapter/rxjava/HttpException;->code()I

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 68
    invoke-virtual {v1}, Lcom/tamic/novate/Throwable;->getCode()I

    move-result v0

    const/16 v3, 0x12e

    if-eq v0, v3, :cond_c3

    const/16 v3, 0x191

    if-eq v0, v3, :cond_bd

    const/16 v3, 0x198

    if-eq v0, v3, :cond_b7

    const/16 v3, 0x1a1

    if-eq v0, v3, :cond_b1

    const/16 v3, 0x1f4

    if-eq v0, v3, :cond_a6

    const/16 v3, 0x193

    if-eq v0, v3, :cond_a0

    if-eq v0, v2, :cond_9a

    packed-switch v0, :pswitch_data_1ea

    .line 101
    invoke-virtual {v1}, Lcom/tamic/novate/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_66

    .line 102
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 106
    :cond_66
    invoke-virtual {v1}, Lcom/tamic/novate/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7e

    .line 107
    invoke-virtual {p0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 110
    :cond_7e
    invoke-virtual {v1}, Lcom/tamic/novate/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_c8

    .line 111
    const-string p0, "\u672a\u77e5\u9519\u8bef"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 83
    :pswitch_8e
    const-string p0, "\u7f51\u5173\u54cd\u5e94\u8d85\u65f6"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 91
    :pswitch_94
    const-string p0, "\u670d\u52a1\u5668\u4e0d\u53ef\u7528"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 77
    :cond_9a
    const-string p0, "\u670d\u52a1\u5668\u5730\u5740\u672a\u627e\u5230"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 74
    :cond_a0
    const-string p0, "\u7981\u6b62\u8bbf\u95ee"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 86
    :cond_a6
    const-string p0, "\u670d\u52a1\u5668\u51fa\u9519"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    .line 88
    :pswitch_ab
    const-string p0, "\u65e0\u6548\u7684\u8bf7\u6c42"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 97
    :cond_b1
    const-string p0, "\u63a5\u53e3\u5904\u7406\u5931\u8d25"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 80
    :cond_b7
    const-string p0, "\u8bf7\u6c42\u8d85\u65f6"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 71
    :cond_bd
    const-string p0, "\u672a\u6388\u6743\u7684\u8bf7\u6c42"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    goto :goto_c8

    .line 94
    :cond_c3
    const-string p0, "\u7f51\u7edc\u9519\u8bef"

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    :cond_c8
    :goto_c8
    return-object v1

    :cond_c9
    if-eqz v0, :cond_fe

    .line 117
    check-cast p0, Lcom/tamic/novate/exception/ServerException;

    .line 118
    new-instance v0, Lcom/tamic/novate/Throwable;

    iget v1, p0, Lcom/tamic/novate/exception/ServerException;->code:I

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 119
    invoke-static {}, Lcom/tamic/novate/config/ConfigLoader;->getErrorConfig()Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_f6

    .line 120
    iget v2, p0, Lcom/tamic/novate/exception/ServerException;->code:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f6

    .line 121
    iget p0, p0, Lcom/tamic/novate/exception/ServerException;->code:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 124
    :cond_f6
    invoke-virtual {p0}, Lcom/tamic/novate/exception/ServerException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 126
    :cond_fe
    instance-of v0, p0, Lcom/google/gson/JsonParseException;

    if-nez v0, :cond_1dc

    instance-of v0, p0, Lorg/json/JSONException;

    if-nez v0, :cond_1dc

    instance-of v0, p0, Landroid/net/ParseException;

    if-eqz v0, :cond_10c

    goto/16 :goto_1dc

    .line 132
    :cond_10c
    instance-of v0, p0, Ljava/net/ConnectException;

    if-eqz v0, :cond_11d

    .line 133
    new-instance v0, Lcom/tamic/novate/Throwable;

    const/16 v1, 0x3ea

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 134
    const-string p0, "\u8fde\u63a5\u5931\u8d25"

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 136
    :cond_11d
    instance-of v0, p0, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz v0, :cond_12e

    .line 137
    new-instance v0, Lcom/tamic/novate/Throwable;

    const/16 v1, 0x3ed

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 138
    const-string p0, "\u8bc1\u4e66\u9a8c\u8bc1\u5931\u8d25"

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 140
    :cond_12e
    instance-of v0, p0, Ljava/security/cert/CertPathValidatorException;

    const/16 v3, 0x3ef

    if-eqz v0, :cond_146

    .line 141
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Lcom/tamic/novate/Throwable;

    invoke-direct {v0, p0, v3}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 143
    const-string p0, "\u8bc1\u4e66\u8def\u5f84\u6ca1\u627e\u5230"

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 146
    :cond_146
    instance-of v0, p0, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz v0, :cond_15c

    .line 147
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    new-instance v0, Lcom/tamic/novate/Throwable;

    invoke-direct {v0, p0, v3}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 149
    const-string p0, "\u65e0\u6709\u6548\u7684SSL\u8bc1\u4e66"

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 152
    :cond_15c
    instance-of v0, p0, Lorg/apache/http/conn/ConnectTimeoutException;

    const-string v3, "\u8fde\u63a5\u8d85\u65f6"

    const/16 v4, 0x3ee

    if-eqz v0, :cond_16d

    .line 153
    new-instance v0, Lcom/tamic/novate/Throwable;

    invoke-direct {v0, p0, v4}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 154
    invoke-virtual {v0, v3}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 156
    :cond_16d
    instance-of v0, p0, Ljava/net/SocketTimeoutException;

    if-eqz v0, :cond_17a

    .line 157
    new-instance v0, Lcom/tamic/novate/Throwable;

    invoke-direct {v0, p0, v4}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 158
    invoke-virtual {v0, v3}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 160
    :cond_17a
    instance-of v0, p0, Ljava/lang/ClassCastException;

    if-eqz v0, :cond_18b

    .line 161
    new-instance v0, Lcom/tamic/novate/Throwable;

    const/16 v1, 0x3f0

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 162
    const-string p0, "\u7c7b\u578b\u8f6c\u6362\u51fa\u9519"

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 164
    :cond_18b
    instance-of v0, p0, Ljava/lang/NullPointerException;

    if-eqz v0, :cond_19c

    .line 165
    new-instance v0, Lcom/tamic/novate/Throwable;

    const/16 v1, -0x64

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 166
    const-string p0, "\u6570\u636e\u6709\u7a7a"

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 168
    :cond_19c
    instance-of v0, p0, Lcom/tamic/novate/exception/FormatException;

    if-eqz v0, :cond_1b0

    .line 169
    move-object v0, p0

    check-cast v0, Lcom/tamic/novate/exception/FormatException;

    .line 170
    new-instance v1, Lcom/tamic/novate/Throwable;

    iget v2, v0, Lcom/tamic/novate/exception/FormatException;->code:I

    invoke-direct {v1, p0, v2}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 171
    iget-object p0, v0, Lcom/tamic/novate/exception/FormatException;->message:Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v1

    .line 173
    :cond_1b0
    instance-of v0, p0, Ljava/net/UnknownHostException;

    if-eqz v0, :cond_1c6

    .line 174
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lcom/tamic/novate/Throwable;

    invoke-direct {v0, p0, v2}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 176
    const-string p0, "\u670d\u52a1\u5668\u5730\u5740\u672a\u627e\u5230,\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216Url"

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 179
    :cond_1c6
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    new-instance v0, Lcom/tamic/novate/Throwable;

    const/16 v1, 0x3e8

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 181
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    .line 129
    :cond_1dc
    :goto_1dc
    new-instance v0, Lcom/tamic/novate/Throwable;

    const/16 v1, 0x3e9

    invoke-direct {v0, p0, v1}, Lcom/tamic/novate/Throwable;-><init>(Ljava/lang/Throwable;I)V

    .line 130
    const-string p0, "\u89e3\u6790\u9519\u8bef"

    invoke-virtual {v0, p0}, Lcom/tamic/novate/Throwable;->setMessage(Ljava/lang/String;)V

    return-object v0

    nop

    :pswitch_data_1ea
    .packed-switch 0x1f6
        :pswitch_ab
        :pswitch_94
        :pswitch_8e
    .end packed-switch
.end method
