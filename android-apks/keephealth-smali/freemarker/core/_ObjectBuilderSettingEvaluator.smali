.class public Lfreemarker/core/_ObjectBuilderSettingEvaluator;
.super Ljava/lang/Object;
.source "_ObjectBuilderSettingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;,
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;,
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;,
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$KeyValuePair;,
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$MapExpression;,
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$ListExpression;,
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;,
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$SettingExpression;,
        Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;
    }
.end annotation


# static fields
.field private static final BUILDER_CLASS_POSTFIX:Ljava/lang/String; = "Builder"

.field private static final BUILD_METHOD_NAME:Ljava/lang/String; = "build"

.field private static final INSTANCE_FIELD_NAME:Ljava/lang/String; = "INSTANCE"

.field private static SHORTHANDS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final VOID:Ljava/lang/Object;


# instance fields
.field private final allowNull:Z

.field private final env:Lfreemarker/core/_SettingEvaluationEnvironment;

.field private final expectedClass:Ljava/lang/Class;

.field private modernMode:Z

.field private pos:I

.field private final src:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 81
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)V
    .registers 7

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->modernMode:Z

    .line 96
    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    .line 97
    iput p2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    .line 98
    iput-object p3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->expectedClass:Ljava/lang/Class;

    .line 99
    iput-boolean p4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->allowNull:Z

    .line 100
    iput-object p5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->env:Lfreemarker/core/_SettingEvaluationEnvironment;

    return-void
.end method

.method static synthetic access$1200(Lfreemarker/core/_ObjectBuilderSettingEvaluator;)Z
    .registers 1

    .line 71
    iget-boolean p0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->modernMode:Z

    return p0
.end method

.method static synthetic access$1300(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->setJavaBeanProperties(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1400(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 71
    invoke-static {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->shorthandToFullQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lfreemarker/core/_ObjectBuilderSettingEvaluator;)Lfreemarker/core/_SettingEvaluationEnvironment;
    .registers 1

    .line 71
    iget-object p0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->env:Lfreemarker/core/_SettingEvaluationEnvironment;

    return-object p0
.end method

.method static synthetic access$800(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 71
    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->ensureEvaled(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 706
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private configureBean(Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 153
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;

    invoke-direct {v0, p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Ljava/lang/Object;)V

    .line 154
    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchParameterListInto(Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;)V

    .line 155
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 156
    invoke-virtual {v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$PropertyAssignmentsExpression;->eval()Ljava/lang/Object;

    .line 157
    iget p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    return p1
.end method

.method public static configureBean(Ljava/lang/String;ILjava/lang/Object;Lfreemarker/core/_SettingEvaluationEnvironment;)I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 119
    new-instance v6, Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    .line 120
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x1

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;-><init>(Ljava/lang/String;ILjava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)V

    invoke-direct {v6, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->configureBean(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private ensureEvaled(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 161
    instance-of v0, p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$SettingExpression;

    if-eqz v0, :cond_a

    check-cast p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$SettingExpression;

    invoke-virtual {p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$SettingExpression;->eval()Ljava/lang/Object;

    move-result-object p1

    :cond_a
    return-object p1
.end method

.method private eval()Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 129
    :try_start_5
    invoke-direct {p0, v1, v0, v1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchValue(ZZZZ)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->ensureEvaled(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_d
    .catch Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression; {:try_start_5 .. :try_end_d} :catch_e

    goto :goto_13

    :catch_e
    move-exception v0

    .line 131
    invoke-virtual {v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;->rethrowLegacy()V

    const/4 v0, 0x0

    .line 134
    :goto_13
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 136
    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v1, v2, :cond_6a

    if-nez v0, :cond_2f

    .line 140
    iget-boolean v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->allowNull:Z

    if-eqz v1, :cond_27

    goto :goto_2f

    .line 141
    :cond_27
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    const-string v1, "Value can\'t be null."

    invoke-direct {v0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2f
    :goto_2f
    if-eqz v0, :cond_69

    .line 143
    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->expectedClass:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    goto :goto_69

    .line 144
    :cond_3a
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The resulting object (of class "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") is not a(n) "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->expectedClass:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_69
    :goto_69
    return-object v0

    .line 137
    :cond_6a
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string v3, "end-of-expression"

    invoke-direct {v0, v3, v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public static eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 106
    new-instance v6, Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    const/4 v2, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;-><init>(Ljava/lang/String;ILjava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)V

    invoke-direct {v6}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private fetchBuilderCall(ZZ)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 166
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    .line 168
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Lfreemarker/core/_ObjectBuilderSettingEvaluator$1;)V

    const/4 v2, 0x1

    .line 171
    # setter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->canBeStaticField:Z
    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->access$102(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;Z)Z

    .line 173
    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchClassName(Z)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_23

    if-eqz p1, :cond_17

    .line 179
    sget-object p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-object p1

    .line 177
    :cond_17
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object p2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string v1, "class name"

    invoke-direct {p1, v1, p2, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 181
    :cond_23
    invoke-static {v3}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->shorthandToFullQualified(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    # setter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;
    invoke-static {v1, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->access$202(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    # getter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;
    invoke-static {v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->access$200(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x0

    if-nez p1, :cond_3a

    .line 184
    iput-boolean v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->modernMode:Z

    .line 185
    # setter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->canBeStaticField:Z
    invoke-static {v1, v4}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->access$102(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;Z)Z

    .line 189
    :cond_3a
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 191
    const-string p1, "("

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchOptionalChar(Ljava/lang/String;)C

    move-result p1

    if-nez p1, :cond_59

    if-nez p2, :cond_59

    const/16 p2, 0x2e

    .line 194
    invoke-virtual {v3, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p2

    const/4 v3, -0x1

    if-eq p2, v3, :cond_54

    .line 195
    # setter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->mustBeStaticField:Z
    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->access$302(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;Z)Z

    goto :goto_59

    .line 197
    :cond_54
    iput v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    .line 198
    sget-object p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-object p1

    :cond_59
    :goto_59
    if-eqz p1, :cond_61

    .line 203
    invoke-direct {p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchParameterListInto(Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;)V

    .line 204
    # setter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->canBeStaticField:Z
    invoke-static {v1, v4}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->access$102(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;Z)Z

    :cond_61
    return-object v1
.end method

.method private fetchChar(Ljava/lang/String;Z)C
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 631
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_14

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_15

    :cond_14
    move v0, v2

    .line 632
    :goto_15
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_23

    .line 633
    iget p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    return v0

    :cond_23
    if-eqz p2, :cond_26

    return v2

    .line 638
    :cond_26
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 639
    :goto_2b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_47

    if-eqz v2, :cond_38

    .line 641
    const-string v0, " or "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_38
    add-int/lit8 v0, v2, 0x1

    .line 643
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v0

    goto :goto_2b

    .line 645
    :cond_47
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    .line 646
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-direct {p1, p2, v0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method private fetchClassName(Z)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 338
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_7
    const/4 v2, 0x1

    .line 341
    invoke-direct {p0, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchSimpleName(Z)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_20

    if-eqz p1, :cond_14

    .line 346
    iput v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    return-object v4

    .line 344
    :cond_14
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string v2, "name"

    invoke-direct {p1, v2, v0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 350
    :cond_20
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 354
    iget v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_49

    iget-object v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-eq v3, v5, :cond_3d

    goto :goto_49

    .line 357
    :cond_3d
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 358
    iget v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    .line 360
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    goto :goto_7

    .line 363
    :cond_49
    :goto_49
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->isKeyword(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_56

    .line 365
    iput v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    return-object v4

    :cond_56
    return-object p1
.end method

.method private fetchListLiteral(Z)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 549
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_49

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x5b

    if-eq v0, v1, :cond_17

    goto :goto_49

    .line 555
    :cond_17
    iget p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    .line 557
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ListExpression;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ListExpression;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Lfreemarker/core/_ObjectBuilderSettingEvaluator$1;)V

    .line 560
    :goto_23
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 562
    const-string p1, "]"

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchOptionalChar(Ljava/lang/String;)C

    move-result p1

    if-eqz p1, :cond_2f

    return-object v1

    .line 565
    :cond_2f
    invoke-virtual {v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ListExpression;->itemCount()I

    move-result p1

    if-eqz p1, :cond_3d

    .line 566
    const-string p1, ","

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchRequiredChar(Ljava/lang/String;)C

    .line 567
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    :cond_3d
    const/4 p1, 0x0

    .line 570
    invoke-direct {p0, p1, p1, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchValue(ZZZZ)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ListExpression;->addItem(Ljava/lang/Object;)V

    .line 572
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    goto :goto_23

    :cond_49
    :goto_49
    if-eqz p1, :cond_4e

    .line 553
    sget-object p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-object p1

    .line 551
    :cond_4e
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string v2, "["

    invoke-direct {p1, v2, v0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method private fetchMapLiteral(Z)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 577
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eq v0, v1, :cond_5d

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x7b

    if-eq v0, v1, :cond_17

    goto :goto_5d

    .line 583
    :cond_17
    iget p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const/4 v0, 0x1

    add-int/2addr p1, v0

    iput p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    .line 585
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$MapExpression;

    const/4 p1, 0x0

    invoke-direct {v1, p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$MapExpression;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Lfreemarker/core/_ObjectBuilderSettingEvaluator$1;)V

    .line 588
    :goto_23
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 590
    const-string p1, "}"

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchOptionalChar(Ljava/lang/String;)C

    move-result p1

    if-eqz p1, :cond_2f

    return-object v1

    .line 593
    :cond_2f
    invoke-virtual {v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$MapExpression;->itemCount()I

    move-result p1

    if-eqz p1, :cond_3d

    .line 594
    const-string p1, ","

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchRequiredChar(Ljava/lang/String;)C

    .line 595
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    :cond_3d
    const/4 p1, 0x0

    .line 598
    invoke-direct {p0, p1, p1, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchValue(ZZZZ)Ljava/lang/Object;

    move-result-object v2

    .line 599
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 600
    const-string v3, ":"

    invoke-direct {p0, v3}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchRequiredChar(Ljava/lang/String;)C

    .line 601
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 602
    invoke-direct {p0, p1, p1, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchValue(ZZZZ)Ljava/lang/Object;

    move-result-object p1

    .line 603
    new-instance v3, Lfreemarker/core/_ObjectBuilderSettingEvaluator$KeyValuePair;

    invoke-direct {v3, v2, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$KeyValuePair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, v3}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$MapExpression;->addItem(Lfreemarker/core/_ObjectBuilderSettingEvaluator$KeyValuePair;)V

    .line 605
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    goto :goto_23

    :cond_5d
    :goto_5d
    if-eqz p1, :cond_62

    .line 581
    sget-object p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-object p1

    .line 579
    :cond_62
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string v2, "{"

    invoke-direct {p1, v2, v0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method private fetchNumberLike(ZZ)Ljava/lang/Object;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 373
    const-string v0, "."

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const/4 v2, 0x0

    move v3, v2

    .line 377
    :goto_6
    iget v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2e

    const/4 v7, 0x1

    if-ne v4, v5, :cond_14

    goto :goto_30

    .line 380
    :cond_14
    iget-object v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v6, :cond_26

    if-eqz v2, :cond_23

    move v3, v7

    goto/16 :goto_179

    :cond_23
    move v2, v7

    goto/16 :goto_179

    .line 388
    :cond_26
    invoke-direct {p0, v4}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->isASCIIDigit(C)Z

    move-result v5

    if-nez v5, :cond_179

    const/16 v5, 0x2d

    if-eq v4, v5, :cond_179

    .line 394
    :goto_30
    iget v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    if-ne v1, v2, :cond_45

    if-eqz p1, :cond_39

    .line 396
    sget-object p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-object p1

    .line 398
    :cond_39
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object p2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string v1, "number-like"

    invoke-direct {p1, v1, p2, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 402
    :cond_45
    iget-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    if-eqz v3, :cond_69

    .line 405
    :try_start_4d
    new-instance p2, Lfreemarker/template/Version;

    invoke-direct {p2, p1}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4d .. :try_end_52} :catch_53

    return-object p2

    :catch_53
    move-exception p2

    .line 407
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed version number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_69
    const/4 v1, 0x0

    .line 413
    :goto_6a
    iget v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v2, v3, :cond_75

    goto :goto_a1

    .line 416
    :cond_75
    iget-object v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 417
    invoke-static {v2}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-eqz v3, :cond_a1

    if-nez v1, :cond_8a

    .line 419
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    goto :goto_9b

    .line 421
    :cond_8a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 426
    :goto_9b
    iget v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/2addr v2, v7

    iput v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    goto :goto_6a

    .line 430
    :cond_a1
    :goto_a1
    :try_start_a1
    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15b

    .line 433
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_153

    const-string v0, "-."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_153

    const-string v0, "+."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_153

    if-nez v1, :cond_f7

    .line 439
    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_ea

    .line 440
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-virtual {p2}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    const/16 v1, 0x1f

    if-gt v0, v1, :cond_dc

    .line 443
    invoke-virtual {p2}, Ljava/math/BigInteger;->intValue()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_dc
    const/16 v1, 0x3f

    if-gt v0, v1, :cond_e9

    .line 445
    invoke-virtual {p2}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    :cond_e9
    return-object p2

    :cond_ea
    if-eqz p2, :cond_f2

    .line 452
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 455
    :cond_f2
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 459
    :cond_f7
    const-string p2, "l"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_104

    .line 460
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 461
    :cond_104
    const-string p2, "bi"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_112

    .line 462
    new-instance p2, Ljava/math/BigInteger;

    invoke-direct {p2, p1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 463
    :cond_112
    const-string p2, "bd"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_120

    .line 464
    new-instance p2, Ljava/math/BigDecimal;

    invoke-direct {p2, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    return-object p2

    .line 465
    :cond_120
    const-string p2, "d"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_12d

    .line 466
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    .line 467
    :cond_12d
    const-string p2, "f"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_13a

    .line 468
    invoke-static {p1}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 470
    :cond_13a
    new-instance p2, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized number type postfix: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 434
    :cond_153
    new-instance p2, Ljava/lang/NumberFormatException;

    const-string v0, "A number can\'t start with a dot"

    invoke-direct {p2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 431
    :cond_15b
    new-instance p2, Ljava/lang/NumberFormatException;

    const-string v0, "A number can\'t end with a dot"

    invoke-direct {p2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_163
    .catch Ljava/lang/NumberFormatException; {:try_start_a1 .. :try_end_163} :catch_163

    :catch_163
    move-exception p2

    .line 476
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed number: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 391
    :cond_179
    :goto_179
    iget v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/2addr v4, v7

    iput v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    goto/16 :goto_6
.end method

.method private fetchOptionalChar(Ljava/lang/String;)C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 623
    invoke-direct {p0, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchChar(Ljava/lang/String;Z)C

    move-result p1

    return p1
.end method

.method private fetchParameterListInto(Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->modernMode:Z

    .line 214
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 215
    const-string v1, ")"

    invoke-direct {p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchOptionalChar(Ljava/lang/String;)C

    move-result v1

    const/16 v2, 0x29

    if-eq v1, v2, :cond_7c

    .line 217
    :cond_10
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    const/4 v1, 0x0

    .line 219
    invoke-direct {p0, v1, v1, v0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchValue(ZZZZ)Ljava/lang/Object;

    move-result-object v2

    .line 220
    sget-object v3, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    if-eq v2, v3, :cond_72

    .line 221
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 222
    instance-of v3, v2, Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;

    if-eqz v3, :cond_47

    .line 223
    iget-object v3, p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->namedParamNames:Ljava/util/List;

    check-cast v2, Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;

    # getter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;->name:Ljava/lang/String;
    invoke-static {v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;->access$400(Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 226
    const-string v2, "="

    invoke-direct {p0, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchRequiredChar(Ljava/lang/String;)C

    .line 227
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    .line 229
    invoke-direct {p0, v1, v1, v0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchValue(ZZZZ)Ljava/lang/Object;

    move-result-object v1

    .line 230
    iget-object v2, p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->namedParamValues:Ljava/util/List;

    invoke-direct {p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->ensureEvaled(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5e

    .line 232
    :cond_47
    iget-object v1, p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->namedParamNames:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_6a

    .line 236
    invoke-virtual {p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->getAllowPositionalParameters()Z

    move-result v1

    if-eqz v1, :cond_62

    .line 240
    iget-object v1, p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;->positionalParamValues:Ljava/util/List;

    invoke-direct {p0, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->ensureEvaled(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    :goto_5e
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->skipWS()V

    goto :goto_72

    .line 237
    :cond_62
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    const-string v0, "Positional parameters not supported here"

    invoke-direct {p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 233
    :cond_6a
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    const-string v0, "Positional parameters must precede named parameters"

    invoke-direct {p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_72
    :goto_72
    const-string v1, ",)"

    invoke-direct {p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchRequiredChar(Ljava/lang/String;)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_10

    :cond_7c
    return-void
.end method

.method private fetchRequiredChar(Ljava/lang/String;)C
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 627
    invoke-direct {p0, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchChar(Ljava/lang/String;Z)C

    move-result p1

    return p1
.end method

.method private fetchSimpleName(Z)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 312
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_13

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, 0x0

    .line 313
    :goto_14
    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->isIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_2a

    if-eqz p1, :cond_1e

    const/4 p1, 0x0

    return-object p1

    .line 317
    :cond_1e
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string v2, "class name"

    invoke-direct {p1, v2, v0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 320
    :cond_2a
    iget p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/lit8 v0, p1, 0x1

    .line 321
    iput v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    .line 324
    :goto_30
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_3b

    goto :goto_49

    .line 327
    :cond_3b
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 328
    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->isIdentifierMiddle(C)Z

    move-result v0

    if-nez v0, :cond_52

    .line 334
    :goto_49
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 331
    :cond_52
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    goto :goto_30
.end method

.method private fetchStringLiteral(Z)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 482
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    .line 487
    :goto_6
    iget v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v6, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    if-ne v5, v6, :cond_22

    if-nez v2, :cond_14

    goto :goto_63

    .line 490
    :cond_14
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-direct {p1, v0, v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 494
    :cond_22
    iget-object v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v6, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-nez v2, :cond_57

    const/16 v2, 0x72

    if-ne v5, v2, :cond_45

    .line 496
    iget v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/2addr v2, v7

    iget-object v6, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_45

    .line 499
    iget-object v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/2addr v4, v7

    invoke-virtual {v2, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    move v4, v7

    :cond_45
    const/16 v2, 0x27

    if-ne v5, v2, :cond_4a

    goto :goto_4e

    :cond_4a
    const/16 v2, 0x22

    if-ne v5, v2, :cond_63

    :goto_4e
    if-eqz v4, :cond_c6

    .line 510
    iget v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/2addr v5, v7

    iput v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    goto/16 :goto_c6

    :cond_57
    if-nez v3, :cond_c5

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_61

    if-nez v4, :cond_61

    move v3, v7

    goto :goto_c6

    :cond_61
    if-ne v5, v2, :cond_a7

    .line 531
    :cond_63
    :goto_63
    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    if-ne v0, v1, :cond_78

    if-eqz p1, :cond_6c

    .line 533
    sget-object p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-object p1

    .line 535
    :cond_6c
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string v2, "string literal"

    invoke-direct {p1, v2, v0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1

    .line 539
    :cond_78
    iget-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    if-eqz v4, :cond_7e

    const/4 v2, 0x2

    goto :goto_7f

    :cond_7e
    move v2, v7

    :goto_7f
    add-int/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 541
    :try_start_84
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/2addr v0, v7

    iput v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    if-eqz v4, :cond_8c

    goto :goto_90

    .line 542
    :cond_8c
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->FTLStringLiteralDec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_90
    .catch Lfreemarker/core/ParseException; {:try_start_84 .. :try_end_90} :catch_91

    :goto_90
    return-object p1

    :catch_91
    move-exception v0

    .line 544
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Malformed string literal: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_a7
    const/16 v6, 0x7b

    if-ne v5, v6, :cond_c6

    .line 519
    iget-object v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v6, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x24

    if-eq v5, v6, :cond_bd

    const/16 v6, 0x23

    if-eq v5, v6, :cond_bd

    goto :goto_c6

    .line 521
    :cond_bd
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    const-string v0, "${...} and #{...} aren\'t allowed here."

    invoke-direct {p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_c5
    move v3, v1

    .line 529
    :cond_c6
    :goto_c6
    iget v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/2addr v5, v7

    iput v5, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    goto/16 :goto_6
.end method

.method private fetchValue(ZZZZ)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 251
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_5a

    const/4 v0, 0x1

    .line 252
    invoke-direct {p0, v0, p3}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchNumberLike(ZZ)Ljava/lang/Object;

    move-result-object p3

    .line 253
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    if-eq p3, v1, :cond_14

    return-object p3

    .line 257
    :cond_14
    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchStringLiteral(Z)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_1b

    return-object p3

    .line 262
    :cond_1b
    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchListLiteral(Z)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_22

    return-object p3

    .line 267
    :cond_22
    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchMapLiteral(Z)Ljava/lang/Object;

    move-result-object p3

    if-eq p3, v1, :cond_29

    return-object p3

    .line 272
    :cond_29
    invoke-direct {p0, v0, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchBuilderCall(ZZ)Ljava/lang/Object;

    move-result-object p2

    if-eq p2, v1, :cond_30

    return-object p2

    .line 277
    :cond_30
    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->fetchSimpleName(Z)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_5a

    .line 279
    invoke-direct {p0, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->keywordToValueOrVoid(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eq p1, v1, :cond_3d

    return-object p1

    :cond_3d
    if-nez p4, :cond_45

    .line 288
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;

    invoke-direct {p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$Name;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 286
    :cond_45
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string p4, "Can\'t resolve variable reference: "

    invoke-direct {p3, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5a
    if-eqz p1, :cond_5f

    .line 294
    sget-object p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-object p1

    .line 296
    :cond_5f
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    iget-object p2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget p3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    const-string p4, "value or name"

    invoke-direct {p1, p4, p2, p3}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p1
.end method

.method private isASCIIDigit(C)Z
    .registers 3

    const/16 v0, 0x30

    if-lt p1, v0, :cond_a

    const/16 v0, 0x39

    if-gt p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private isIdentifierMiddle(C)Z
    .registers 3

    .line 660
    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->isIdentifierStart(C)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->isASCIIDigit(C)Z

    move-result p1

    if-eqz p1, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method private isIdentifierStart(C)Z
    .registers 3

    .line 656
    invoke-static {p1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_11

    const/16 v0, 0x5f

    if-eq p1, v0, :cond_11

    const/16 v0, 0x24

    if-ne p1, v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 p1, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 p1, 0x1

    :goto_12
    return p1
.end method

.method private isKeyword(Ljava/lang/String;)Z
    .registers 3

    .line 301
    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->keywordToValueOrVoid(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    if-eq p1, v0, :cond_a

    const/4 p1, 0x1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return p1
.end method

.method private keywordToValueOrVoid(Ljava/lang/String;)Ljava/lang/Object;
    .registers 3

    .line 305
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 306
    :cond_b
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 307
    :cond_16
    const-string v0, "null"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_20

    const/4 p1, 0x0

    return-object p1

    .line 308
    :cond_20
    sget-object p1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->VOID:Ljava/lang/Object;

    return-object p1
.end method

.method private setJavaBeanProperties(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 712
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 716
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 719
    :try_start_b
    invoke-static {v0}, Ljava/beans/Introspector;->getBeanInfo(Ljava/lang/Class;)Ljava/beans/BeanInfo;

    move-result-object v1

    invoke-interface {v1}, Ljava/beans/BeanInfo;->getPropertyDescriptors()[Ljava/beans/PropertyDescriptor;

    move-result-object v1

    .line 720
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v1

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v4}, Ljava/util/HashMap;-><init>(IF)V

    const/4 v3, 0x0

    move v4, v3

    .line 721
    :goto_21
    array-length v5, v1

    if-ge v4, v5, :cond_36

    .line 722
    aget-object v5, v1, v4

    .line 723
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getWriteMethod()Ljava/lang/reflect/Method;

    move-result-object v6

    if-eqz v6, :cond_33

    .line 725
    invoke-virtual {v5}, Ljava/beans/PropertyDescriptor;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_33} :catch_159

    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_21

    :cond_36
    const/4 v1, 0x0

    move-object v4, v1

    .line 733
    :goto_38
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_158

    .line 734
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 735
    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "The "

    if-eqz v6, :cond_12d

    .line 741
    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Method;

    if-eqz v6, :cond_10e

    if-nez v4, :cond_88

    .line 749
    :try_start_56
    iget-object v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->env:Lfreemarker/core/_SettingEvaluationEnvironment;

    invoke-virtual {v4}, Lfreemarker/core/_SettingEvaluationEnvironment;->getObjectWrapper()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v4

    invoke-virtual {v4, p1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    .line 750
    instance-of v8, v4, Lfreemarker/template/TemplateHashModel;

    if-eqz v8, :cond_67

    .line 754
    check-cast v4, Lfreemarker/template/TemplateHashModel;

    goto :goto_88

    .line 751
    :cond_67
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 752
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " class is not a wrapped as TemplateHashModel."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 757
    :cond_88
    :goto_88
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7}, Lfreemarker/template/TemplateHashModel;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v7

    if-eqz v7, :cond_d5

    .line 762
    instance-of v8, v7, Lfreemarker/template/TemplateMethodModelEx;

    if-eqz v8, :cond_b4

    .line 766
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 767
    iget-object v8, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->env:Lfreemarker/core/_SettingEvaluationEnvironment;

    invoke-virtual {v8}, Lfreemarker/core/_SettingEvaluationEnvironment;->getObjectWrapper()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v8

    invoke-interface {p3, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v8

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 768
    check-cast v7, Lfreemarker/template/TemplateMethodModelEx;

    invoke-interface {v7, v6}, Lfreemarker/template/TemplateMethodModelEx;->exec(Ljava/util/List;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 763
    :cond_b4
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 764
    invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " wasn\'t a TemplateMethodModelEx."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 759
    :cond_d5
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t find "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " as FreeMarker method."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_f4
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_f4} :catch_f4

    :catch_f4
    move-exception p1

    .line 770
    new-instance p2, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to set "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 771
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 743
    :cond_10e
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "JavaBeans property "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 744
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " is set twice."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 736
    :cond_12d
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " class has no writeable JavaBeans property called "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 738
    invoke-static {v5}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_158
    return-void

    :catch_159
    move-exception p1

    .line 729
    new-instance p2, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Failed to inspect "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " class"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method private static declared-synchronized shorthandToFullQualified(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    monitor-enter v0

    .line 664
    :try_start_3
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    if-nez v1, :cond_bf

    .line 665
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    .line 667
    const-class v2, Lfreemarker/template/DefaultObjectWrapper;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 668
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/ext/beans/BeansWrapper;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 669
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/template/SimpleObjectWrapper;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 671
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/core/TemplateConfiguration;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 673
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/PathGlobMatcher;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 674
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/FileNameGlobMatcher;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 675
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/FileExtensionMatcher;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 676
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/PathRegexMatcher;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 677
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/AndMatcher;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 678
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/OrMatcher;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 679
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/NotMatcher;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 681
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/ConditionalTemplateConfigurationFactory;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 682
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/MergingTemplateConfigurationFactory;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 683
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/cache/FirstMatchTemplateConfigurationFactory;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 685
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/core/HTMLOutputFormat;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 686
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/core/XHTMLOutputFormat;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 687
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/core/XMLOutputFormat;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 688
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/core/RTFOutputFormat;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 689
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/core/PlainTextOutputFormat;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 690
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/core/UndefinedOutputFormat;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 692
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/core/DefaultTruncateBuiltinAlgorithm;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 694
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Ljava/util/Locale;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 695
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-string v2, "TimeZone"

    const-string v3, "freemarker.core._TimeZone"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-string v2, "markup"

    const-string v3, "freemarker.core._Markup"

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 699
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    const-class v2, Lfreemarker/template/Configuration;

    invoke-static {v1, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->addWithSimpleName(Ljava/util/Map;Ljava/lang/Class;)V

    .line 701
    :cond_bf
    sget-object v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->SHORTHANDS:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_c7
    .catchall {:try_start_3 .. :try_end_c7} :catchall_cd

    if-nez v1, :cond_ca

    goto :goto_cb

    :cond_ca
    move-object p0, v1

    .line 702
    :goto_cb
    monitor-exit v0

    return-object p0

    :catchall_cd
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private skipWS()V
    .registers 3

    .line 611
    :goto_0
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v0, v1, :cond_b

    return-void

    .line 614
    :cond_b
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->src:Ljava/lang/String;

    iget v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 615
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1a

    return-void

    .line 618
    :cond_1a
    iget v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->pos:I

    goto :goto_0
.end method
