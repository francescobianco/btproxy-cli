.class Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurableModel;
.super Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;
.source "RmiDebuggedEnvironmentImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DebugConfigurableModel"
.end annotation


# static fields
.field static final KEYS:Ljava/util/List;


# instance fields
.field final configurable:Lfreemarker/core/Configurable;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x7

    .line 163
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "arithmetic_engine"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "boolean_format"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "classic_compatible"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "locale"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "number_format"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "object_wrapper"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "template_exception_handler"

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurableModel;->KEYS:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Configurable;)V
    .registers 3

    const/4 v0, 0x0

    .line 176
    invoke-direct {p0, v0}, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugMapModel;-><init>(Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$1;)V

    .line 177
    iput-object p1, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurableModel;->configurable:Lfreemarker/core/Configurable;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurableModel;->configurable:Lfreemarker/core/Configurable;

    invoke-virtual {v0, p1}, Lfreemarker/core/Configurable;->getSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    goto :goto_10

    .line 187
    :cond_a
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_10
    return-object p1
.end method

.method keySet()Ljava/util/Collection;
    .registers 2

    .line 182
    sget-object v0, Lfreemarker/debug/impl/RmiDebuggedEnvironmentImpl$DebugConfigurableModel;->KEYS:Ljava/util/List;

    return-object v0
.end method
