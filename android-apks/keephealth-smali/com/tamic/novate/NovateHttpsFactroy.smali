.class public Lcom/tamic/novate/NovateHttpsFactroy;
.super Ljava/lang/Object;
.source "NovateHttpsFactroy.java"


# static fields
.field private static TRUSTED_VERIFIER:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static creatSSLSocketFactory(Landroid/content/Context;Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 6

    .line 159
    const-string v0, "Novate"

    if-eqz p0, :cond_7f

    const/4 v1, 0x0

    .line 167
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_2d

    :catch_12
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 170
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SSLSocketFactory open file error :"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    move-object p0, v1

    .line 173
    :goto_2d
    :try_start_2d
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 174
    invoke-virtual {v2, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object p0

    .line 176
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 177
    invoke-virtual {v2, v1, v1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 178
    invoke-virtual {v2, p1, p0}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 180
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p0

    .line 181
    invoke-virtual {p0, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 183
    const-string p1, "TLS"

    invoke-static {p1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p1

    .line 184
    invoke-virtual {p0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p0

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p1, v1, p0, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 185
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_66} :catch_67

    return-object p0

    :catch_67
    move-exception p0

    .line 187
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v2, "SSLSocketFactory generate error :"

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/tamic/novate/util/LogWraper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 160
    :cond_7f
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static creatSkipHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 1

    .line 198
    new-instance v0, Lcom/tamic/novate/NovateHttpsFactroy$2;

    invoke-direct {v0}, Lcom/tamic/novate/NovateHttpsFactroy$2;-><init>()V

    return-object v0
.end method

.method public static creatTrustManager()[Ljavax/net/ssl/TrustManager;
    .registers 3

    const/4 v0, 0x1

    .line 236
    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    new-instance v1, Lcom/tamic/novate/NovateHttpsFactroy$4;

    invoke-direct {v1}, Lcom/tamic/novate/NovateHttpsFactroy$4;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static creatX509TrustManager()Ljavax/net/ssl/X509TrustManager;
    .registers 1

    .line 213
    new-instance v0, Lcom/tamic/novate/NovateHttpsFactroy$3;

    invoke-direct {v0}, Lcom/tamic/novate/NovateHttpsFactroy$3;-><init>()V

    return-object v0
.end method

.method public static getHostnameVerifier([Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .line 104
    new-instance v0, Lcom/tamic/novate/NovateHttpsFactroy$1;

    invoke-direct {v0, p0}, Lcom/tamic/novate/NovateHttpsFactroy$1;-><init>([Ljava/lang/String;)V

    return-object v0
.end method

.method protected static getPins(Landroid/content/Context;I)Ljava/lang/String;
    .registers 6

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0

    .line 127
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    const/16 v0, 0x1000

    .line 128
    new-array v0, v0, [B

    .line 130
    :goto_11
    :try_start_11
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_22

    .line 131
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3, v1}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_21} :catch_27

    goto :goto_11

    .line 137
    :cond_22
    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_27
    move-exception p0

    .line 134
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static getSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 4

    .line 143
    :try_start_0
    const-string v0, "SSL"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 144
    invoke-static {}, Lcom/tamic/novate/NovateHttpsFactroy;->creatTrustManager()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 145
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    return-object v0

    :catch_18
    move-exception v0

    .line 147
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected static getSSLSocketFactory(Landroid/content/Context;[I)Ljavax/net/ssl/SSLSocketFactory;
    .registers 9

    if-eqz p0, :cond_70

    const/4 v0, 0x0

    .line 66
    :try_start_3
    const-string v1, "X.509"

    invoke-static {v1}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 67
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v0, v0}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    const/4 v3, 0x0

    .line 70
    :goto_15
    array-length v4, p1

    if-ge v3, v4, :cond_35

    .line 71
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    aget v5, p1, v3

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v4

    .line 72
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    if-eqz v4, :cond_32

    .line 75
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 78
    :cond_35
    const-string p0, "TLS"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    .line 79
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v2}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 81
    invoke-virtual {p1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object p1

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {p0, v0, p1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 82
    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0
    :try_end_56
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_56} :catch_6b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_56} :catch_66
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_56} :catch_61
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_56} :catch_5c
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_56} :catch_57

    return-object p0

    :catch_57
    move-exception p0

    .line 92
    invoke-virtual {p0}, Ljava/security/KeyManagementException;->printStackTrace()V

    goto :goto_6f

    :catch_5c
    move-exception p0

    .line 90
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6f

    :catch_61
    move-exception p0

    .line 88
    invoke-virtual {p0}, Ljava/security/KeyStoreException;->printStackTrace()V

    goto :goto_6f

    :catch_66
    move-exception p0

    .line 86
    invoke-virtual {p0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_6f

    :catch_6b
    move-exception p0

    .line 84
    invoke-virtual {p0}, Ljava/security/cert/CertificateException;->printStackTrace()V

    :goto_6f
    return-object v0

    .line 61
    :cond_70
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "context == null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
