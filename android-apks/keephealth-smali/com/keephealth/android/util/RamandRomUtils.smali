.class public Lcom/keephealth/android/util/RamandRomUtils;
.super Ljava/lang/Object;
.source "RamandRomUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTotalRam()Ljava/lang/String;
    .registers 4

    .line 14
    const-string v0, "/proc/meminfo"

    const/4 v1, 0x0

    .line 18
    :try_start_3
    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v0, Ljava/io/BufferedReader;

    const/16 v3, 0x1000

    invoke-direct {v0, v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 20
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    const-string v3, "\\s+"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v1, v2, v3

    .line 21
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1f} :catch_20

    goto :goto_24

    :catch_20
    move-exception v0

    .line 23
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_24
    if-eqz v1, :cond_40

    .line 26
    new-instance v0, Ljava/lang/Float;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(F)V

    invoke-virtual {v0}, Ljava/lang/Float;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 29
    :goto_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GB"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTotalRom()Ljava/lang/String;
    .registers 10

    .line 33
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v0

    .line 34
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    .line 36
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    const/16 v2, 0xb

    .line 39
    new-array v3, v2, [J

    fill-array-data v3, :array_6c

    .line 40
    new-array v4, v2, [Ljava/lang/String;

    const-string v5, "2GB"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-string v5, "4GB"

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const/4 v5, 0x2

    const-string v8, "8GB"

    aput-object v8, v4, v5

    const/4 v5, 0x3

    const-string v8, "16GB"

    aput-object v8, v4, v5

    const/4 v5, 0x4

    const-string v8, "32GB"

    aput-object v8, v4, v5

    const/4 v5, 0x5

    const-string v8, "64GB"

    aput-object v8, v4, v5

    const/4 v5, 0x6

    const-string v8, "128GB"

    aput-object v8, v4, v5

    const/4 v5, 0x7

    const-string v8, "256GB"

    aput-object v8, v4, v5

    const/16 v5, 0x8

    const-string v8, "512GB"

    aput-object v8, v4, v5

    const/16 v5, 0x9

    const-string v8, "1024GB"

    aput-object v8, v4, v5

    const/16 v5, 0xa

    const-string v8, "2048GB"

    aput-object v8, v4, v5

    :goto_59
    if-ge v6, v2, :cond_68

    .line 43
    aget-wide v8, v3, v6

    cmp-long v5, v0, v8

    if-gtz v5, :cond_62

    goto :goto_68

    :cond_62
    if-ne v6, v2, :cond_66

    add-int/lit8 v6, v6, -0x1

    :cond_66
    add-int/2addr v6, v7

    goto :goto_59

    .line 50
    :cond_68
    :goto_68
    aget-object v0, v4, v6

    return-object v0

    nop

    :array_6c
    .array-data 8
        0x80000000L
        0x100000000L
        0x200000000L
        0x400000000L
        0x800000000L
        0x1000000000L
        0x2000000000L
        0x4000000000L
        0x8000000000L
        0x10000000000L
        0x20000000000L
    .end array-data
.end method
