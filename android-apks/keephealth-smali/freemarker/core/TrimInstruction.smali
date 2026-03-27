.class final Lfreemarker/core/TrimInstruction;
.super Lfreemarker/core/TemplateElement;
.source "TrimInstruction.java"


# static fields
.field static final TYPE_LT:I = 0x1

.field static final TYPE_NT:I = 0x3

.field static final TYPE_RT:I = 0x2

.field static final TYPE_T:I


# instance fields
.field final left:Z

.field final right:Z


# direct methods
.method constructor <init>(ZZ)V
    .registers 3

    .line 35
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 36
    iput-boolean p1, p0, Lfreemarker/core/TrimInstruction;->left:Z

    .line 37
    iput-boolean p2, p0, Lfreemarker/core/TrimInstruction;->right:Z

    return-void
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 2

    const/4 p1, 0x0

    return-object p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 50
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/TrimInstruction;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1a

    .line 51
    const-string p1, "/>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    :cond_1a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 3

    .line 57
    iget-boolean v0, p0, Lfreemarker/core/TrimInstruction;->left:Z

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Lfreemarker/core/TrimInstruction;->right:Z

    if-eqz v1, :cond_b

    .line 58
    const-string v0, "#t"

    return-object v0

    :cond_b
    if-eqz v0, :cond_10

    .line 60
    const-string v0, "#lt"

    return-object v0

    .line 61
    :cond_10
    iget-boolean v0, p0, Lfreemarker/core/TrimInstruction;->right:Z

    if-eqz v0, :cond_17

    .line 62
    const-string v0, "#rt"

    return-object v0

    .line 64
    :cond_17
    const-string v0, "#nt"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    if-nez p1, :cond_5

    .line 97
    sget-object p1, Lfreemarker/core/ParameterRole;->AST_NODE_SUBTYPE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 96
    :cond_5
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-nez p1, :cond_1c

    .line 82
    iget-boolean p1, p0, Lfreemarker/core/TrimInstruction;->left:Z

    if-eqz p1, :cond_c

    iget-boolean v0, p0, Lfreemarker/core/TrimInstruction;->right:Z

    if-eqz v0, :cond_c

    const/4 p1, 0x0

    goto :goto_17

    :cond_c
    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_17

    .line 86
    :cond_10
    iget-boolean p1, p0, Lfreemarker/core/TrimInstruction;->right:Z

    if-eqz p1, :cond_16

    const/4 p1, 0x2

    goto :goto_17

    :cond_16
    const/4 p1, 0x3

    .line 91
    :goto_17
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    .line 80
    :cond_1c
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isIgnorable(Z)Z
    .registers 2

    const/4 p1, 0x1

    return p1
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
