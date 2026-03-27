.class public Lfreemarker/cache/NotMatcher;
.super Lfreemarker/cache/TemplateSourceMatcher;
.source "NotMatcher.java"


# instance fields
.field private final matcher:Lfreemarker/cache/TemplateSourceMatcher;


# direct methods
.method public constructor <init>(Lfreemarker/cache/TemplateSourceMatcher;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lfreemarker/cache/TemplateSourceMatcher;-><init>()V

    .line 33
    iput-object p1, p0, Lfreemarker/cache/NotMatcher;->matcher:Lfreemarker/cache/TemplateSourceMatcher;

    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    iget-object v0, p0, Lfreemarker/cache/NotMatcher;->matcher:Lfreemarker/cache/TemplateSourceMatcher;

    invoke-virtual {v0, p1, p2}, Lfreemarker/cache/TemplateSourceMatcher;->matches(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method
