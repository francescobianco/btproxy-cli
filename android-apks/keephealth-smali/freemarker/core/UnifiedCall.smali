.class final Lfreemarker/core/UnifiedCall;
.super Lfreemarker/core/TemplateElement;
.source "UnifiedCall.java"

# interfaces
.implements Lfreemarker/core/DirectiveCallPlace;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/UnifiedCall$CustomDataHolder;
    }
.end annotation


# instance fields
.field private bodyParameterNames:Ljava/util/List;

.field private customDataHolder:Lfreemarker/core/UnifiedCall$CustomDataHolder;

.field legacySyntax:Z

.field private nameExp:Lfreemarker/core/Expression;

.field private namedArgs:Ljava/util/Map;

.field private positionalArgs:Ljava/util/List;

.field private volatile transient sortedNamedArgsCache:Ljava/lang/ref/SoftReference;


# direct methods
.method constructor <init>(Lfreemarker/core/Expression;Ljava/util/List;Lfreemarker/core/TemplateElements;Ljava/util/List;)V
    .registers 5

    .line 64
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 65
    iput-object p1, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    .line 66
    iput-object p2, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    .line 67
    invoke-virtual {p0, p3}, Lfreemarker/core/UnifiedCall;->setChildren(Lfreemarker/core/TemplateElements;)V

    .line 68
    iput-object p4, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Expression;Ljava/util/Map;Lfreemarker/core/TemplateElements;Ljava/util/List;)V
    .registers 5

    .line 54
    invoke-direct {p0}, Lfreemarker/core/TemplateElement;-><init>()V

    .line 55
    iput-object p1, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    .line 56
    iput-object p2, p0, Lfreemarker/core/UnifiedCall;->namedArgs:Ljava/util/Map;

    .line 57
    invoke-virtual {p0, p3}, Lfreemarker/core/UnifiedCall;->setChildren(Lfreemarker/core/TemplateElements;)V

    .line 58
    iput-object p4, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    return-void
.end method

.method private createNewCustomData(Ljava/lang/Object;Lfreemarker/template/utility/ObjectFactory;)Lfreemarker/core/UnifiedCall$CustomDataHolder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/CallPlaceCustomDataInitializationException;
        }
    .end annotation

    .line 287
    :try_start_0
    invoke-interface {p2}, Lfreemarker/template/utility/ObjectFactory;->createObject()Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_14

    if-eqz p2, :cond_c

    .line 297
    new-instance v0, Lfreemarker/core/UnifiedCall$CustomDataHolder;

    invoke-direct {v0, p1, p2}, Lfreemarker/core/UnifiedCall$CustomDataHolder;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 295
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ObjectFactory.createObject() has returned null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_14
    move-exception v0

    .line 289
    new-instance v1, Lfreemarker/core/CallPlaceCustomDataInitializationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to initialize custom data for provider identity "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 291
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->tryToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, " via factory "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 292
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->tryToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lfreemarker/core/CallPlaceCustomDataInitializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private getSortedNamedArgs()Ljava/util/List;
    .registers 3

    .line 241
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->sortedNamedArgsCache:Ljava/lang/ref/SoftReference;

    if-eqz v0, :cond_d

    .line 243
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_d

    return-object v0

    .line 247
    :cond_d
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->namedArgs:Ljava/util/Map;

    invoke-static {v0}, Lfreemarker/core/MiscUtil;->sortMapOfExpressions(Ljava/util/Map;)Ljava/util/List;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lfreemarker/core/UnifiedCall;->sortedNamedArgsCache:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method accept(Lfreemarker/core/Environment;)[Lfreemarker/core/TemplateElement;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    invoke-virtual {v0, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v0

    .line 74
    sget-object v1, Lfreemarker/core/Macro;->DO_NOTHING_MACRO:Lfreemarker/core/Macro;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_c

    return-object v2

    .line 75
    :cond_c
    instance-of v1, v0, Lfreemarker/core/Macro;

    if-eqz v1, :cond_45

    .line 76
    move-object v4, v0

    check-cast v4, Lfreemarker/core/Macro;

    .line 77
    invoke-virtual {v4}, Lfreemarker/core/Macro;->isFunction()Z

    move-result v0

    if-eqz v0, :cond_39

    iget-boolean v0, p0, Lfreemarker/core/UnifiedCall;->legacySyntax:Z

    if-eqz v0, :cond_1e

    goto :goto_39

    .line 78
    :cond_1e
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    new-instance v1, Lfreemarker/core/_DelayedJQuote;

    .line 79
    invoke-virtual {v4}, Lfreemarker/core/Macro;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    const-string v2, "<@someDirective someParam=f() />"

    const-string v3, "."

    const-string v4, "Routine "

    const-string v5, " is a function, not a directive. Functions can only be called from expressions, like in ${f()}, ${x + f()} or "

    filled-new-array {v4, v1, v5, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    .line 83
    :cond_39
    :goto_39
    iget-object v5, p0, Lfreemarker/core/UnifiedCall;->namedArgs:Ljava/util/Map;

    iget-object v6, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    iget-object v7, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    move-object v3, p1

    move-object v8, p0

    invoke-virtual/range {v3 .. v8}, Lfreemarker/core/Environment;->invokeMacro(Lfreemarker/core/Macro;Ljava/util/Map;Ljava/util/List;Ljava/util/List;Lfreemarker/core/TemplateObject;)V

    goto :goto_b1

    .line 85
    :cond_45
    instance-of v1, v0, Lfreemarker/template/TemplateDirectiveModel;

    if-nez v1, :cond_5f

    .line 86
    instance-of v3, v0, Lfreemarker/template/TemplateTransformModel;

    if-eqz v3, :cond_4e

    goto :goto_5f

    :cond_4e
    if-nez v0, :cond_57

    .line 106
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    invoke-static {v0, p1}, Lfreemarker/core/InvalidReferenceException;->getInstance(Lfreemarker/core/Expression;Lfreemarker/core/Environment;)Lfreemarker/core/InvalidReferenceException;

    move-result-object p1

    throw p1

    .line 108
    :cond_57
    new-instance v1, Lfreemarker/core/NonUserDefinedDirectiveLikeException;

    iget-object v2, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    invoke-direct {v1, v2, v0, p1}, Lfreemarker/core/NonUserDefinedDirectiveLikeException;-><init>(Lfreemarker/core/Expression;Lfreemarker/template/TemplateModel;Lfreemarker/core/Environment;)V

    throw v1

    .line 88
    :cond_5f
    :goto_5f
    iget-object v3, p0, Lfreemarker/core/UnifiedCall;->namedArgs:Ljava/util/Map;

    if-eqz v3, :cond_98

    invoke-interface {v3}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_98

    .line 89
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 90
    iget-object v4, p0, Lfreemarker/core/UnifiedCall;->namedArgs:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_78
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9a

    .line 91
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 92
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 93
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/core/Expression;

    .line 94
    invoke-virtual {v5, p1}, Lfreemarker/core/Expression;->eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;

    move-result-object v5

    .line 95
    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_78

    .line 98
    :cond_98
    sget-object v3, Lfreemarker/template/EmptyMap;->instance:Lfreemarker/template/EmptyMap;

    :cond_9a
    if-eqz v1, :cond_a8

    .line 101
    invoke-virtual {p0}, Lfreemarker/core/UnifiedCall;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object v1

    check-cast v0, Lfreemarker/template/TemplateDirectiveModel;

    iget-object v4, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    invoke-virtual {p1, v1, v0, v3, v4}, Lfreemarker/core/Environment;->visit([Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateDirectiveModel;Ljava/util/Map;Ljava/util/List;)V

    goto :goto_b1

    .line 103
    :cond_a8
    invoke-virtual {p0}, Lfreemarker/core/UnifiedCall;->getChildBuffer()[Lfreemarker/core/TemplateElement;

    move-result-object v1

    check-cast v0, Lfreemarker/template/TemplateTransformModel;

    invoke-virtual {p1, v1, v0, v3}, Lfreemarker/core/Environment;->visitAndTransform([Lfreemarker/core/TemplateElement;Lfreemarker/template/TemplateTransformModel;Ljava/util/Map;)V

    :goto_b1
    return-object v2
.end method

.method protected dump(Z)Ljava/lang/String;
    .registers 10

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_c

    const/16 v1, 0x3c

    .line 117
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_c
    const/16 v1, 0x40

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 119
    iget-object v1, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    invoke-static {v0, v1}, Lfreemarker/core/_MessageUtil;->appendExpressionAsUntearable(Ljava/lang/StringBuilder;Lfreemarker/core/Expression;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v1

    const/16 v3, 0x29

    const/4 v4, 0x0

    if-ne v1, v3, :cond_26

    goto :goto_27

    :cond_26
    move v2, v4

    .line 121
    :goto_27
    iget-object v1, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    const/16 v3, 0x20

    if-eqz v1, :cond_52

    move v1, v4

    .line 122
    :goto_2e
    iget-object v5, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_84

    .line 123
    iget-object v5, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/core/Expression;

    if-eqz v1, :cond_45

    const/16 v6, 0x2c

    .line 125
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 127
    :cond_45
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 128
    invoke-virtual {v5}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    .line 131
    :cond_52
    invoke-direct {p0}, Lfreemarker/core/UnifiedCall;->getSortedNamedArgs()Ljava/util/List;

    move-result-object v1

    move v5, v4

    .line 132
    :goto_57
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_84

    .line 133
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 134
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lfreemarker/core/Expression;

    .line 135
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 136
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3d

    .line 137
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 138
    invoke-static {v0, v7}, Lfreemarker/core/_MessageUtil;->appendExpressionAsUntearable(Ljava/lang/StringBuilder;Lfreemarker/core/Expression;)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_57

    .line 141
    :cond_84
    iget-object v1, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    if-eqz v1, :cond_b4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b4

    .line 142
    const-string v1, "; "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :goto_93
    iget-object v1, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v4, v1, :cond_b4

    if-eqz v4, :cond_a2

    .line 145
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :cond_a2
    iget-object v1, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lfreemarker/core/_CoreStringUtils;->toFTLTopLevelIdentifierReference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_93

    :cond_b4
    if-eqz p1, :cond_f3

    .line 151
    invoke-virtual {p0}, Lfreemarker/core/UnifiedCall;->getChildCount()I

    move-result p1

    if-nez p1, :cond_c2

    .line 152
    const-string p1, "/>"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f3

    :cond_c2
    const/16 p1, 0x3e

    .line 154
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Lfreemarker/core/UnifiedCall;->getChildrenCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, "</@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v2, :cond_f0

    .line 157
    iget-object v1, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    instance-of v2, v1, Lfreemarker/core/Identifier;

    if-nez v2, :cond_e7

    instance-of v2, v1, Lfreemarker/core/Dot;

    if-eqz v2, :cond_f0

    check-cast v1, Lfreemarker/core/Dot;

    .line 159
    invoke-virtual {v1}, Lfreemarker/core/Dot;->onlyHasIdentifiers()Z

    move-result v1

    if-eqz v1, :cond_f0

    .line 160
    :cond_e7
    iget-object v1, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    invoke-virtual {v1}, Lfreemarker/core/Expression;->getCanonicalForm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    :cond_f0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 165
    :cond_f3
    :goto_f3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 170
    const-string v0, "@"

    return-object v0
.end method

.method public getOrCreateCustomData(Ljava/lang/Object;Lfreemarker/template/utility/ObjectFactory;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/CallPlaceCustomDataInitializationException;
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->customDataHolder:Lfreemarker/core/UnifiedCall$CustomDataHolder;

    if-nez v0, :cond_1a

    .line 260
    monitor-enter p0

    .line 261
    :try_start_5
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->customDataHolder:Lfreemarker/core/UnifiedCall$CustomDataHolder;

    if-eqz v0, :cond_f

    .line 262
    # getter for: Lfreemarker/core/UnifiedCall$CustomDataHolder;->providerIdentity:Ljava/lang/Object;
    invoke-static {v0}, Lfreemarker/core/UnifiedCall$CustomDataHolder;->access$000(Lfreemarker/core/UnifiedCall$CustomDataHolder;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_15

    .line 263
    :cond_f
    invoke-direct {p0, p1, p2}, Lfreemarker/core/UnifiedCall;->createNewCustomData(Ljava/lang/Object;Lfreemarker/template/utility/ObjectFactory;)Lfreemarker/core/UnifiedCall$CustomDataHolder;

    move-result-object v0

    .line 264
    iput-object v0, p0, Lfreemarker/core/UnifiedCall;->customDataHolder:Lfreemarker/core/UnifiedCall$CustomDataHolder;

    .line 266
    :cond_15
    monitor-exit p0

    goto :goto_1a

    :catchall_17
    move-exception p1

    monitor-exit p0
    :try_end_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_17

    throw p1

    .line 269
    :cond_1a
    :goto_1a
    # getter for: Lfreemarker/core/UnifiedCall$CustomDataHolder;->providerIdentity:Ljava/lang/Object;
    invoke-static {v0}, Lfreemarker/core/UnifiedCall$CustomDataHolder;->access$000(Lfreemarker/core/UnifiedCall$CustomDataHolder;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_37

    .line 270
    monitor-enter p0

    .line 271
    :try_start_21
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->customDataHolder:Lfreemarker/core/UnifiedCall$CustomDataHolder;

    if-eqz v0, :cond_2b

    .line 272
    # getter for: Lfreemarker/core/UnifiedCall$CustomDataHolder;->providerIdentity:Ljava/lang/Object;
    invoke-static {v0}, Lfreemarker/core/UnifiedCall$CustomDataHolder;->access$000(Lfreemarker/core/UnifiedCall$CustomDataHolder;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_32

    .line 273
    :cond_2b
    invoke-direct {p0, p1, p2}, Lfreemarker/core/UnifiedCall;->createNewCustomData(Ljava/lang/Object;Lfreemarker/template/utility/ObjectFactory;)Lfreemarker/core/UnifiedCall$CustomDataHolder;

    move-result-object p1

    .line 274
    iput-object p1, p0, Lfreemarker/core/UnifiedCall;->customDataHolder:Lfreemarker/core/UnifiedCall$CustomDataHolder;

    move-object v0, p1

    .line 276
    :cond_32
    monitor-exit p0

    goto :goto_37

    :catchall_34
    move-exception p1

    monitor-exit p0
    :try_end_36
    .catchall {:try_start_21 .. :try_end_36} :catchall_34

    throw p1

    .line 279
    :cond_37
    :goto_37
    # getter for: Lfreemarker/core/UnifiedCall$CustomDataHolder;->customData:Ljava/lang/Object;
    invoke-static {v0}, Lfreemarker/core/UnifiedCall$CustomDataHolder;->access$100(Lfreemarker/core/UnifiedCall$CustomDataHolder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method getParameterCount()I
    .registers 4

    .line 175
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    .line 176
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_b

    :cond_a
    move v0, v1

    :goto_b
    add-int/lit8 v0, v0, 0x1

    iget-object v2, p0, Lfreemarker/core/UnifiedCall;->namedArgs:Ljava/util/Map;

    if-eqz v2, :cond_18

    .line 177
    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_19

    :cond_18
    move v2, v1

    :goto_19
    add-int/2addr v0, v2

    iget-object v2, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    if-eqz v2, :cond_22

    .line 178
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_22
    add-int/2addr v0, v1

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 6

    if-nez p1, :cond_5

    .line 212
    sget-object p1, Lfreemarker/core/ParameterRole;->CALLEE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 215
    :cond_5
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    add-int/lit8 v2, p1, -0x1

    if-ge v2, v0, :cond_17

    .line 217
    sget-object p1, Lfreemarker/core/ParameterRole;->ARGUMENT_VALUE:Lfreemarker/core/ParameterRole;

    return-object p1

    :cond_17
    add-int/lit8 v0, v0, 0x1

    .line 220
    iget-object v2, p0, Lfreemarker/core/UnifiedCall;->namedArgs:Ljava/util/Map;

    if-eqz v2, :cond_22

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_23

    :cond_22
    move v2, v1

    :goto_23
    sub-int v3, p1, v0

    mul-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_33

    .line 222
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_30

    sget-object p1, Lfreemarker/core/ParameterRole;->ARGUMENT_NAME:Lfreemarker/core/ParameterRole;

    goto :goto_32

    :cond_30
    sget-object p1, Lfreemarker/core/ParameterRole;->ARGUMENT_VALUE:Lfreemarker/core/ParameterRole;

    :goto_32
    return-object p1

    :cond_33
    add-int/2addr v0, v2

    .line 225
    iget-object v2, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    if-eqz v2, :cond_3c

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_3c
    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_42

    .line 227
    sget-object p1, Lfreemarker/core/ParameterRole;->TARGET_LOOP_VARIABLE:Lfreemarker/core/ParameterRole;

    return-object p1

    .line 229
    :cond_42
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 6

    if-nez p1, :cond_5

    .line 184
    iget-object p1, p0, Lfreemarker/core/UnifiedCall;->nameExp:Lfreemarker/core/Expression;

    return-object p1

    .line 187
    :cond_5
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_10

    :cond_f
    move v0, v1

    :goto_10
    add-int/lit8 v2, p1, -0x1

    if-ge v2, v0, :cond_1b

    .line 189
    iget-object p1, p0, Lfreemarker/core/UnifiedCall;->positionalArgs:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    .line 192
    iget-object v2, p0, Lfreemarker/core/UnifiedCall;->namedArgs:Ljava/util/Map;

    if-eqz v2, :cond_26

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    goto :goto_27

    :cond_26
    move v2, v1

    :goto_27
    sub-int v3, p1, v0

    mul-int/lit8 v2, v2, 0x2

    if-ge v3, v2, :cond_47

    .line 194
    invoke-direct {p0}, Lfreemarker/core/UnifiedCall;->getSortedNamedArgs()Ljava/util/List;

    move-result-object p1

    div-int/lit8 v0, v3, 0x2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 195
    rem-int/lit8 v3, v3, 0x2

    if-nez v3, :cond_42

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    goto :goto_46

    :cond_42
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    :goto_46
    return-object p1

    :cond_47
    add-int/2addr v0, v2

    .line 198
    iget-object v2, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    if-eqz v2, :cond_50

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    :cond_50
    sub-int/2addr p1, v0

    if-ge p1, v1, :cond_5a

    .line 200
    iget-object v0, p0, Lfreemarker/core/UnifiedCall;->bodyParameterNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 202
    :cond_5a
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isNestedBlockRepeater()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isNestedOutputCacheable()Z
    .registers 2

    .line 302
    invoke-virtual {p0}, Lfreemarker/core/UnifiedCall;->isChildrenOutputCacheable()Z

    move-result v0

    return v0
.end method

.method isShownInStackTrace()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
