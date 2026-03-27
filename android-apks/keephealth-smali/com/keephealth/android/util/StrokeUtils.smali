.class public Lcom/keephealth/android/util/StrokeUtils;
.super Ljava/lang/Object;
.source "StrokeUtils.java"


# static fields
.field private static final CHARSET_NAME:Ljava/lang/String; = "UTF-8"

.field private static final TAG:Ljava/lang/String; = "StrokeUtils"

.field private static final factory:Lcom/keephealth/android/util/StrokeUtils;

.field private static mapper:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/keephealth/android/ui/main/bean/Stroke;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 25
    new-instance v0, Lcom/keephealth/android/util/StrokeUtils;

    invoke-direct {v0}, Lcom/keephealth/android/util/StrokeUtils;-><init>()V

    sput-object v0, Lcom/keephealth/android/util/StrokeUtils;->factory:Lcom/keephealth/android/util/StrokeUtils;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;)Lcom/keephealth/android/util/StrokeUtils;
    .registers 5

    .line 30
    sget-object v0, Lcom/keephealth/android/util/StrokeUtils;->mapper:Ljava/util/HashMap;

    if-nez v0, :cond_27

    .line 53
    const-string v0, "deFlaterStrokeJson.json"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/LocalFileUtils;->getStringFormAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 54
    const-string v0, "UTF-8"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/DeflaterUtils;->unzipString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 55
    const-class v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-class v3, Lcom/keephealth/android/ui/main/bean/Stroke;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/keephealth/android/util/JSONUtil;->toCollection(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashMap;

    sput-object p0, Lcom/keephealth/android/util/StrokeUtils;->mapper:Ljava/util/HashMap;

    .line 57
    :cond_27
    sget-object p0, Lcom/keephealth/android/util/StrokeUtils;->factory:Lcom/keephealth/android/util/StrokeUtils;

    return-object p0
.end method

.method private static writeFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    .line 61
    const-string v0, "StrokeUtils"

    .line 0
    const-string v1, "file.exists():"

    const-string v2, "e = "

    const/4 v3, 0x0

    .line 63
    :try_start_7
    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 64
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " file.getAbsolutePath():"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_43

    .line 67
    invoke-virtual {v4}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 70
    :cond_43
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4c

    .line 71
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 73
    :cond_4c
    invoke-virtual {v4}, Ljava/io/File;->createNewFile()Z

    .line 75
    new-instance p1, Ljava/io/OutputStreamWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-string v4, "UTF-8"

    invoke-direct {p1, v1, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_5b} :catch_77
    .catchall {:try_start_7 .. :try_end_5b} :catchall_75

    .line 76
    :try_start_5b
    invoke-virtual {p1, p0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 78
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_64
    .catch Ljava/lang/Exception; {:try_start_5b .. :try_end_64} :catch_72
    .catchall {:try_start_5b .. :try_end_64} :catchall_6f

    .line 84
    :try_start_64
    invoke-virtual {p1}, Ljava/io/Writer;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_a7

    :catch_68
    move-exception p0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_98

    :catchall_6f
    move-exception p0

    move-object v3, p1

    goto :goto_a8

    :catch_72
    move-exception p0

    move-object v3, p1

    goto :goto_78

    :catchall_75
    move-exception p0

    goto :goto_a8

    :catch_77
    move-exception p0

    .line 80
    :goto_78
    :try_start_78
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8c
    .catchall {:try_start_78 .. :try_end_8c} :catchall_75

    if-eqz v3, :cond_a7

    .line 84
    :try_start_8e
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_92

    goto :goto_a7

    :catch_92
    move-exception p0

    .line 86
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_98
    invoke-static {p0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a7
    :goto_a7
    return-void

    :goto_a8
    if-eqz v3, :cond_c3

    .line 84
    :try_start_aa
    invoke-virtual {v3}, Ljava/io/Writer;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_ad} :catch_ae

    goto :goto_c3

    :catch_ae
    move-exception p1

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_c3
    :goto_c3
    throw p0
.end method


# virtual methods
.method public getStroke(Ljava/lang/String;)Lcom/keephealth/android/ui/main/bean/Stroke;
    .registers 4

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 102
    :cond_4
    sget-object v1, Lcom/keephealth/android/util/StrokeUtils;->mapper:Ljava/util/HashMap;

    if-eqz v1, :cond_f

    .line 103
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/keephealth/android/ui/main/bean/Stroke;

    return-object p1

    :cond_f
    return-object v0
.end method
