.class final Lfreemarker/cache/TemplateCache$TemplateKey;
.super Ljava/lang/Object;
.source "TemplateCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/cache/TemplateCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "TemplateKey"
.end annotation


# instance fields
.field private final customLookupCondition:Ljava/lang/Object;

.field private final encoding:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private final name:Ljava/lang/String;

.field private final parse:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 6

    .line 840
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 841
    iput-object p1, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->name:Ljava/lang/String;

    .line 842
    iput-object p2, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->locale:Ljava/util/Locale;

    .line 843
    iput-object p3, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->customLookupCondition:Ljava/lang/Object;

    .line 844
    iput-object p4, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->encoding:Ljava/lang/String;

    .line 845
    iput-boolean p5, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->parse:Z

    return-void
.end method

.method private nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .registers 4

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    if-eqz p2, :cond_d

    .line 864
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_d

    :cond_a
    if-nez p2, :cond_d

    const/4 v0, 0x1

    :cond_d
    :goto_d
    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 850
    instance-of v0, p1, Lfreemarker/cache/TemplateCache$TemplateKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 851
    check-cast p1, Lfreemarker/cache/TemplateCache$TemplateKey;

    .line 852
    iget-boolean v0, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->parse:Z

    iget-boolean v2, p1, Lfreemarker/cache/TemplateCache$TemplateKey;->parse:Z

    if-ne v0, v2, :cond_36

    iget-object v0, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->name:Ljava/lang/String;

    iget-object v2, p1, Lfreemarker/cache/TemplateCache$TemplateKey;->name:Ljava/lang/String;

    .line 854
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->locale:Ljava/util/Locale;

    iget-object v2, p1, Lfreemarker/cache/TemplateCache$TemplateKey;->locale:Ljava/util/Locale;

    .line 855
    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->customLookupCondition:Ljava/lang/Object;

    iget-object v2, p1, Lfreemarker/cache/TemplateCache$TemplateKey;->customLookupCondition:Ljava/lang/Object;

    .line 856
    invoke-direct {p0, v0, v2}, Lfreemarker/cache/TemplateCache$TemplateKey;->nullSafeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    iget-object v0, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->encoding:Ljava/lang/String;

    iget-object p1, p1, Lfreemarker/cache/TemplateCache$TemplateKey;->encoding:Ljava/lang/String;

    .line 857
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_36

    const/4 v1, 0x1

    :cond_36
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 870
    iget-object v0, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->name:Ljava/lang/String;

    .line 871
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->locale:Ljava/util/Locale;

    .line 872
    invoke-virtual {v1}, Ljava/util/Locale;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->encoding:Ljava/lang/String;

    .line 873
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->customLookupCondition:Ljava/lang/Object;

    if-eqz v1, :cond_1d

    .line 874
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    xor-int/2addr v0, v1

    iget-boolean v1, p0, Lfreemarker/cache/TemplateCache$TemplateKey;->parse:Z

    xor-int/lit8 v1, v1, 0x1

    .line 875
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
