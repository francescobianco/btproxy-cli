.class public Lcom/keephealth/android/util/crash/DFileUtils;
.super Ljava/lang/Object;
.source "DFileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readText(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    :try_start_5
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x400

    .line 49
    new-array p0, p0, [C

    .line 51
    :goto_e
    invoke-virtual {v1, p0}, Ljava/io/FileReader;->read([C)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1f

    .line 52
    new-instance v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4, v2}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_e

    .line 54
    :cond_1f
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_22} :catch_23

    goto :goto_27

    :catch_23
    move-exception p0

    .line 56
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 58
    :goto_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeTxt(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    const/4 v0, 0x0

    .line 36
    invoke-static {p0, p1, v0}, Lcom/keephealth/android/util/crash/DFileUtils;->writeTxt(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static writeTxt(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 4

    .line 24
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 26
    new-instance p0, Ljava/io/FileWriter;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Z)V

    .line 27
    invoke-virtual {p0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Ljava/io/FileWriter;->flush()V

    .line 29
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    goto :goto_1c

    :catch_18
    move-exception p0

    .line 31
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1c
    return-void
.end method
