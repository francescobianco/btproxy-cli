.class public abstract Lfreemarker/cache/TemplateLookupResult;
.super Ljava/lang/Object;
.source "TemplateLookupResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;,
        Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/cache/TemplateLookupResult$1;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lfreemarker/cache/TemplateLookupResult;-><init>()V

    return-void
.end method

.method static createNegativeResult()Lfreemarker/cache/TemplateLookupResult;
    .registers 1

    .line 36
    # getter for: Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;->INSTANCE:Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;
    invoke-static {}, Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;->access$000()Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;

    move-result-object v0

    return-object v0
.end method

.method static from(Ljava/lang/String;Ljava/lang/Object;)Lfreemarker/cache/TemplateLookupResult;
    .registers 4

    if-eqz p1, :cond_9

    .line 41
    new-instance v0, Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lfreemarker/cache/TemplateLookupResult$PositiveTemplateLookupResult;-><init>(Ljava/lang/String;Ljava/lang/Object;Lfreemarker/cache/TemplateLookupResult$1;)V

    goto :goto_d

    .line 43
    :cond_9
    invoke-static {}, Lfreemarker/cache/TemplateLookupResult;->createNegativeResult()Lfreemarker/cache/TemplateLookupResult;

    move-result-object v0

    :goto_d
    return-object v0
.end method


# virtual methods
.method abstract getTemplateSource()Ljava/lang/Object;
.end method

.method public abstract getTemplateSourceName()Ljava/lang/String;
.end method

.method public abstract isPositive()Z
.end method
