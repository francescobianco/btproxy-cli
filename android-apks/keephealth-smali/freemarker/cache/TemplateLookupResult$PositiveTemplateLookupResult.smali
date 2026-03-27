.class final Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;
.super Lfreemarker/cache/TemplateLookupResult;
.source "TemplateLookupResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/TemplateLookupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PositiveTemplateLookupResult"
.end annotation


# instance fields
.field private final templateSource:Ljava/lang/Object;

.field private final templateSourceName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, v0}, Lfreemarker/cache/TemplateLookupResult;-><init>(Lfreemarker/cache/TemplateLookupResult$1;)V

    .line 85
    const-string v0, "templateName"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    const-string v0, "templateSource"

    invoke-static {v0, p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 88
    instance-of v0, p2, Lfreemarker/cache/TemplateLookupResult;

    if-nez v0, :cond_17

    .line 92
    iput-object p1, p0, Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;->templateSourceName:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;->templateSource:Ljava/lang/Object;

    return-void

    .line 89
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Object;Lfreemarker/cache/TemplateLookupResult$1;)V
    .registers 4

    .line 67
    invoke-direct {p0, p1, p2}, Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method getTemplateSource()Ljava/lang/Object;
    .registers 2

    .line 103
    iget-object v0, p0, Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;->templateSource:Ljava/lang/Object;

    return-object v0
.end method

.method public getTemplateSourceName()Ljava/lang/String;
    .registers 2

    .line 98
    iget-object v0, p0, Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;->templateSourceName:Ljava/lang/String;

    return-object v0
.end method

.method public isPositive()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
