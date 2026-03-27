.class final Lfreemarker/debug/impl/RmiDebuggerService$TemplateDebugInfo;
.super Ljava/lang/Object;
.source "RmiDebuggerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/debug/impl/RmiDebuggerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TemplateDebugInfo"
.end annotation


# instance fields
.field final breakpoints:Ljava/util/List;

.field final templates:Ljava/util/List;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 348
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 349
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerService$TemplateDebugInfo;->templates:Ljava/util/List;

    .line 350
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerService$TemplateDebugInfo;->breakpoints:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/debug/impl/RmiDebuggerService$1;)V
    .registers 2

    .line 348
    invoke-direct {p0}, Lfreemarker/debug/impl/RmiDebuggerService$TemplateDebugInfo;-><init>()V

    return-void
.end method


# virtual methods
.method isEmpty()Z
    .registers 2

    .line 353
    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerService$TemplateDebugInfo;->templates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lfreemarker/debug/impl/RmiDebuggerService$TemplateDebugInfo;->breakpoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method
