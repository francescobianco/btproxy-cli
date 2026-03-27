.class Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;
.super Ljava/lang/Object;
.source "BuiltInsForStringsBasic.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeepAfterMethod"
.end annotation


# instance fields
.field private s:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;


# direct methods
.method constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;Ljava/lang/String;)V
    .registers 3

    .line 229
    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 230
    iput-object p2, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->s:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 234
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 235
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;->checkMethodArgCount(III)V

    .line 236
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;->getStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v4, 0x0

    if-le v0, v3, :cond_21

    .line 237
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;->getStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/core/RegexpHelper;->parseFlagString(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_22

    :cond_21
    move-wide v6, v4

    :goto_22
    const-wide v8, 0x100000000L

    and-long/2addr v8, v6

    cmp-long p1, v8, v4

    const/4 v0, -0x1

    if-nez p1, :cond_58

    .line 241
    iget-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;

    iget-object p1, p1, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI;->key:Ljava/lang/String;

    invoke-static {p1, v6, v7, v3}, Lfreemarker/core/RegexpHelper;->checkOnlyHasNonRegexpFlags(Ljava/lang/String;JZ)V

    .line 242
    sget-wide v2, Lfreemarker/core/RegexpHelper;->RE_FLAG_CASE_INSENSITIVE:J

    and-long/2addr v2, v6

    cmp-long p1, v2, v4

    if-nez p1, :cond_42

    .line 243
    iget-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    goto :goto_50

    .line 245
    :cond_42
    iget-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->s:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    :goto_50
    if-ltz p1, :cond_6f

    .line 248
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr p1, v1

    goto :goto_6f

    :cond_58
    long-to-int p1, v6

    .line 251
    invoke-static {v1, p1}, Lfreemarker/core/RegexpHelper;->getPattern(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p1

    .line 252
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->s:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 254
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p1

    goto :goto_6f

    :cond_6e
    move p1, v0

    :cond_6f
    :goto_6f
    if-ne p1, v0, :cond_74

    .line 259
    sget-object p1, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    goto :goto_80

    :cond_74
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$keep_afterBI$KeepAfterMethod;->s:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    move-object p1, v0

    :goto_80
    return-object p1
.end method
