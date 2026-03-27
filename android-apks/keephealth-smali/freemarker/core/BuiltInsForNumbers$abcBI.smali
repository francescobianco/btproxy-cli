.class abstract Lfreemarker/core/BuiltInsForNumbers$abcBI;
.super Lfreemarker/core/BuiltInForNumber;
.source "BuiltInsForNumbers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/BuiltInsForNumbers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "abcBI"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Lfreemarker/core/BuiltInForNumber;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/BuiltInsForNumbers$1;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lfreemarker/core/BuiltInsForNumbers$abcBI;-><init>()V

    return-void
.end method


# virtual methods
.method calculateResult(Ljava/lang/Number;Lfreemarker/template/TemplateModel;)Lfreemarker/template/TemplateModel;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 49
    :try_start_0
    invoke-static {p1}, Lfreemarker/template/utility/NumberUtil;->toIntExact(Ljava/lang/Number;)I

    move-result p1
    :try_end_4
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_4} :catch_28

    if-lez p1, :cond_10

    .line 59
    new-instance p2, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p0, p1}, Lfreemarker/core/BuiltInsForNumbers$abcBI;->toABC(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 56
    :cond_10
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/BuiltInsForNumbers$abcBI;->target:Lfreemarker/core/Expression;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForNumbers$abcBI;->key:Ljava/lang/String;

    .line 57
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v2, "."

    const-string v3, "The left side operand of to ?"

    const-string v4, " must be at least 1, but was "

    filled-new-array {v3, v1, v4, p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw p2

    :catch_28
    move-exception p1

    .line 51
    new-instance p2, Lfreemarker/core/_TemplateModelException;

    iget-object v0, p0, Lfreemarker/core/BuiltInsForNumbers$abcBI;->target:Lfreemarker/core/Expression;

    iget-object v1, p0, Lfreemarker/core/BuiltInsForNumbers$abcBI;->key:Ljava/lang/String;

    const-string v2, ": "

    .line 52
    invoke-virtual {p1}, Ljava/lang/ArithmeticException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v3, "The left side operand value isn\'t compatible with ?"

    filled-new-array {v3, v1, v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lfreemarker/core/_TemplateModelException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw p2
.end method

.method protected abstract toABC(I)Ljava/lang/String;
.end method
