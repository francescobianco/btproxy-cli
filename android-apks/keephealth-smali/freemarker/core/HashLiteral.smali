.class final Lfreemarker/core/HashLiteral;
.super Lfreemarker/core/Expression;
.source "HashLiteral.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/HashLiteral$SequenceHash;
    }
.end annotation


# instance fields
.field private final keys:Ljava/util/ArrayList;

.field private final size:I

.field private final values:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    .line 41
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 42
    iput-object p1, p0, Lfreemarker/core/HashLiteral;->keys:Ljava/util/ArrayList;

    .line 43
    iput-object p2, p0, Lfreemarker/core/HashLiteral;->values:Ljava/util/ArrayList;

    .line 44
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lfreemarker/core/HashLiteral;->size:I

    .line 45
    invoke-virtual {p1}, Ljava/util/ArrayList;->trimToSize()V

    .line 46
    invoke-virtual {p2}, Ljava/util/ArrayList;->trimToSize()V

    return-void
.end method

.method static synthetic access$000(Lfreemarker/core/HashLiteral;)I
    .registers 1

    .line 36
    iget p0, p0, Lfreemarker/core/HashLiteral;->size:I

    return p0
.end method

.method static synthetic access$100(Lfreemarker/core/HashLiteral;)Ljava/util/ArrayList;
    .registers 1

    .line 36
    iget-object p0, p0, Lfreemarker/core/HashLiteral;->keys:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lfreemarker/core/HashLiteral;)Ljava/util/ArrayList;
    .registers 1

    .line 36
    iget-object p0, p0, Lfreemarker/core/HashLiteral;->values:Ljava/util/ArrayList;

    return-object p0
.end method

.method private checkIndex(I)V
    .registers 3

    .line 230
    iget v0, p0, Lfreemarker/core/HashLiteral;->size:I

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_7

    return-void

    .line 231
    :cond_7
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 51
    new-instance v0, Lfreemarker/core/HashLiteral$SequenceHash;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/HashLiteral$SequenceHash;-><init>(Lfreemarker/core/HashLiteral;Lfreemarker/core/Environment;)V

    return-object v0
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 8

    .line 95
    iget-object v0, p0, Lfreemarker/core/HashLiteral;->keys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 96
    invoke-virtual {v0}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 97
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/Expression;

    invoke-virtual {v2, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_c

    .line 100
    :cond_20
    iget-object v1, p0, Lfreemarker/core/HashLiteral;->values:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 101
    invoke-virtual {v1}, Ljava/util/ArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    :goto_2c
    invoke-interface {v2}, Ljava/util/ListIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 102
    invoke-interface {v2}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/Expression;

    invoke-virtual {v3, p1, p2, p3}, Lfreemarker/core/Expression;->deepCloneWithIdentifierReplaced(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_2c

    .line 105
    :cond_40
    new-instance p1, Lfreemarker/core/HashLiteral;

    invoke-direct {p1, v0, v1}, Lfreemarker/core/HashLiteral;-><init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    return-object p1
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 5

    .line 56
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 57
    :goto_8
    iget v2, p0, Lfreemarker/core/HashLiteral;->size:I

    if-ge v1, v2, :cond_3d

    .line 58
    iget-object v2, p0, Lfreemarker/core/HashLiteral;->keys:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/Expression;

    .line 59
    iget-object v3, p0, Lfreemarker/core/HashLiteral;->values:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/Expression;

    .line 60
    invoke-virtual {v2}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {v3}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    iget v2, p0, Lfreemarker/core/HashLiteral;->size:I

    add-int/lit8 v2, v2, -0x1

    if-eq v1, v2, :cond_3a

    .line 64
    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3a
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 67
    :cond_3d
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 73
    const-string v0, "{...}"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    .line 214
    iget v0, p0, Lfreemarker/core/HashLiteral;->size:I

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 225
    invoke-direct {p0, p1}, Lfreemarker/core/HashLiteral;->checkIndex(I)V

    .line 226
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_a

    sget-object p1, Lfreemarker/core/ParameterRole;->ITEM_KEY:Lfreemarker/core/ParameterRole;

    goto :goto_c

    :cond_a
    sget-object p1, Lfreemarker/core/ParameterRole;->ITEM_VALUE:Lfreemarker/core/ParameterRole;

    :goto_c
    return-object p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 3

    .line 219
    invoke-direct {p0, p1}, Lfreemarker/core/HashLiteral;->checkIndex(I)V

    .line 220
    rem-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_a

    iget-object v0, p0, Lfreemarker/core/HashLiteral;->keys:Ljava/util/ArrayList;

    goto :goto_c

    :cond_a
    iget-object v0, p0, Lfreemarker/core/HashLiteral;->values:Ljava/util/ArrayList;

    :goto_c
    div-int/lit8 p1, p1, 0x2

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method isLiteral()Z
    .registers 6

    .line 78
    iget-object v0, p0, Lfreemarker/core/HashLiteral;->constantValue:Lfreemarker/template/TemplateModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x0

    move v2, v0

    .line 81
    :goto_8
    iget v3, p0, Lfreemarker/core/HashLiteral;->size:I

    if-ge v2, v3, :cond_2d

    .line 82
    iget-object v3, p0, Lfreemarker/core/HashLiteral;->keys:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/Expression;

    .line 83
    iget-object v4, p0, Lfreemarker/core/HashLiteral;->values:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfreemarker/core/Expression;

    .line 84
    invoke-virtual {v3}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v3

    if-eqz v3, :cond_2c

    invoke-virtual {v4}, Lfreemarker/core/Expression;->isLiteral()Z

    move-result v3

    if-nez v3, :cond_29

    goto :goto_2c

    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_2c
    :goto_2c
    return v0

    :cond_2d
    return v1
.end method
