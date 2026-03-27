.class public Lfreemarker/cache/AndMatcher;
.super Lfreemarker/cache/TemplateSourceMatcher;
.source "AndMatcher.java"


# instance fields
.field private final matchers:[Lfreemarker/cache/TemplateSourceMatcher;


# direct methods
.method public varargs constructor <init>([Lfreemarker/cache/TemplateSourceMatcher;)V
    .registers 3

    .line 32
    invoke-direct {p0}, Lfreemarker/cache/TemplateSourceMatcher;-><init>()V

    .line 33
    array-length v0, p1

    if-eqz v0, :cond_9

    .line 34
    iput-object p1, p0, Lfreemarker/cache/AndMatcher;->matchers:[Lfreemarker/cache/TemplateSourceMatcher;

    return-void

    .line 33
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Need at least 1 matcher, had 0."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lfreemarker/cache/AndMatcher;->matchers:[Lfreemarker/cache/TemplateSourceMatcher;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v1, :cond_13

    aget-object v4, v0, v3

    .line 40
    invoke-virtual {v4, p1, p2}, Lfreemarker/cache/TemplateSourceMatcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_10

    return v2

    :cond_10
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_13
    const/4 p1, 0x1

    return p1
.end method
