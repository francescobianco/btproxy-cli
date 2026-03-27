.class public Lfreemarker/cache/PathGlobMatcher;
.super Lfreemarker/cache/TemplateSourceMatcher;
.source "PathGlobMatcher.java"


# instance fields
.field private caseInsensitive:Z

.field private final glob:Ljava/lang/String;

.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 60
    invoke-direct {p0}, Lfreemarker/cache/TemplateSourceMatcher;-><init>()V

    .line 61
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 64
    iput-object p1, p0, Lfreemarker/cache/PathGlobMatcher;->glob:Ljava/lang/String;

    .line 65
    invoke-direct {p0}, Lfreemarker/cache/PathGlobMatcher;->buildPattern()V

    return-void

    .line 62
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Absolute template paths need no inital \"/\"; remove it from: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private buildPattern()V
    .registers 3

    .line 69
    iget-object v0, p0, Lfreemarker/cache/PathGlobMatcher;->glob:Ljava/lang/String;

    iget-boolean v1, p0, Lfreemarker/cache/PathGlobMatcher;->caseInsensitive:Z

    invoke-static {v0, v1}, Lfreemarker/template/utility/StringUtil;->globToRegularExpression(Ljava/lang/String;Z)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/cache/PathGlobMatcher;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public caseInsensitive(Z)Lfreemarker/cache/PathGlobMatcher;
    .registers 2

    .line 96
    invoke-virtual {p0, p1}, Lfreemarker/cache/PathGlobMatcher;->setCaseInsensitive(Z)V

    return-object p0
.end method

.method public isCaseInsensitive()Z
    .registers 2

    .line 78
    iget-boolean v0, p0, Lfreemarker/cache/PathGlobMatcher;->caseInsensitive:Z

    return v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object p2, p0, Lfreemarker/cache/PathGlobMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public setCaseInsensitive(Z)V
    .registers 3

    .line 85
    iget-boolean v0, p0, Lfreemarker/cache/PathGlobMatcher;->caseInsensitive:Z

    .line 86
    iput-boolean p1, p0, Lfreemarker/cache/PathGlobMatcher;->caseInsensitive:Z

    if-eq v0, p1, :cond_9

    .line 88
    invoke-direct {p0}, Lfreemarker/cache/PathGlobMatcher;->buildPattern()V

    :cond_9
    return-void
.end method
