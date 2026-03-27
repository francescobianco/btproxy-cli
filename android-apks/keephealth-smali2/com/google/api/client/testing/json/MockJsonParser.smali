.class public Lcom/google/api/client/testing/json/MockJsonParser;
.super Lcom/google/api/client/json/JsonParser;
.source "MockJsonParser.java"


# instance fields
.field private final factory:Lcom/google/api/client/json/JsonFactory;

.field private isClosed:Z


# direct methods
.method constructor <init>(Lcom/google/api/client/json/JsonFactory;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/google/api/client/json/JsonParser;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/google/api/client/testing/json/MockJsonParser;->factory:Lcom/google/api/client/json/JsonFactory;

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

    .line 55
    iput-boolean v0, p0, Lcom/google/api/client/testing/json/MockJsonParser;->isClosed:Z

    return-void
.end method

.method public getBigIntegerValue()Ljava/math/BigInteger;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getByteValue()B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentToken()Lcom/google/api/client/json/JsonToken;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDecimalValue()Ljava/math/BigDecimal;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoubleValue()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFactory()Lcom/google/api/client/json/JsonFactory;
    .registers 2

    .line 50
    iget-object v0, p0, Lcom/google/api/client/testing/json/MockJsonParser;->factory:Lcom/google/api/client/json/JsonFactory;

    return-object v0
.end method

.method public getFloatValue()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getIntValue()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getLongValue()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShortValue()S
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public getText()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isClosed()Z
    .registers 2

    .line 129
    iget-boolean v0, p0, Lcom/google/api/client/testing/json/MockJsonParser;->isClosed:Z

    return v0
.end method

.method public nextToken()Lcom/google/api/client/json/JsonToken;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public skipChildren()Lcom/google/api/client/json/JsonParser;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
