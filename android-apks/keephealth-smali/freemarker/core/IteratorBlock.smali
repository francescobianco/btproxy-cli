.class final Lfreemarker/core/IteratorBlock;
.super Lfreemarker/core/TemplateElement;
.source "IteratorBlock.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/IteratorBlock$IterationContext;
    }
.end annotation


# instance fields
.field private final forEach:Z

.field private final hashListing:Z

.field private final listedExp:Lfreemarker/core/Expression;

.field private final loopVar1Name:Ljava/lang/String;

.field private final loopVar2Name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Ljava/lang/String;Ljava/lang/String;Lfreemarker/core/TemplateElements;ZZ)V
    .registers 7

    .line 77
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 78
    iput-object p1, p0, Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;

    .line 79
    iput-object p2, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    .line 80
    iput-object p3, p0, Lfreemarker/core/IteratorBlock;->loopVar2Name:Ljava/lang/String;

    .line 81
    invoke-virtual {p0, p4}, Lfreemarker/core/IteratorBlock;->setChildren(Lfreemarker/core/TemplateElements;)V

    .line 82
    iput-boolean p5, p0, Lfreemarker/core/IteratorBlock;->hashListing:Z

    .line 83
    iput-boolean p6, p0, Lfreemarker/core/IteratorBlock;->forEach:Z

    .line 85
    invoke-virtual {p1}, Lfreemarker/core/Expression;->enableLazilyGeneratedResult()V

    return-void
.end method

.method static synthetic access$000(Lfreemarker/core/IteratorBlock;)Z
    .registers 1

    .line 44
    iget-boolean p0, p0, Lfreemarker/core/IteratorBlock;->hashListing:Z

    return p0
.end method

.method static synthetic access$100(Lfreemarker/core/IteratorBlock;)Lfreemarker/core/Expression;
    .registers 1

    .line 44
    iget-object p0, p0, Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;

    return-object p0
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

    .line 94
    invoke-virtual {p0, p1}, Lfreemarker/core/IteratorBlock;->acceptWithResult(Lfreemarker/core/Environment;)Z

    const/4 p1, 0x0

    return-object p1
.end method

.method acceptWithResult(Lfreemarker/core/Environment;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    if-nez v0, :cond_17

    .line 101
    invoke-virtual {p1}, Lfreemarker/core/Environment;->isClassicCompatible()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 102
    sget-object v0, Lfreemarker/template/utility/Constants;->EMPTY_SEQUENCE:Lfreemarker/template/TemplateSequenceModel;

    goto :goto_17

    .line 104
    :cond_11
    iget-object v1, p0, Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p1}, Lfreemarker/core/Expression;->assertNonNull(Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    .line 108
    :cond_17
    :goto_17
    new-instance v1, Lfreemarker/core/IteratorBlock$IterationContext;

    iget-object v2, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/IteratorBlock;->loopVar2Name:Ljava/lang/String;

    invoke-direct {v1, p0, v0, v2, v3}, Lfreemarker/core/IteratorBlock$IterationContext;-><init>(Lfreemarker/core/IteratorBlock;Lfreemarker/template/TemplateModel;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->visitIteratorBlock(Lfreemarker/core/IteratorBlock$IterationContext;)Z

    move-result p1

    return p1
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 4

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 115
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/IteratorBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 117
    iget-boolean v1, p0, Lfreemarker/core/IteratorBlock;->forEach:Z

    if-eqz v1, :cond_34

    .line 118
    iget-object v1, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    invoke-static {v1}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    const-string v1, " in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    iget-object v1, p0, Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_61

    .line 122
    :cond_34
    iget-object v1, p0, Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget-object v1, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 124
    const-string v1, " as "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    iget-object v1, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    invoke-static {v1}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lfreemarker/core/IteratorBlock;->loopVar2Name:Ljava/lang/String;

    if-eqz v1, :cond_61

    .line 127
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lfreemarker/core/IteratorBlock;->loopVar2Name:Ljava/lang/String;

    invoke-static {v1}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_61
    :goto_61
    if-eqz p1, :cond_88

    .line 133
    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Lfreemarker/core/IteratorBlock;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    invoke-virtual {p0}, Lfreemarker/core/IteratorBlock;->getParentElement()Lfreemarker/core/TemplateElement;

    move-result-object p1

    instance-of p1, p1, Lfreemarker/core/ListElseContainer;

    if-nez p1, :cond_88

    .line 136
    const-string p1, "</"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {p0}, Lfreemarker/core/IteratorBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3e

    .line 138
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 141
    :cond_88
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 181
    iget-boolean v0, p0, Lfreemarker/core/IteratorBlock;->forEach:Z

    if-eqz v0, :cond_7

    const-string v0, "#foreach"

    goto :goto_9

    :cond_7
    const-string v0, "#list"

    :goto_9
    return-object v0
.end method

.method getParameterCount()I
    .registers 5

    .line 146
    iget-object v0, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    add-int/2addr v0, v2

    iget-object v3, p0, Lfreemarker/core/IteratorBlock;->loopVar2Name:Ljava/lang/String;

    if-eqz v3, :cond_f

    move v1, v2

    :cond_f
    add-int/2addr v0, v1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-eqz p1, :cond_28

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1b

    const/4 v0, 0x2

    if-ne p1, v0, :cond_15

    .line 173
    iget-object p1, p0, Lfreemarker/core/IteratorBlock;->loopVar2Name:Ljava/lang/String;

    if-eqz p1, :cond_f

    .line 174
    sget-object p1, Lfreemarker/core/ParameterRole;->TARGET_LOOP_VARIABLE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 173
    :cond_f
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 175
    :cond_15
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 170
    :cond_1b
    iget-object p1, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    if-eqz p1, :cond_22

    .line 171
    sget-object p1, Lfreemarker/core/ParameterRole;->TARGET_LOOP_VARIABLE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 170
    :cond_22
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 168
    :cond_28
    sget-object p1, Lfreemarker/core/ParameterRole;->LIST_SOURCE:Lfreemarker/core/ParameterRole;

    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    if-eqz p1, :cond_24

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    .line 158
    iget-object p1, p0, Lfreemarker/core/IteratorBlock;->loopVar2Name:Ljava/lang/String;

    if-eqz p1, :cond_d

    return-object p1

    :cond_d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 160
    :cond_13
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 155
    :cond_19
    iget-object p1, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    if-eqz p1, :cond_1e

    return-object p1

    :cond_1e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 153
    :cond_24
    iget-object p1, p0, Lfreemarker/core/IteratorBlock;->listedExp:Lfreemarker/core/Expression;

    return-object p1
.end method

.method isHashListing()Z
    .registers 2

    .line 89
    iget-boolean v0, p0, Lfreemarker/core/IteratorBlock;->hashListing:Z

    return v0
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    .line 186
    iget-object v0, p0, Lfreemarker/core/IteratorBlock;->loopVar1Name:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method
