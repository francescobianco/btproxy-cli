.class Lfreemarker/core/EscapeBlock;
.super Lfreemarker/core/TemplateElement;
.source "EscapeBlock.java"


# instance fields
.field private escapedExpr:Lfreemarker/core/Expression;

.field private final expr:Lfreemarker/core/Expression;

.field private final variable:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression;)V
    .registers 4

    .line 37
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 38
    iput-object p1, p0, Lfreemarker/core/EscapeBlock;->variable:Ljava/lang/String;

    .line 39
    iput-object p2, p0, Lfreemarker/core/EscapeBlock;->expr:Lfreemarker/core/Expression;

    .line 40
    iput-object p3, p0, Lfreemarker/core/EscapeBlock;->escapedExpr:Lfreemarker/core/Expression;

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lfreemarker/core/EscapeBlock;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object p1

    return-object p1
.end method

.method doEscape(Lfreemarker/core/Expression;)Lfreemarker/core/Expression;
    .registers 5

    .line 55
    iget-object v0, p0, Lfreemarker/core/EscapeBlock;->escapedExpr:Lfreemarker/core/Expression;

    iget-object v1, p0, Lfreemarker/core/EscapeBlock;->variable:Ljava/lang/String;

    new-instance v2, Lfreemarker/core/Expression$ReplacemenetState;

    invoke-direct {v2}, Lfreemarker/core/Expression$ReplacemenetState;-><init>()V

    invoke-virtual {v0, v1, p1, v2}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 5

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/EscapeBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x20

    .line 63
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/EscapeBlock;->variable:Ljava/lang/String;

    invoke-static {v2}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " as "

    .line 64
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/EscapeBlock;->expr:Lfreemarker/core/Expression;

    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_52

    const/16 p1, 0x3e

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {p0}, Lfreemarker/core/EscapeBlock;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v1, "</"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lfreemarker/core/EscapeBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 70
    :cond_52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 75
    const-string v0, "#escape"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 96
    sget-object p1, Lfreemarker/core/ParameterRole;->EXPRESSION_TEMPLATE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 97
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 95
    :cond_e
    sget-object p1, Lfreemarker/core/ParameterRole;->PLACEHOLDER_VARIABLE:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_e

    const/4 v0, 0x1

    if-ne p1, v0, :cond_8

    .line 87
    iget-object p1, p0, Lfreemarker/core/EscapeBlock;->expr:Lfreemarker/core/Expression;

    return-object p1

    .line 88
    :cond_8
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 86
    :cond_e
    iget-object p1, p0, Lfreemarker/core/EscapeBlock;->variable:Ljava/lang/String;

    return-object p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isOutputCacheable()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method setContent(Lfreemarker/core/TemplateElements;)V
    .registers 2

    .line 44
    invoke-virtual {p0, p1}, Lfreemarker/core/EscapeBlock;->setChildren(Lfreemarker/core/TemplateElements;)V

    const/4 p1, 0x0

    .line 46
    iput-object p1, p0, Lfreemarker/core/EscapeBlock;->escapedExpr:Lfreemarker/core/Expression;

    return-void
.end method
