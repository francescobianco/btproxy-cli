.class final Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;
.super Lfreemarker/cache/TemplateLookupResult;
.source "TemplateLookupResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/TemplateLookupResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NegativeTemplateLookupResult"
.end annotation


# static fields
.field private static final INSTANCE:Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 114
    new-instance v0, Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;

    invoke-direct {v0}, Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;-><init>()V

    sput-object v0, Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;->INSTANCE:Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    .line 116
    invoke-direct {p0, v0}, Lfreemarker/cache/TemplateLookupResult;-><init>(Lfreemarker/cache/TemplateLookupResult$1;)V

    return-void
.end method

.method static synthetic access$000()Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;
    .registers 1

    .line 112
    sget-object v0, Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;->INSTANCE:Lfreemarker/cache/TemplateLookupResult$NegativeTemplateLookupResult;

    return-object v0
.end method


# virtual methods
.method getTemplateSource()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getTemplateSourceName()Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public isPositive()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
