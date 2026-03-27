.class public Lcom/keephealth/android/util/DeflaterUtils;
.super Ljava/lang/Object;
.source "DeflaterUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static unzipString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x1

    .line 61
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 63
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    .line 65
    invoke-virtual {v0, p0}, Ljava/util/zip/Inflater;->setInput([B)V

    const/16 p0, 0x100

    .line 67
    new-array v1, p0, [B

    .line 68
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 71
    :goto_16
    :try_start_16
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->finished()Z

    move-result p0

    if-nez p0, :cond_25

    .line 73
    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result p0

    const/4 v3, 0x0

    .line 74
    invoke-virtual {v2, v1, v3, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/util/zip/DataFormatException; {:try_start_16 .. :try_end_24} :catch_38
    .catchall {:try_start_16 .. :try_end_24} :catchall_36

    goto :goto_16

    .line 81
    :cond_25
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 84
    new-instance p0, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object p0

    :catchall_36
    move-exception p0

    goto :goto_41

    :catch_38
    move-exception p0

    .line 77
    :try_start_39
    invoke-virtual {p0}, Ljava/util/zip/DataFormatException;->printStackTrace()V
    :try_end_3c
    .catchall {:try_start_39 .. :try_end_3c} :catchall_36

    .line 81
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    const/4 p0, 0x0

    return-object p0

    :goto_41
    invoke-virtual {v0}, Ljava/util/zip/Inflater;->end()V

    .line 82
    throw p0
.end method

.method public static zipString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 37
    new-instance v0, Ljava/util/zip/Deflater;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 39
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/zip/Deflater;->setInput([B)V

    .line 41
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finish()V

    const/16 p0, 0x100

    .line 43
    new-array p1, p0, [B

    .line 44
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 46
    :goto_1e
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->finished()Z

    move-result p0

    if-nez p0, :cond_2d

    .line 48
    invoke-virtual {v0, p1}, Ljava/util/zip/Deflater;->deflate([B)I

    move-result p0

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, p1, v2, p0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_1e

    .line 52
    :cond_2d
    invoke-virtual {v0}, Ljava/util/zip/Deflater;->end()V

    .line 53
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
