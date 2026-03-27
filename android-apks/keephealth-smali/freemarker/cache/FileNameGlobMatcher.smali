.class public Lfreemarker/cache/FileNameGlobMatcher;
.super Lfreemarker/cache/TemplateSourceMatcher;
.source "FileNameGlobMatcher.java"


# instance fields
.field private caseInsensitive:Z

.field private final glob:Ljava/lang/String;

.field private pattern:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 46
    invoke-direct {p0}, Lfreemarker/cache/TemplateSourceMatcher;-><init>()V

    const/16 v0, 0x2f

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    .line 50
    iput-object p1, p0, Lfreemarker/cache/FileNameGlobMatcher;->glob:Ljava/lang/String;

    .line 51
    invoke-direct {p0}, Lfreemarker/cache/FileNameGlobMatcher;->buildPattern()V

    return-void

    .line 48
    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A file name glob can\'t contain \"/\": "

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

    .line 55
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "**/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/cache/FileNameGlobMatcher;->glob:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lfreemarker/cache/FileNameGlobMatcher;->caseInsensitive:Z

    invoke-static {v0, v1}, Lfreemarker/template/utility/StringUtil;->globToRegularExpression(Ljava/lang/String;Z)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/cache/FileNameGlobMatcher;->pattern:Ljava/util/regex/Pattern;

    return-void
.end method


# virtual methods
.method public caseInsensitive(Z)Lfreemarker/cache/FileNameGlobMatcher;
    .registers 2

    .line 82
    invoke-virtual {p0, p1}, Lfreemarker/cache/FileNameGlobMatcher;->setCaseInsensitive(Z)V

    return-object p0
.end method

.method public isCaseInsensitive()Z
    .registers 2

    .line 64
    iget-boolean v0, p0, Lfreemarker/cache/FileNameGlobMatcher;->caseInsensitive:Z

    return v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object p2, p0, Lfreemarker/cache/FileNameGlobMatcher;->pattern:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method public setCaseInsensitive(Z)V
    .registers 3

    .line 71
    iget-boolean v0, p0, Lfreemarker/cache/FileNameGlobMatcher;->caseInsensitive:Z

    .line 72
    iput-boolean p1, p0, Lfreemarker/cache/FileNameGlobMatcher;->caseInsensitive:Z

    if-eq v0, p1, :cond_9

    .line 74
    invoke-direct {p0}, Lfreemarker/cache/FileNameGlobMatcher;->buildPattern()V

    :cond_9
    return-void
.end method
