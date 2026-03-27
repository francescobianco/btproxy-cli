.class public Lfreemarker/cache/FileExtensionMatcher;
.super Lfreemarker/cache/TemplateSourceMatcher;
.source "FileExtensionMatcher.java"


# instance fields
.field private caseInsensitive:Z

.field private final extension:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .line 39
    invoke-direct {p0}, Lfreemarker/cache/TemplateSourceMatcher;-><init>()V

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lfreemarker/cache/FileExtensionMatcher;->caseInsensitive:Z

    const/16 v0, 0x2f

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_67

    const/16 v0, 0x2a

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const-string v2, "A file extension can\'t contain \"*\": "

    if-ne v0, v1, :cond_54

    const/16 v0, 0x3f

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ne v0, v1, :cond_41

    .line 49
    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 52
    iput-object p1, p0, Lfreemarker/cache/FileExtensionMatcher;->extension:Ljava/lang/String;

    return-void

    .line 50
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A file extension can\'t start with \".\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_54
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 41
    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "A file extension can\'t contain \"/\": "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public caseInsensitive(Z)Lfreemarker/cache/FileExtensionMatcher;
    .registers 2

    .line 81
    invoke-virtual {p0, p1}, Lfreemarker/cache/FileExtensionMatcher;->setCaseInsensitive(Z)V

    return-object p0
.end method

.method public isCaseInsensitive()Z
    .registers 2

    .line 67
    iget-boolean v0, p0, Lfreemarker/cache/FileExtensionMatcher;->caseInsensitive:Z

    return v0
.end method

.method public matches(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    .line 58
    iget-object v0, p0, Lfreemarker/cache/FileExtensionMatcher;->extension:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v0, v6, 0x1

    if-lt p2, v0, :cond_26

    sub-int v3, p2, v6

    add-int/lit8 p2, v3, -0x1

    .line 59
    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v0, 0x2e

    if-eq p2, v0, :cond_1b

    goto :goto_26

    .line 63
    :cond_1b
    iget-boolean v2, p0, Lfreemarker/cache/FileExtensionMatcher;->caseInsensitive:Z

    iget-object v4, p0, Lfreemarker/cache/FileExtensionMatcher;->extension:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result p1

    return p1

    :cond_26
    :goto_26
    const/4 p1, 0x0

    return p1
.end method

.method public setCaseInsensitive(Z)V
    .registers 2

    .line 74
    iput-boolean p1, p0, Lfreemarker/cache/FileExtensionMatcher;->caseInsensitive:Z

    return-void
.end method
