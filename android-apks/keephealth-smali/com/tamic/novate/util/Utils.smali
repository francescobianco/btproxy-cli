.class public Lcom/tamic/novate/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static final MULTIPART_APK_DATA:Ljava/lang/String; = "application/vnd.android.package-archive"

.field public static final MULTIPART_AUDIO_DATA:Ljava/lang/String; = "audio/*"

.field public static final MULTIPART_FORM_DATA:Ljava/lang/String; = "multipart/form-data"

.field public static final MULTIPART_IMAGE_DATA:Ljava/lang/String; = "image/*; charset=utf-8"

.field public static final MULTIPART_JAVA_DATA:Ljava/lang/String; = "java/jpg"

.field public static final MULTIPART_JSON_DATA:Ljava/lang/String; = "application/json; charset=utf-8"

.field public static final MULTIPART_MESSAGE_DATA:Ljava/lang/String; = "message/rfc822"

.field public static final MULTIPART_TEXT_DATA:Ljava/lang/String; = "text/plain"

.field public static final MULTIPART_VIDEO_DATA:Ljava/lang/String; = "video/*"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDuration(Ljava/lang/String;JLjava/util/concurrent/TimeUnit;)I
    .registers 9

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_56

    if-eqz p3, :cond_4e

    .line 313
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_35

    cmp-long p3, p1, v0

    if-nez p3, :cond_33

    if-gtz v2, :cond_1a

    goto :goto_33

    .line 315
    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " too small."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_33
    :goto_33
    long-to-int p0, p1

    return p0

    .line 314
    :cond_35
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " too large."

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 312
    :cond_4e
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 311
    :cond_56
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, " < 0"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static checkMain()Z
    .registers 2

    .line 55
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    if-eqz p0, :cond_3

    return-object p0

    .line 49
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBody(Ljava/io/File;Lcom/tamic/novate/ContentType;)Lokhttp3/RequestBody;
    .registers 3

    .line 98
    const-string v0, "file not be null!"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    const-string v0, "type not be null!"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    invoke-static {p1}, Lcom/tamic/novate/util/Utils;->typeToString(Lcom/tamic/novate/ContentType;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/tamic/novate/util/Utils;->createBody(Ljava/io/File;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static createBody(Ljava/io/File;Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 3

    .line 106
    const-string v0, "file not null!"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 107
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 110
    invoke-static {p1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    invoke-static {p1, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0

    .line 108
    :cond_14
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "contentType not be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createFile(Ljava/io/File;)Lokhttp3/RequestBody;
    .registers 2

    .line 86
    const-string v0, "file not null!"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 87
    const-string v0, "multipart/form-data; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static createImage(Ljava/io/File;)Lokhttp3/RequestBody;
    .registers 2

    .line 121
    const-string v0, "file not null!"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 122
    const-string v0, "image/*; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static createJson(Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 2

    .line 59
    const-string v0, "json not null!"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static createNovateRequestBody(Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;)Lcom/tamic/novate/request/NovateRequestBody;
    .registers 3

    .line 299
    new-instance v0, Lcom/tamic/novate/request/NovateRequestBody;

    invoke-direct {v0, p0, p1}, Lcom/tamic/novate/request/NovateRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;)V

    return-object v0
.end method

.method public static createPart(Ljava/lang/String;Ljava/io/File;)Lokhttp3/MultipartBody$Part;
    .registers 3

    .line 201
    const-string v0, "multipart/form-data; charset=utf-8"

    .line 202
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 204
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createPart(Ljava/lang/String;Ljava/io/File;Lcom/tamic/novate/ContentType;)Lokhttp3/MultipartBody$Part;
    .registers 4

    .line 210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 211
    invoke-static {p2}, Lcom/tamic/novate/util/Utils;->typeToString(Lcom/tamic/novate/ContentType;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "; charset=utf-8"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p2

    invoke-static {p2, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object p2

    .line 213
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p0

    return-object p0
.end method

.method public static createPartFromString(Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 2

    .line 132
    const-string v0, "multipart/form-data; charset=utf-8"

    .line 133
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 132
    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static createPartLists(Ljava/lang/String;Ljava/util/List;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/ContentType;",
            "Lcom/tamic/novate/callback/ResponseCallback;",
            ")",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_50

    .line 273
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_50

    .line 276
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_11
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 277
    invoke-static {v1}, Lcom/tamic/novate/util/FileUtil;->exists(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_33

    .line 280
    invoke-static {v1, p2, p3}, Lcom/tamic/novate/util/Utils;->createRequestBody(Ljava/io/File;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Lcom/tamic/novate/request/NovateRequestBody;

    move-result-object v2

    .line 283
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v2}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v1

    .line 284
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 278
    :cond_33
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "file \u8def\u5f84\u65e0\u6cd5\u627e\u5230"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_50
    return-object v0
.end method

.method public static createParts(Ljava/lang/String;Ljava/util/Map;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Ljava/util/Map;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;",
            "Lcom/tamic/novate/ContentType;",
            "Lcom/tamic/novate/callback/ResponseCallback;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_5a

    .line 242
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_5a

    .line 243
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 245
    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    .line 246
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 247
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    .line 248
    invoke-static {v3}, Lcom/tamic/novate/util/FileUtil;->exists(Ljava/io/File;)Z

    move-result v4

    if-eqz v4, :cond_3d

    .line 251
    invoke-static {v3, p2, p3}, Lcom/tamic/novate/util/Utils;->createRequestBody(Ljava/io/File;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Lcom/tamic/novate/request/NovateRequestBody;

    move-result-object v4

    .line 254
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v3

    .line 255
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    .line 249
    :cond_3d
    new-instance p0, Landroid/content/res/Resources$NotFoundException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "file \u8def\u5f84\u65e0\u6cd5\u627e\u5230"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5a
    return-object v0
.end method

.method public static createRequestBody(Ljava/io/File;Lcom/tamic/novate/ContentType;)Lcom/tamic/novate/request/NovateRequestBody;
    .registers 3

    const/4 v0, 0x0

    .line 184
    invoke-static {p0, p1, v0}, Lcom/tamic/novate/util/Utils;->createRequestBody(Ljava/io/File;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Lcom/tamic/novate/request/NovateRequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static createRequestBody(Ljava/io/File;Lcom/tamic/novate/ContentType;Lcom/tamic/novate/callback/ResponseCallback;)Lcom/tamic/novate/request/NovateRequestBody;
    .registers 4

    .line 195
    new-instance v0, Lcom/tamic/novate/request/NovateRequestBody;

    invoke-static {p0, p1}, Lcom/tamic/novate/util/Utils;->createBody(Ljava/io/File;Lcom/tamic/novate/ContentType;)Lokhttp3/RequestBody;

    move-result-object p0

    invoke-direct {v0, p0, p2}, Lcom/tamic/novate/request/NovateRequestBody;-><init>(Lokhttp3/RequestBody;Lcom/tamic/novate/callback/ResponseCallback;)V

    return-object v0
.end method

.method public static createString(Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 2

    .line 77
    const-string v0, "name not null!"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 78
    const-string v0, "multipart/form-data; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static createText(Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 2

    .line 68
    const-string v0, "text not null!"

    invoke-static {p0, v0}, Lcom/tamic/novate/util/Utils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 69
    const-string v0, "text/plain"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p0

    return-object p0
.end method

.method public static jsonToList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 307
    :cond_4
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    new-instance v0, Lcom/tamic/novate/util/Utils$1;

    invoke-direct {v0}, Lcom/tamic/novate/util/Utils$1;-><init>()V

    invoke-virtual {v0}, Lcom/tamic/novate/util/Utils$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private prepareFilePart(Ljava/lang/String;Landroid/net/Uri;)Lokhttp3/MultipartBody$Part;
    .registers 4

    .line 220
    invoke-static {p2}, Lcom/tamic/novate/util/FileUtil;->getUirFile(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p2

    .line 222
    const-string v0, "multipart/form-data"

    .line 223
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 226
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object p1

    return-object p1
.end method

.method public static typeToString(Lcom/tamic/novate/ContentType;)Ljava/lang/String;
    .registers 2

    .line 144
    sget-object v0, Lcom/tamic/novate/util/Utils$2;->$SwitchMap$com$tamic$novate$ContentType:[I

    invoke-virtual {p0}, Lcom/tamic/novate/ContentType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_26

    .line 171
    :pswitch_b
    const-string p0, "image/*; charset=utf-8"

    return-object p0

    .line 169
    :pswitch_e
    const-string p0, "message/rfc822"

    return-object p0

    .line 167
    :pswitch_11
    const-string p0, "multipart/form-data"

    return-object p0

    .line 164
    :pswitch_14
    const-string p0, "application/json; charset=utf-8"

    return-object p0

    .line 161
    :pswitch_17
    const-string p0, "text/plain"

    return-object p0

    .line 155
    :pswitch_1a
    const-string p0, "java/jpg"

    return-object p0

    .line 152
    :pswitch_1d
    const-string p0, "audio/*"

    return-object p0

    .line 149
    :pswitch_20
    const-string p0, "video/*"

    return-object p0

    .line 146
    :pswitch_23
    const-string p0, "application/vnd.android.package-archive"

    return-object p0

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_23
        :pswitch_20
        :pswitch_1d
        :pswitch_1a
        :pswitch_b
        :pswitch_17
        :pswitch_14
        :pswitch_11
        :pswitch_e
    .end packed-switch
.end method
