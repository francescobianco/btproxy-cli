.class public Lcom/keephealth/android/util/LocalFileUtils;
.super Ljava/lang/Object;
.source "LocalFileUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getImageFromAssetsFile(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const/4 v0, 0x0

    .line 62
    :try_start_5
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_9} :catch_1f
    .catchall {:try_start_5 .. :try_end_9} :catchall_1d

    .line 63
    :try_start_9
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_d} :catch_1b
    .catchall {:try_start_9 .. :try_end_d} :catchall_18

    if-eqz p0, :cond_17

    .line 71
    :try_start_f
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_13

    goto :goto_17

    :catch_13
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_17
    :goto_17
    return-object p1

    :catchall_18
    move-exception p1

    move-object v0, p0

    goto :goto_2f

    :catch_1b
    move-exception p1

    goto :goto_21

    :catchall_1d
    move-exception p1

    goto :goto_2f

    :catch_1f
    move-exception p1

    move-object p0, v0

    .line 66
    :goto_21
    :try_start_21
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_18

    if-eqz p0, :cond_2e

    .line 71
    :try_start_26
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_29} :catch_2a

    goto :goto_2e

    :catch_2a
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_2e
    :goto_2e
    return-object v0

    :goto_2f
    if-eqz v0, :cond_39

    .line 71
    :try_start_31
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_31 .. :try_end_34} :catch_35

    goto :goto_39

    :catch_35
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 77
    :cond_39
    :goto_39
    throw p1
.end method

.method public static final getStringFormAsset(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const/4 v0, 0x0

    .line 29
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    const-string p1, "utf-8"

    invoke-direct {v2, p0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_15} :catch_3f
    .catchall {:try_start_1 .. :try_end_15} :catchall_3d

    .line 31
    :try_start_15
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    :goto_1a
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 33
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    .line 35
    :cond_2a
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_2e} :catch_3a
    .catchall {:try_start_15 .. :try_end_2e} :catchall_37

    .line 42
    :try_start_2e
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_32

    goto :goto_36

    :catch_32
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_36
    return-object p0

    :catchall_37
    move-exception p0

    move-object v0, v1

    goto :goto_50

    :catch_3a
    move-exception p0

    move-object v0, v1

    goto :goto_40

    :catchall_3d
    move-exception p0

    goto :goto_50

    :catch_3f
    move-exception p0

    .line 37
    :goto_40
    :try_start_40
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 38
    const-string p0, ""
    :try_end_45
    .catchall {:try_start_40 .. :try_end_45} :catchall_3d

    if-eqz v0, :cond_4f

    .line 42
    :try_start_47
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_4b

    goto :goto_4f

    :catch_4b
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_4f
    :goto_4f
    return-object p0

    :goto_50
    if-eqz v0, :cond_5a

    .line 42
    :try_start_52
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_55
    .catch Ljava/io/IOException; {:try_start_52 .. :try_end_55} :catch_56

    goto :goto_5a

    :catch_56
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 48
    :cond_5a
    :goto_5a
    throw p0
.end method

.method public static final getStringFormRaw(Landroid/content/Context;I)Ljava/lang/String;
    .registers 5

    .line 89
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    const/4 p1, 0x0

    .line 91
    :try_start_9
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_e} :catch_36
    .catchall {:try_start_9 .. :try_end_e} :catchall_34

    const/16 p1, 0x400

    .line 92
    :try_start_10
    new-array p1, p1, [B

    .line 94
    :goto_12
    invoke-virtual {p0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1e

    const/4 v2, 0x0

    .line 95
    invoke-virtual {v0, p1, v2, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_12

    .line 97
    :cond_1e
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 98
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_25} :catch_31
    .catchall {:try_start_10 .. :try_end_25} :catchall_2e

    .line 105
    :try_start_25
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29

    goto :goto_2d

    :catch_29
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_2d
    return-object p0

    :catchall_2e
    move-exception p0

    move-object p1, v0

    goto :goto_47

    :catch_31
    move-exception p0

    move-object p1, v0

    goto :goto_37

    :catchall_34
    move-exception p0

    goto :goto_47

    :catch_36
    move-exception p0

    .line 100
    :goto_37
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 101
    const-string p0, ""
    :try_end_3c
    .catchall {:try_start_37 .. :try_end_3c} :catchall_34

    if-eqz p1, :cond_46

    .line 105
    :try_start_3e
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_3e .. :try_end_41} :catch_42

    goto :goto_46

    :catch_42
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_46
    :goto_46
    return-object p0

    :goto_47
    if-eqz p1, :cond_51

    .line 105
    :try_start_49
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_49 .. :try_end_4c} :catch_4d

    goto :goto_51

    :catch_4d
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    :cond_51
    :goto_51
    throw p0
.end method
