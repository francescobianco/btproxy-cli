.class public Lcom/tamic/novate/download/NovateDownLoadManager;
.super Ljava/lang/Object;
.source "NovateDownLoadManager.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "Novate:DownLoadManager"

.field private static defPath:Ljava/lang/String; = ""

.field private static fileSuffix:Ljava/lang/String; = ".tmpl"

.field public static isCancel:Z = false

.field public static isDownLoading:Z = false

.field private static sInstance:Lcom/tamic/novate/download/NovateDownLoadManager;


# instance fields
.field private callBack:Lcom/tamic/novate/download/DownLoadCallBack;

.field private handler:Landroid/os/Handler;

.field private key:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Lcom/tamic/novate/download/DownLoadCallBack;)V
    .registers 3

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    .line 64
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/tamic/novate/download/NovateDownLoadManager;->handler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/tamic/novate/download/NovateDownLoadManager;)Lcom/tamic/novate/download/DownLoadCallBack;
    .registers 1

    .line 44
    iget-object p0, p0, Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    return-object p0
.end method

.method private finalonError(Ljava/lang/Exception;)V
    .registers 4

    .line 205
    iget-object v0, p0, Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    if-nez v0, :cond_5

    return-void

    .line 209
    :cond_5
    invoke-static {}, Lcom/tamic/novate/util/Utils;->checkMain()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 210
    iget-object v0, p0, Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    invoke-static {p1}, Lcom/tamic/novate/exception/NovateException;->handleException(Ljava/lang/Throwable;)Lcom/tamic/novate/Throwable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/tamic/novate/download/DownLoadCallBack;->onError(Lcom/tamic/novate/Throwable;)V

    goto :goto_1f

    .line 212
    :cond_15
    iget-object v0, p0, Lcom/tamic/novate/download/NovateDownLoadManager;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/tamic/novate/download/NovateDownLoadManager$3;

    invoke-direct {v1, p0, p1}, Lcom/tamic/novate/download/NovateDownLoadManager$3;-><init>(Lcom/tamic/novate/download/NovateDownLoadManager;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1f
    return-void
.end method

.method public static declared-synchronized getInstance(Lcom/tamic/novate/download/DownLoadCallBack;)Lcom/tamic/novate/download/NovateDownLoadManager;
    .registers 3

    const-class v0, Lcom/tamic/novate/download/NovateDownLoadManager;

    monitor-enter v0

    .line 73
    :try_start_3
    sget-object v1, Lcom/tamic/novate/download/NovateDownLoadManager;->sInstance:Lcom/tamic/novate/download/NovateDownLoadManager;

    if-nez v1, :cond_e

    .line 74
    new-instance v1, Lcom/tamic/novate/download/NovateDownLoadManager;

    invoke-direct {v1, p0}, Lcom/tamic/novate/download/NovateDownLoadManager;-><init>(Lcom/tamic/novate/download/DownLoadCallBack;)V

    sput-object v1, Lcom/tamic/novate/download/NovateDownLoadManager;->sInstance:Lcom/tamic/novate/download/NovateDownLoadManager;

    .line 76
    :cond_e
    sget-object p0, Lcom/tamic/novate/download/NovateDownLoadManager;->sInstance:Lcom/tamic/novate/download/NovateDownLoadManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object p0

    :catchall_12
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public writeResponseBodyToDisk(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Lokhttp3/ResponseBody;)Z
    .registers 30

    move-object/from16 v9, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    .line 81
    const-string v10, "file downloaded: "

    .line 0
    const-string v3, "file length: "

    const/4 v11, 0x0

    .line 81
    const-string v12, "Novate:DownLoadManager"

    if-nez p5, :cond_45

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : ResponseBody is null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    new-instance v1, Ljava/lang/NullPointerException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ResponseBody is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-direct {v9, v1}, Lcom/tamic/novate/download/NovateDownLoadManager;->finalonError(Ljava/lang/Exception;)V

    return v11

    .line 86
    :cond_45
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Key:-->"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Lcom/tamic/novate/util/LogWraper;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p5 .. p5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    if-eqz v4, :cond_66

    .line 90
    invoke-virtual/range {p5 .. p5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_6d

    .line 92
    :cond_66
    const-string v4, "MediaType-->,\u65e0\u6cd5\u83b7\u53d6"

    invoke-static {v12, v4}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, ""

    .line 95
    :goto_6d
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 96
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "contentType:>>>>"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p5 .. p5}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v6

    invoke-virtual {v6}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v12, v5}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/tamic/novate/download/MimeType;->getInstance()Lcom/tamic/novate/download/MimeType;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tamic/novate/download/MimeType;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a5

    .line 98
    invoke-static {}, Lcom/tamic/novate/download/MimeType;->getInstance()Lcom/tamic/novate/download/MimeType;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tamic/novate/download/MimeType;->getSuffix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/tamic/novate/download/NovateDownLoadManager;->fileSuffix:Ljava/lang/String;

    .line 102
    :cond_a5
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c6

    .line 103
    const-string v4, "."

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_c6

    .line 104
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v4, Lcom/tamic/novate/download/NovateDownLoadManager;->fileSuffix:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_c6
    move-object v13, v1

    const/4 v1, 0x0

    if-nez p2, :cond_118

    .line 109
    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "DownLoads"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 110
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_f5

    .line 111
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 113
    :cond_f5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v14, v2

    goto :goto_11a

    :cond_118
    move-object/from16 v14, p2

    .line 116
    :goto_11a
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_139

    .line 117
    invoke-static {v14}, Lcom/tamic/novate/util/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 119
    :cond_139
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "path:-->"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "name:->"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v12, v2}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :try_start_15d
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_173
    .catch Ljava/io/IOException; {:try_start_15d .. :try_end_173} :catch_338

    const/16 v4, 0x1000

    .line 129
    :try_start_175
    new-array v15, v4, [B

    .line 131
    invoke-virtual/range {p5 .. p5}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v6

    .line 134
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p5 .. p5}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_18f
    .catch Ljava/io/IOException; {:try_start_175 .. :try_end_18f} :catch_31b
    .catchall {:try_start_175 .. :try_end_18f} :catchall_318

    .line 136
    :try_start_18f
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_194
    .catch Ljava/io/IOException; {:try_start_18f .. :try_end_194} :catch_311
    .catchall {:try_start_18f .. :try_end_194} :catchall_30a

    const-wide/16 v16, 0x0

    move v1, v11

    move-wide/from16 v3, v16

    .line 139
    :goto_199
    :try_start_199
    invoke-virtual {v8, v15}, Ljava/io/InputStream;->read([B)I

    move-result v2
    :try_end_19d
    .catch Ljava/io/IOException; {:try_start_199 .. :try_end_19d} :catch_305
    .catchall {:try_start_199 .. :try_end_19d} :catchall_300

    const/4 v11, -0x1

    .line 140
    const-string v0, " of "

    if-ne v2, v11, :cond_230

    .line 170
    :try_start_1a2
    invoke-virtual {v5}, Ljava/io/OutputStream;->flush()V

    .line 171
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v12, v1}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 172
    sput-boolean v1, Lcom/tamic/novate/download/NovateDownLoadManager;->isDownLoading:Z

    .line 173
    iget-object v1, v9, Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    if-eqz v1, :cond_207

    .line 176
    iget-object v11, v9, Lcom/tamic/novate/download/NovateDownLoadManager;->handler:Landroid/os/Handler;

    new-instance v15, Lcom/tamic/novate/download/NovateDownLoadManager$2;
    :try_end_1cc
    .catch Ljava/io/IOException; {:try_start_1a2 .. :try_end_1cc} :catch_225
    .catchall {:try_start_1a2 .. :try_end_1cc} :catchall_21a

    move-object v1, v15

    move-object/from16 v2, p0

    move-object/from16 p2, v8

    move-wide v8, v3

    move-object/from16 v3, p1

    move-object v4, v14

    move-object v14, v5

    move-object v5, v13

    move-wide/from16 p3, v6

    :try_start_1d9
    invoke-direct/range {v1 .. v7}, Lcom/tamic/novate/download/NovateDownLoadManager$2;-><init>(Lcom/tamic/novate/download/NovateDownLoadManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v11, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 182
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-wide/from16 v5, p3

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    const-string v0, "file downloaded: is sucess"

    invoke-static {v12, v0}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_202
    .catch Ljava/io/IOException; {:try_start_1d9 .. :try_end_202} :catch_205
    .catchall {:try_start_1d9 .. :try_end_202} :catchall_203

    goto :goto_20a

    :catchall_203
    move-exception v0

    goto :goto_21e

    :catch_205
    move-exception v0

    goto :goto_229

    :cond_207
    move-object v14, v5

    move-object/from16 p2, v8

    :goto_20a
    if-eqz p2, :cond_215

    .line 191
    :try_start_20c
    invoke-virtual/range {p2 .. p2}, Ljava/io/InputStream;->close()V

    goto :goto_215

    :catch_210
    move-exception v0

    move-object/from16 v9, p0

    goto/16 :goto_339

    .line 195
    :cond_215
    :goto_215
    invoke-virtual {v14}, Ljava/io/OutputStream;->close()V
    :try_end_218
    .catch Ljava/io/IOException; {:try_start_20c .. :try_end_218} :catch_210

    const/4 v0, 0x1

    return v0

    :catchall_21a
    move-exception v0

    move-object v14, v5

    move-object/from16 p2, v8

    :goto_21e
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    move-object v11, v14

    goto/16 :goto_32d

    :catch_225
    move-exception v0

    move-object v14, v5

    move-object/from16 p2, v8

    :goto_229
    move-object/from16 v9, p0

    move-object/from16 v1, p2

    move-object v11, v14

    goto/16 :goto_31d

    :cond_230
    move-object v11, v5

    move-wide v5, v6

    move-object/from16 p2, v8

    move-wide v8, v3

    const/4 v3, 0x0

    .line 143
    :try_start_236
    invoke-virtual {v11, v15, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v2, v2

    add-long v7, v8, v2

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file download: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_25a
    .catch Ljava/io/IOException; {:try_start_236 .. :try_end_25a} :catch_2fa
    .catchall {:try_start_236 .. :try_end_25a} :catchall_2f4

    const-wide/16 v2, -0x1

    cmp-long v0, v5, v2

    if-eqz v0, :cond_279

    cmp-long v0, v5, v16

    if-nez v0, :cond_265

    goto :goto_279

    :cond_265
    const-wide/16 v2, 0x64

    mul-long/2addr v2, v7

    .line 150
    :try_start_268
    div-long/2addr v2, v5
    :try_end_269
    .catch Ljava/io/IOException; {:try_start_268 .. :try_end_269} :catch_272
    .catchall {:try_start_268 .. :try_end_269} :catchall_26b

    long-to-int v0, v2

    goto :goto_27b

    :catchall_26b
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v1, p2

    goto/16 :goto_32d

    :catch_272
    move-exception v0

    move-object/from16 v9, p0

    move-object/from16 v1, p2

    goto/16 :goto_31d

    :cond_279
    :goto_279
    const/16 v0, 0x64

    :goto_27b
    move v4, v0

    .line 153
    :try_start_27c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file download progress : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Lcom/tamic/novate/util/LogWraper;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_292
    .catch Ljava/io/IOException; {:try_start_27c .. :try_end_292} :catch_2fa
    .catchall {:try_start_27c .. :try_end_292} :catchall_2f4

    if-eqz v1, :cond_2a2

    if-lt v4, v1, :cond_297

    goto :goto_2a2

    :cond_297
    move-object/from16 v9, p0

    move-object/from16 v23, p2

    move-wide/from16 v19, v5

    move-wide/from16 v21, v7

    move-object/from16 v18, v10

    goto :goto_2e2

    :cond_2a2
    :goto_2a2
    add-int/lit8 v0, v1, 0x1

    move-object/from16 v9, p0

    .line 156
    :try_start_2a6
    iget-object v1, v9, Lcom/tamic/novate/download/NovateDownLoadManager;->callBack:Lcom/tamic/novate/download/DownLoadCallBack;

    if-eqz v1, :cond_2d6

    .line 157
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v3, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v3, v9, Lcom/tamic/novate/download/NovateDownLoadManager;->handler:Landroid/os/Handler;

    .line 160
    new-instance v2, Lcom/tamic/novate/download/NovateDownLoadManager$1;
    :try_end_2b7
    .catch Ljava/io/IOException; {:try_start_2a6 .. :try_end_2b7} :catch_2f2
    .catchall {:try_start_2a6 .. :try_end_2b7} :catchall_2f0

    move-object v1, v2

    move/from16 p3, v0

    move-object v0, v2

    move-object/from16 v2, p0

    move-object/from16 v18, v10

    move-object v10, v3

    move-object/from16 v3, p1

    move-wide/from16 v19, v5

    move-wide v5, v7

    move-object/from16 v23, p2

    move-wide/from16 v21, v7

    move-wide/from16 v7, v19

    :try_start_2cb
    invoke-direct/range {v1 .. v8}, Lcom/tamic/novate/download/NovateDownLoadManager$1;-><init>(Lcom/tamic/novate/download/NovateDownLoadManager;Ljava/lang/String;IJJ)V

    invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_2d1
    .catch Ljava/io/IOException; {:try_start_2cb .. :try_end_2d1} :catch_2d4
    .catchall {:try_start_2cb .. :try_end_2d1} :catchall_2d2

    goto :goto_2e0

    :catchall_2d2
    move-exception v0

    goto :goto_30e

    :catch_2d4
    move-exception v0

    goto :goto_315

    :cond_2d6
    move-object/from16 v23, p2

    move/from16 p3, v0

    move-wide/from16 v19, v5

    move-wide/from16 v21, v7

    move-object/from16 v18, v10

    :goto_2e0
    move/from16 v1, p3

    :goto_2e2
    move-object/from16 v0, p1

    move-object v5, v11

    move-object/from16 v10, v18

    move-wide/from16 v6, v19

    move-wide/from16 v3, v21

    move-object/from16 v8, v23

    const/4 v11, 0x0

    goto/16 :goto_199

    :catchall_2f0
    move-exception v0

    goto :goto_2f7

    :catch_2f2
    move-exception v0

    goto :goto_2fd

    :catchall_2f4
    move-exception v0

    move-object/from16 v9, p0

    :goto_2f7
    move-object/from16 v23, p2

    goto :goto_30e

    :catch_2fa
    move-exception v0

    move-object/from16 v9, p0

    :goto_2fd
    move-object/from16 v23, p2

    goto :goto_315

    :catchall_300
    move-exception v0

    move-object v11, v5

    move-object/from16 v23, v8

    goto :goto_30e

    :catch_305
    move-exception v0

    move-object v11, v5

    move-object/from16 v23, v8

    goto :goto_315

    :catchall_30a
    move-exception v0

    move-object/from16 v23, v8

    move-object v11, v1

    :goto_30e
    move-object/from16 v1, v23

    goto :goto_32d

    :catch_311
    move-exception v0

    move-object/from16 v23, v8

    move-object v11, v1

    :goto_315
    move-object/from16 v1, v23

    goto :goto_31d

    :catchall_318
    move-exception v0

    move-object v11, v1

    goto :goto_32d

    :catch_31b
    move-exception v0

    move-object v11, v1

    .line 187
    :goto_31d
    :try_start_31d
    invoke-direct {v9, v0}, Lcom/tamic/novate/download/NovateDownLoadManager;->finalonError(Ljava/lang/Exception;)V
    :try_end_320
    .catchall {:try_start_31d .. :try_end_320} :catchall_32c

    if-eqz v1, :cond_325

    .line 191
    :try_start_322
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_325
    if-eqz v11, :cond_32a

    .line 195
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    :cond_32a
    const/4 v1, 0x0

    return v1

    :catchall_32c
    move-exception v0

    :goto_32d
    if-eqz v1, :cond_332

    .line 191
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_332
    if-eqz v11, :cond_337

    .line 195
    invoke-virtual {v11}, Ljava/io/OutputStream;->close()V

    :cond_337
    throw v0
    :try_end_338
    .catch Ljava/io/IOException; {:try_start_322 .. :try_end_338} :catch_338

    :catch_338
    move-exception v0

    .line 199
    :goto_339
    invoke-direct {v9, v0}, Lcom/tamic/novate/download/NovateDownLoadManager;->finalonError(Ljava/lang/Exception;)V

    const/4 v1, 0x0

    return v1
.end method
