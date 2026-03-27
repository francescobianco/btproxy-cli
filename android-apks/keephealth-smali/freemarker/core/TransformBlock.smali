.class final Lfreemarker/core/TransformBlock;
.super Lfreemarker/core/TemplateElement;
.source "TransformBlock.java"


# instance fields
.field namedArgs:Ljava/util/Map;

.field private volatile transient sortedNamedArgsCache:Ljava/lang/ref/SoftReference;

.field private transformExpression:Lfreemarker/core/Expression;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Ljava/util/Map;Lfreemarker/core/TemplateElements;)V
    .registers 4

    .line 51
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 52
    iput-object p1, p0, Lfreemarker/core/TransformBlock;->transformExpression:Lfreemarker/core/Expression;

    .line 53
    iput-object p2, p0, Lfreemarker/core/TransformBlock;->namedArgs:Ljava/util/Map;

    .line 54
    invoke-virtual {p0, p3}, Lfreemarker/core/TransformBlock;->setChildren(Lfreemarker/core/TemplateElements;)V

    return-void
.end method

.method private getSortedNamedArgs()Ljava/util/List;
    .registers 3

    .line 147
    iget-object v0, p0, Lfreemarker/core/TransformBlock;->sortedNamedArgsCache:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_d

    .line 149
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_d

    return-object v0

    .line 153
    :cond_d
    iget-object v0, p0, Lfreemarker/core/TransformBlock;->namedArgs:Ljava/util/Map;

    invoke-static {v0}, Lfreemarker/core/MiscUtil;->sortMapOfExpressions(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 154
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lfreemarker/core/TransformBlock;->sortedNamedArgsCache:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lfreemarker/core/TransformBlock;->transformExpression:Lfreemarker/core/Expression;

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->getTransform(Lfreemarker/core/Expression;)Lfreemarker/template/TemplateTransformModel;

    move-result-object v0

    if-eqz v0, :cond_4c

    .line 63
    iget-object v1, p0, Lfreemarker/core/TransformBlock;->namedArgs:Ljava/util/Map;

    if-eqz v1, :cond_41

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_41

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 65
    iget-object v2, p0, Lfreemarker/core/TransformBlock;->namedArgs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_21
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_43

    .line 66
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 67
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 68
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/Expression;

    .line 69
    invoke-virtual {v3, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 70
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    .line 73
    :cond_41
    sget-object v1, Lfreemarker/template/EmptyMap;->instance:Lfreemarker/template/EmptyMap;

    .line 75
    :cond_43
    invoke-virtual {p0}, Lfreemarker/core/TransformBlock;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object v2

    invoke-virtual {p1, v2, v0, v1}, Lfreemarker/core/Environment;->visitAndTransform([Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V

    const/4 p1, 0x0

    return-object p1

    .line 77
    :cond_4c
    iget-object v0, p0, Lfreemarker/core/TransformBlock;->transformExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    .line 78
    new-instance v0, Lfreemarker/core/UnexpectedTypeException;

    iget-object v2, p0, Lfreemarker/core/TransformBlock;->transformExpression:Lfreemarker/core/Expression;

    const/4 v1, 0x1

    new-array v5, v1, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v4, Lfreemarker/template/TemplateTransformModel;

    aput-object v4, v5, v1

    const-string v4, "transform"

    move-object v1, v0

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lfreemarker/core/UnexpectedTypeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Ljava/lang/String;[Ljava/lang/Class;Lfreemarker/core/Environment;)V

    throw v0
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 7

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    :cond_c
    invoke-virtual {p0}, Lfreemarker/core/TransformBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 90
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 91
    iget-object v2, p0, Lfreemarker/core/TransformBlock;->transformExpression:Lfreemarker/core/Expression;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    iget-object v2, p0, Lfreemarker/core/TransformBlock;->namedArgs:Ljava/util/Map;

    if-eqz v2, :cond_4e

    .line 93
    invoke-direct {p0}, Lfreemarker/core/TransformBlock;->getSortedNamedArgs()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e

    .line 94
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 96
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3d

    .line 97
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lfreemarker/core/Expression;

    invoke-static {v0, v3}, Lfreemarker/core/_MessageUtil;->appendExpressionAsUntearable(Ljava/lang/StringBuilder;Lfreemarker/core/Expression;)Ljava/lang/StringBuilder;

    goto :goto_29

    :cond_4e
    if-eqz p1, :cond_6f

    .line 102
    const-string p1, ">"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p0}, Lfreemarker/core/TransformBlock;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    const-string p1, "</"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lfreemarker/core/TransformBlock;->getNodeTypeSymbol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v1, 0x3e

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 106
    :cond_6f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 111
    const-string v0, "#transform"

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    .line 116
    iget-object v0, p0, Lfreemarker/core/TransformBlock;->namedArgs:Ljava/util/Map;

    if-eqz v0, :cond_b

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 3

    if-nez p1, :cond_5

    .line 134
    sget-object p1, Lfreemarker/core/ParameterRole;->CALLEE:Lfreemarker/core/ParameterRole;

    return-object p1

    :cond_5
    add-int/lit8 p1, p1, -0x1

    .line 135
    iget-object v0, p0, Lfreemarker/core/TransformBlock;->namedArgs:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_1b

    .line 136
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_18

    sget-object p1, Lfreemarker/core/ParameterRole;->ARGUMENT_NAME:Lfreemarker/core/ParameterRole;

    goto :goto_1a

    :cond_18
    sget-object p1, Lfreemarker/core/ParameterRole;->ARGUMENT_VALUE:Lfreemarker/core/ParameterRole;

    :goto_1a
    return-object p1

    .line 138
    :cond_1b
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 4

    if-nez p1, :cond_5

    .line 122
    iget-object p1, p0, Lfreemarker/core/TransformBlock;->transformExpression:Lfreemarker/core/Expression;

    return-object p1

    .line 123
    :cond_5
    iget-object v0, p0, Lfreemarker/core/TransformBlock;->namedArgs:Ljava/util/Map;

    if-eqz v0, :cond_2d

    add-int/lit8 p1, p1, -0x1

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    if-ge p1, v0, :cond_2d

    .line 124
    invoke-direct {p0}, Lfreemarker/core/TransformBlock;->getSortedNamedArgs()Ljava/util/List;

    move-result-object v0

    div-int/lit8 v1, p1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 125
    rem-int/lit8 p1, p1, 0x2

    if-nez p1, :cond_28

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2c

    :cond_28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_2c
    return-object p1

    .line 127
    :cond_2d
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method isShownInStackTrace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
