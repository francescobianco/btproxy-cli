.class Lfreemarker/core/BuiltInsForStringsBasic$word_listBI;
.super Lfreemarker/core/BuiltInForString;
.source "BuiltInsForStringsBasic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "word_listBI"
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 804
    invoke-direct {p0}, Lfreemarker/core/BuiltInForString;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Ljava/lang/String;Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4

    .line 807
    new-instance p2, Lfreemarker/template/SimpleSequence;

    invoke-direct {p2}, Lfreemarker/template/SimpleSequence;-><init>()V

    .line 808
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 809
    :goto_a
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p1

    if-eqz p1, :cond_18

    .line 810
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lfreemarker/template/SimpleSequence;->add(Ljava/lang/Object;)V

    goto :goto_a

    :cond_18
    return-object p2
.end method
