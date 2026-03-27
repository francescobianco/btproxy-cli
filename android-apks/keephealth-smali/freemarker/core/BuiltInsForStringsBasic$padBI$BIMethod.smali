.class Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;
.super Ljava/lang/Object;
.source "BuiltInsForStringsBasic.java"

# interfaces
.implements Lfreemarker/template/TemplateMethodModelEx;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForStringsBasic$padBI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BIMethod"
.end annotation


# instance fields
.field private final s:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;


# direct methods
.method private constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$padBI;Ljava/lang/String;)V
    .registers 3

    .line 436
    iput-object p1, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p2, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->s:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForStringsBasic$padBI;Ljava/lang/String;Lfreemarker/core/BuiltInsForStringsBasic$1;)V
    .registers 4

    .line 432
    invoke-direct {p0, p1, p2}, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;-><init>(Lfreemarker/core/BuiltInsForStringsBasic$padBI;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public exec(Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 441
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 442
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lfreemarker/core/BuiltInsForStringsBasic$padBI;->checkMethodArgCount(III)V

    .line 444
    iget-object v1, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lfreemarker/core/BuiltInsForStringsBasic$padBI;->getNumberMethodArg(Ljava/util/List;I)Ljava/lang/Number;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le v0, v3, :cond_62

    .line 447
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;

    invoke-virtual {v0, p1, v3}, Lfreemarker/core/BuiltInsForStringsBasic$padBI;->getStringMethodArg(Ljava/util/List;I)Ljava/lang/String;

    move-result-object p1

    .line 449
    :try_start_1e
    new-instance v0, Lfreemarker/template/SimpleScalar;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;

    .line 450
    # getter for: Lfreemarker/core/BuiltInsForStringsBasic$padBI;->leftPadder:Z
    invoke-static {v2}, Lfreemarker/core/BuiltInsForStringsBasic$padBI;->access$600(Lfreemarker/core/BuiltInsForStringsBasic$padBI;)Z

    move-result v2

    if-eqz v2, :cond_2f

    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->s:Ljava/lang/String;

    .line 451
    invoke-static {v2, v1, p1}, Lfreemarker/template/utility/StringUtil;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_35

    :cond_2f
    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->s:Ljava/lang/String;

    .line 452
    invoke-static {v2, v1, p1}, Lfreemarker/template/utility/StringUtil;->rightPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_35
    invoke-direct {v0, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1e .. :try_end_38} :catch_39

    return-object v0

    :catch_39
    move-exception v0

    .line 454
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const-string v1, "?"

    if-nez p1, :cond_52

    .line 455
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;

    iget-object v0, v0, Lfreemarker/core/BuiltInsForStringsBasic$padBI;->key:Ljava/lang/String;

    const-string v2, "(...) argument #2 can\'t be a 0-length string."

    filled-new-array {v1, v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw p1

    .line 458
    :cond_52
    new-instance p1, Lfreemarker/core/_TemplateModelException;

    iget-object v2, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;

    iget-object v2, v2, Lfreemarker/core/BuiltInsForStringsBasic$padBI;->key:Ljava/lang/String;

    const-string v3, "(...) failed: "

    filled-new-array {v1, v2, v3, v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lfreemarker/core/_TemplateModelException;-><init>(Ljava/lang/Throwable;[Ljava/lang/Object;)V

    throw p1

    .line 463
    :cond_62
    new-instance p1, Lfreemarker/template/SimpleScalar;

    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->this$0:Lfreemarker/core/BuiltInsForStringsBasic$padBI;

    # getter for: Lfreemarker/core/BuiltInsForStringsBasic$padBI;->leftPadder:Z
    invoke-static {v0}, Lfreemarker/core/BuiltInsForStringsBasic$padBI;->access$600(Lfreemarker/core/BuiltInsForStringsBasic$padBI;)Z

    move-result v0

    if-eqz v0, :cond_73

    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lfreemarker/template/utility/StringUtil;->leftPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_79

    :cond_73
    iget-object v0, p0, Lfreemarker/core/BuiltInsForStringsBasic$padBI$BIMethod;->s:Ljava/lang/String;

    invoke-static {v0, v1}, Lfreemarker/template/utility/StringUtil;->rightPad(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    :goto_79
    invoke-direct {p1, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1
.end method
