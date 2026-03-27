.class Lfreemarker/core/BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups;
.super Ljava/lang/Object;
.source "BuiltInsForStringsRegexp.java"

# interfaces
.implements Lfreemarker/template/TemplateScalarModel;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsRegexp$RegexMatchModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MatchWithGroups"
.end annotation


# instance fields
.field final groupsSeq:Lfreemarker/template/SimpleSequence;

.field final matchedInputPart:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/regex/Matcher;)V
    .registers 6

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups;->matchedInputPart:Ljava/lang/String;

    .line 144
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->groupCount()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    .line 145
    new-instance v0, Lfreemarker/template/SimpleSequence;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleSequence;-><init>(I)V

    iput-object v0, p0, Lfreemarker/core/BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups;->groupsSeq:Lfreemarker/template/SimpleSequence;

    const/4 v0, 0x0

    :goto_1f
    if-ge v0, p1, :cond_2d

    .line 147
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups;->groupsSeq:Lfreemarker/template/SimpleSequence;

    invoke-virtual {p2, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1f

    :cond_2d
    return-void
.end method


# virtual methods
.method public getAsString()Ljava/lang/String;
    .registers 2

    .line 152
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsRegexp$RegexMatchModel$MatchWithGroups;->matchedInputPart:Ljava/lang/String;

    return-object v0
.end method
