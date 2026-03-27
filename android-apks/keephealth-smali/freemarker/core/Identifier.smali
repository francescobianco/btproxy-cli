.class final Lfreemarker/core/Identifier;
.super Lfreemarker/core/Expression;
.source "Identifier.java"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 32
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 33
    iput-object p1, p0, Lfreemarker/core/Identifier;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 39
    :try_start_0
    iget-object v0, p0, Lfreemarker/core/Identifier;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->getVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_6} :catch_7

    return-object p1

    :catch_7
    move-exception v0

    if-nez p1, :cond_18

    .line 42
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "Variables are not available (certainly you are in a parse-time executed directive). The name of the variable you tried to read: "

    iget-object v1, p0, Lfreemarker/core/Identifier;->name:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/_MiscTemplateException;-><init>([Ljava/lang/Object;)V

    throw p1

    .line 46
    :cond_18
    throw v0
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 5

    .line 91
    iget-object v0, p0, Lfreemarker/core/Identifier;->name:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    .line 92
    iget-boolean p1, p3, Lfreemarker/core/Expression$ReplacemenetState;->replacementAlreadyInUse:Z

    if-eqz p1, :cond_15

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p2, p1, p1, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object p1

    .line 94
    invoke-virtual {p1, p2}, Lfreemarker/core/Expression;->copyLocationFrom(Lfreemarker/core/TemplateObject;)Lfreemarker/core/TemplateObject;

    return-object p1

    :cond_15
    const/4 p1, 0x1

    .line 97
    iput-boolean p1, p3, Lfreemarker/core/Expression$ReplacemenetState;->replacementAlreadyInUse:Z

    return-object p2

    .line 101
    :cond_19
    new-instance p1, Lfreemarker/core/Identifier;

    iget-object p2, p0, Lfreemarker/core/Identifier;->name:Ljava/lang/String;

    invoke-direct {p1, p2}, Lfreemarker/core/Identifier;-><init>(Ljava/lang/String;)V

    return-object p1
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Lfreemarker/core/Identifier;->name:Ljava/lang/String;

    invoke-static {v0}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 60
    iget-object v0, p0, Lfreemarker/core/Identifier;->name:Ljava/lang/String;

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 65
    invoke-virtual {p0}, Lfreemarker/core/Identifier;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 85
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    .line 80
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isLiteral()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
