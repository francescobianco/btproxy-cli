.class public Lcom/tamic/novate/config/Config;
.super Ljava/lang/Object;
.source "Config.java"


# instance fields
.field error:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isFormat:Ljava/lang/String;

.field private sucessCode:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getErrorInfo()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/tamic/novate/config/Config;->error:Ljava/util/HashMap;

    return-object v0
.end method

.method public getIsFormat()Ljava/lang/String;
    .registers 2

    .line 26
    iget-object v0, p0, Lcom/tamic/novate/config/Config;->isFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getSucessCode()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/tamic/novate/config/Config;->sucessCode:Ljava/util/List;

    return-object v0
.end method

.method public setErrorInfo(Ljava/util/HashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 46
    iput-object p1, p0, Lcom/tamic/novate/config/Config;->error:Ljava/util/HashMap;

    return-void
.end method

.method public setIsFormat(Ljava/lang/String;)V
    .registers 2

    .line 30
    iput-object p1, p0, Lcom/tamic/novate/config/Config;->isFormat:Ljava/lang/String;

    return-void
.end method

.method public setSucessCode(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/tamic/novate/config/Config;->sucessCode:Ljava/util/List;

    return-void
.end method
