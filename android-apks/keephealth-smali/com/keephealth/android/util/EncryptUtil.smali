.class public Lcom/keephealth/android/util/EncryptUtil;
.super Ljava/lang/Object;
.source "EncryptUtil.java"


# static fields
.field private static final AES_Algorithm:Ljava/lang/String; = "AES"

.field public static AES_Transformation:Ljava/lang/String; = "AES/ECB/NoPadding"

.field private static final DES_Algorithm:Ljava/lang/String; = "DES"

.field public static DES_Transformation:Ljava/lang/String; = "DES/ECB/NoPadding"

.field private static final TripleDES_Algorithm:Ljava/lang/String; = "DESede"

.field public static TripleDES_Transformation:Ljava/lang/String; = "DESede/ECB/NoPadding"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B
    .registers 6

    .line 406
    :try_start_0
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {v0, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 407
    invoke-static {p3}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object p1

    .line 408
    new-instance p2, Ljava/security/SecureRandom;

    invoke-direct {p2}, Ljava/security/SecureRandom;-><init>()V

    if-eqz p4, :cond_12

    const/4 p3, 0x1

    goto :goto_13

    :cond_12
    const/4 p3, 0x2

    .line 409
    :goto_13
    invoke-virtual {p1, p3, v0, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/SecureRandom;)V

    .line 410
    invoke-virtual {p1, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p0
    :try_end_1a
    .catchall {:try_start_0 .. :try_end_1a} :catchall_1b

    return-object p0

    :catchall_1b
    move-exception p0

    .line 412
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static bytes2HexString([B)Ljava/lang/String;
    .registers 7

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_2f

    .line 142
    array-length v1, p0

    if-gtz v1, :cond_d

    goto :goto_2f

    :cond_d
    const/4 v1, 0x0

    move v2, v1

    .line 145
    :goto_f
    array-length v3, p0

    if-ge v2, v3, :cond_2a

    .line 146
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    .line 147
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x2

    if-ge v4, v5, :cond_24

    .line 149
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    :cond_24
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    .line 153
    :cond_2a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2f
    :goto_2f
    const/4 p0, 0x0

    return-object p0
.end method

.method private static charToByte(C)B
    .registers 2

    .line 497
    const-string v0, "0123456789ABCDEF"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method

.method public static decrypt3DES([B[B)[B
    .registers 5

    .line 584
    sget-object v0, Lcom/keephealth/android/util/EncryptUtil;->TripleDES_Transformation:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DESede"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/keephealth/android/util/EncryptUtil;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptAES([B[B)[B
    .registers 5

    .line 661
    sget-object v0, Lcom/keephealth/android/util/EncryptUtil;->AES_Transformation:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "AES"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/keephealth/android/util/EncryptUtil;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBase64AES([B[B)[B
    .registers 2

    .line 639
    invoke-static {p0}, Lcom/keephealth/android/util/EncodeUtil;->base64Decode([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->decryptAES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBase64DES([B[B)[B
    .registers 2

    .line 458
    invoke-static {p0}, Lcom/keephealth/android/util/EncodeUtil;->base64Decode([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->decryptDES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptBase64_3DES([B[B)[B
    .registers 2

    .line 562
    invoke-static {p0}, Lcom/keephealth/android/util/EncodeUtil;->base64Decode([B)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->decrypt3DES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptDES([B[B)[B
    .registers 5

    .line 507
    sget-object v0, Lcom/keephealth/android/util/EncryptUtil;->DES_Transformation:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "DES"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/keephealth/android/util/EncryptUtil;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptHexString3DES(Ljava/lang/String;[B)[B
    .registers 2

    .line 573
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->decrypt3DES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptHexStringAES(Ljava/lang/String;[B)[B
    .registers 2

    .line 650
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->decryptAES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static decryptHexStringDES(Ljava/lang/String;[B)[B
    .registers 2

    .line 469
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->hexString2Bytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->decryptDES([B[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt3DES([B[B)[B
    .registers 5

    .line 551
    sget-object v0, Lcom/keephealth/android/util/EncryptUtil;->TripleDES_Transformation:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "DESede"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/keephealth/android/util/EncryptUtil;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt3DES2Base64([B[B)[B
    .registers 2

    .line 529
    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->encrypt3DES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncodeUtil;->base64Encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encrypt3DES2HexString([B[B)Ljava/lang/String;
    .registers 2

    .line 540
    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->encrypt3DES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES([B[B)[B
    .registers 5

    .line 628
    sget-object v0, Lcom/keephealth/android/util/EncryptUtil;->AES_Transformation:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "AES"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/keephealth/android/util/EncryptUtil;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES2Base64([B[B)[B
    .registers 2

    .line 606
    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->encryptAES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncodeUtil;->base64Encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptAES2HexString([B[B)Ljava/lang/String;
    .registers 2

    .line 617
    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->encryptAES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static encryptAlgorithm([BLjava/lang/String;)[B
    .registers 2

    .line 377
    :try_start_0
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    .line 378
    invoke-virtual {p1, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 379
    invoke-virtual {p1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 381
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    const/4 p0, 0x0

    .line 383
    new-array p0, p0, [B

    return-object p0
.end method

.method public static encryptDES([B[B)[B
    .registers 5

    .line 447
    sget-object v0, Lcom/keephealth/android/util/EncryptUtil;->DES_Transformation:Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "DES"

    invoke-static {p0, p1, v2, v0, v1}, Lcom/keephealth/android/util/EncryptUtil;->DESTemplet([B[BLjava/lang/String;Ljava/lang/String;Z)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptDES2Base64([B[B)[B
    .registers 2

    .line 425
    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->encryptDES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncodeUtil;->base64Encode([B)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptDES2HexString([B[B)Ljava/lang/String;
    .registers 2

    .line 436
    invoke-static {p0, p1}, Lcom/keephealth/android/util/EncryptUtil;->encryptDES([B[B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD2([B)[B
    .registers 2

    .line 89
    const-string v0, "MD2"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD2ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD2ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD2ToString([B)Ljava/lang/String;
    .registers 1

    .line 79
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD2([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5([B)[B
    .registers 2

    .line 162
    const-string v0, "MD5"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5File(Ljava/io/File;)[B
    .registers 11

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 204
    :try_start_3
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_8} :catch_35
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_33
    .catchall {:try_start_3 .. :try_end_8} :catchall_31

    .line 205
    :try_start_8
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4

    .line 206
    sget-object v5, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v8

    const-wide/16 v6, 0x0

    invoke-virtual/range {v4 .. v9}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object p0

    .line 207
    const-string v4, "MD5"

    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 208
    invoke-virtual {v4, p0}, Ljava/security/MessageDigest;->update(Ljava/nio/ByteBuffer;)V

    .line 209
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0
    :try_end_25
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_25} :catch_2f
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_25} :catch_2d
    .catchall {:try_start_8 .. :try_end_25} :catchall_42

    .line 213
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v3, v1, v0

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object p0

    :catch_2d
    move-exception p0

    goto :goto_37

    :catch_2f
    move-exception p0

    goto :goto_37

    :catchall_31
    move-exception p0

    goto :goto_44

    :catch_33
    move-exception p0

    goto :goto_36

    :catch_35
    move-exception p0

    :goto_36
    move-object v3, v2

    .line 211
    :goto_37
    :try_start_37
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_42

    .line 213
    new-array p0, v1, [Ljava/io/Closeable;

    aput-object v3, p0, v0

    invoke-static {p0}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    return-object v2

    :catchall_42
    move-exception p0

    move-object v2, v3

    :goto_44
    new-array v1, v1, [Ljava/io/Closeable;

    aput-object v2, v1, v0

    invoke-static {v1}, Lcom/keephealth/android/util/file/FileUtil;->closeIO([Ljava/io/Closeable;)V

    .line 214
    throw p0
.end method

.method public static encryptMD5File(Ljava/lang/String;)[B
    .registers 2

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5File(Ljava/io/File;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;
    .registers 2

    .line 192
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5File(Ljava/io/File;)[B

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5File(Ljava/io/File;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    goto :goto_11

    :cond_f
    const-string p0, ""

    :goto_11
    return-object p0
.end method

.method public static encryptMD5File2String(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 172
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5File2String(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 99
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString([B)Ljava/lang/String;
    .registers 1

    .line 120
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptMD5ToString([B[B)Ljava/lang/String;
    .registers 5

    .line 131
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [B

    .line 132
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 133
    array-length p0, p0

    array-length v1, p1

    invoke-static {p1, v2, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 134
    invoke-static {v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptMD5([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA1([B)[B
    .registers 2

    .line 245
    const-string v0, "SHA-1"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA1ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 225
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA1ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA1ToString([B)Ljava/lang/String;
    .registers 1

    .line 235
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA1([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA224([B)[B
    .registers 2

    .line 275
    const-string v0, "SHA-224"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA224ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 255
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA224ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA224ToString([B)Ljava/lang/String;
    .registers 1

    .line 265
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA224([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256([B)[B
    .registers 2

    .line 305
    const-string v0, "SHA-256"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 285
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA256ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA256ToString([B)Ljava/lang/String;
    .registers 1

    .line 295
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA256([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA384([B)[B
    .registers 2

    .line 335
    const-string v0, "SHA-384"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA384ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 315
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA384ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA384ToString([B)Ljava/lang/String;
    .registers 1

    .line 325
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA384([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA512([B)[B
    .registers 2

    .line 365
    const-string v0, "SHA-512"

    invoke-static {p0, v0}, Lcom/keephealth/android/util/EncryptUtil;->encryptAlgorithm([BLjava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA512ToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA512ToString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static encryptSHA512ToString([B)Ljava/lang/String;
    .registers 1

    .line 355
    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->encryptSHA512([B)[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->bytes2HexString([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static hexString2Bytes(Ljava/lang/String;)[B
    .registers 6

    if-eqz p0, :cond_38

    .line 478
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_38

    .line 481
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p0

    .line 482
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 483
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 484
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_1c
    if-ge v2, v0, :cond_37

    mul-int/lit8 v3, v2, 0x2

    .line 487
    aget-char v4, p0, v3

    invoke-static {v4}, Lcom/keephealth/android/util/EncryptUtil;->charToByte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v3, v3, 0x1

    aget-char v3, p0, v3

    invoke-static {v3}, Lcom/keephealth/android/util/EncryptUtil;->charToByte(C)B

    move-result v3

    or-int/2addr v3, v4

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    :cond_37
    return-object v1

    :cond_38
    :goto_38
    const/4 p0, 0x0

    return-object p0
.end method

.method public static stringToSHA(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    .line 40
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 41
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 42
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    invoke-static {p0}, Lcom/keephealth/android/util/EncryptUtil;->toHexString([B)Ljava/lang/String;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    return-object p0

    :catch_16
    move-exception p0

    .line 44
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static toHexString([B)Ljava/lang/String;
    .registers 8

    const/16 v0, 0x10

    .line 50
    new-array v0, v0, [C

    fill-array-data v0, :array_2c

    .line 51
    array-length v1, p0

    mul-int/lit8 v2, v1, 0x2

    .line 52
    new-array v2, v2, [C

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v1, :cond_26

    .line 54
    aget-byte v4, p0, v3

    mul-int/lit8 v5, v3, 0x2

    ushr-int/lit8 v6, v4, 0x4

    and-int/lit8 v6, v6, 0xf

    .line 56
    aget-char v6, v0, v6

    aput-char v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit8 v4, v4, 0xf

    .line 57
    aget-char v4, v0, v4

    aput-char v4, v2, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 59
    :cond_26
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v2}, Ljava/lang/String;-><init>([C)V

    return-object p0

    :array_2c
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data
.end method
