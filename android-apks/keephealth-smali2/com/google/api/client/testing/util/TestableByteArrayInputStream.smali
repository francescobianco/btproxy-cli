.class public Lcom/google/api/client/testing/util/TestableByteArrayInputStream;
.super Ljava/io/ByteArrayInputStream;
.source "TestableByteArrayInputStream.java"


# instance fields
.field private closed:Z


# direct methods
.method public constructor <init>([B)V
    .registers 2

    .line 37
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method

.method public constructor <init>([BII)V
    .registers 4

    .line 46
    invoke-direct {p0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 58
    iput-boolean v0, p0, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;->closed:Z

    return-void
.end method

.method public final getBuffer()[B
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;->buf:[B

    return-object v0
.end method

.method public final isClosed()Z
    .registers 2

    .line 68
    iget-boolean v0, p0, Lcom/google/api/client/testing/util/TestableByteArrayInputStream;->closed:Z

    return v0
.end method
