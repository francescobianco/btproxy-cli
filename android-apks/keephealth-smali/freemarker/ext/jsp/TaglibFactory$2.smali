.class final Lfreemarker/ext/jsp/TaglibFactory$2;
.super Ljava/io/FilterInputStream;
.source "TaglibFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lfreemarker/ext/jsp/TaglibFactory;->toCloseIgnoring(Ljava/io/InputStream;)Ljava/io/FilterInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2

    .line 924
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 1

    return-void
.end method
