.class final Lcom/tamic/novate/NovateHttpsFactroy$1;
.super Ljava/lang/Object;
.source "NovateHttpsFactroy.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tamic/novate/NovateHttpsFactroy;->getHostnameVerifier([Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$hostUrls:[Ljava/lang/String;


# direct methods
.method constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 104
    iput-object p1, p0, Lcom/tamic/novate/NovateHttpsFactroy$1;->val$hostUrls:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 7

    .line 108
    iget-object p2, p0, Lcom/tamic/novate/NovateHttpsFactroy$1;->val$hostUrls:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v1, v0, :cond_13

    aget-object v3, p2, v1

    .line 109
    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    const/4 v2, 0x1

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_13
    return v2
.end method
