.class Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI$MatcherBuilder;
.super Ljava/lang/Object;
.source "BuiltInsForStringsRegexp.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MatcherBuilder"
.end annotation


# instance fields
.field matchString:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 69
    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI$MatcherBuilder;->this$0:Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI$MatcherBuilder;->matchString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 74
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 75
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI$MatcherBuilder;->this$0:Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI;->checkMethodArgCount(III)V

    const/4 v1, 0x0

    .line 77
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v4, 0x0

    if-le v0, v3, :cond_21

    .line 78
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lfreemarker/core/RegexpHelper;->parseFlagString(Ljava/lang/String;)J

    move-result-wide v2

    goto :goto_22

    :cond_21
    move-wide v2, v4

    :goto_22
    const-wide v6, 0x200000000L

    and-long/2addr v6, v2

    cmp-long p1, v6, v4

    if-eqz p1, :cond_48

    .line 80
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "?"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI$MatcherBuilder;->this$0:Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI;

    iget-object v0, v0, Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " doesn\'t support the \"f\" flag."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/RegexpHelper;->logFlagWarning(Ljava/lang/String;)V

    :cond_48
    long-to-int p1, v2

    .line 82
    invoke-static {v1, p1}, Lfreemarker/core/RegexpHelper;->getPattern(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 83
    new-instance v0, Lfreemarker/core/BuiltInsForStringsRegexp$RegexMatchModel;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsRegexp$matchesBI$MatcherBuilder;->matchString:Ljava/lang/String;

    invoke-direct {v0, p1, v1}, Lfreemarker/core/BuiltInsForStringsRegexp$RegexMatchModel;-><init>(Ljava/util/regex/Pattern;Ljava/lang/String;)V

    return-object v0
.end method
