.class Lfreemarker/core/RegexpHelper$PatternCacheKey;
.super Ljava/lang/Object;
.source "RegexpHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/RegexpHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PatternCacheKey"
.end annotation


# instance fields
.field private final flags:I

.field private final hashCode:I

.field private final patternString:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lfreemarker/core/RegexpHelper$PatternCacheKey;->patternString:Ljava/lang/String;

    .line 97
    iput p2, p0, Lfreemarker/core/RegexpHelper$PatternCacheKey;->flags:I

    .line 98
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p1

    mul-int/lit8 p2, p2, 0x1f

    add-int/2addr p1, p2

    iput p1, p0, Lfreemarker/core/RegexpHelper$PatternCacheKey;->hashCode:I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 103
    instance-of v0, p1, Lfreemarker/core/RegexpHelper$PatternCacheKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 104
    check-cast p1, Lfreemarker/core/RegexpHelper$PatternCacheKey;

    .line 105
    iget v0, p1, Lfreemarker/core/RegexpHelper$PatternCacheKey;->flags:I

    iget v2, p0, Lfreemarker/core/RegexpHelper$PatternCacheKey;->flags:I

    if-ne v0, v2, :cond_18

    iget-object p1, p1, Lfreemarker/core/RegexpHelper$PatternCacheKey;->patternString:Ljava/lang/String;

    iget-object v0, p0, Lfreemarker/core/RegexpHelper$PatternCacheKey;->patternString:Ljava/lang/String;

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 v1, 0x1

    :cond_18
    return v1
.end method

.method public hashCode()I
    .registers 2

    .line 114
    iget v0, p0, Lfreemarker/core/RegexpHelper$PatternCacheKey;->hashCode:I

    return v0
.end method
