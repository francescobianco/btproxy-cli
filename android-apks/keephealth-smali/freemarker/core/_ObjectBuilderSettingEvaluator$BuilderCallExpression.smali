.class Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;
.super Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;
.source "_ObjectBuilderSettingEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/_ObjectBuilderSettingEvaluator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BuilderCallExpression"
.end annotation


# instance fields
.field private canBeStaticField:Z

.field private className:Ljava/lang/String;

.field private mustBeStaticField:Z

.field final synthetic this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;


# direct methods
.method private constructor <init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;)V
    .registers 3

    .line 857
    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$ExpressionWithParameters;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Lfreemarker/core/_ObjectBuilderSettingEvaluator$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Lfreemarker/core/_ObjectBuilderSettingEvaluator$1;)V
    .registers 3

    .line 857
    invoke-direct {p0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;-><init>(Lfreemarker/core/_ObjectBuilderSettingEvaluator;)V

    return-void
.end method

.method static synthetic access$102(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;Z)Z
    .registers 2

    .line 857
    iput-boolean p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->canBeStaticField:Z

    return p1
.end method

.method static synthetic access$200(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;)Ljava/lang/String;
    .registers 1

    .line 857
    iget-object p0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$202(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 857
    iput-object p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;Z)Z
    .registers 2

    .line 857
    iput-boolean p1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->mustBeStaticField:Z

    return p1
.end method

.method private callBuild(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 1039
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1042
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "build"

    const/4 v3, 0x0

    move-object v4, v3

    check-cast v4, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1
    :try_end_12
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_12} :catch_64
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_12} :catch_44

    .line 1052
    :try_start_12
    move-object v2, v3

    check-cast v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_19} :catch_1a

    return-object p1

    :catch_1a
    move-exception p1

    .line 1055
    instance-of v1, p1, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v1, :cond_25

    .line 1056
    check-cast p1, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object p1

    .line 1060
    :cond_25
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to call build() method on "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " instance"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_44
    move-exception p1

    .line 1047
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get the build() method of the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " builder class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_64
    move-exception p1

    .line 1044
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " builder class must have a public build() method"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private callConstructor(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 1010
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->hasNoParameters()Z

    move-result v0

    const-string v1, "Failed to call "

    if-eqz v0, :cond_2b

    .line 1013
    :try_start_8
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_d

    return-object p1

    :catch_d
    move-exception v0

    .line 1015
    new-instance v2, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " 0-argument constructor"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1019
    :cond_2b
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    # getter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator;->env:Lfreemarker/core/_SettingEvaluationEnvironment;
    invoke-static {v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->access$1500(Lfreemarker/core/_ObjectBuilderSettingEvaluator;)Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/core/_SettingEvaluationEnvironment;->getObjectWrapper()Lfreemarker/ext/beans/BeansWrapper;

    move-result-object v0

    .line 1020
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->positionalParamValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    .line 1021
    :goto_41
    iget-object v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->positionalParamValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_71

    .line 1023
    :try_start_49
    iget-object v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->positionalParamValues:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_56
    .catch Lfreemarker/template/TemplateModelException; {:try_start_49 .. :try_end_56} :catch_59

    add-int/lit8 v3, v3, 0x1

    goto :goto_41

    :catch_59
    move-exception p1

    .line 1025
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to wrap arg #"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 1029
    :cond_71
    :try_start_71
    invoke-virtual {v0, p1, v2}, Lfreemarker/ext/beans/BeansWrapper;->newInstance(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_71 .. :try_end_75} :catch_76

    return-object p1

    :catch_76
    move-exception v0

    .line 1031
    new-instance v2, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1032
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " constructor"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private getStaticFieldValue(Ljava/lang/String;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 962
    const-string v0, "."

    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_e9

    const/4 v2, 0x0

    .line 966
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    # invokes: Lfreemarker/core/_ObjectBuilderSettingEvaluator;->shorthandToFullQualified(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->access$1400(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    .line 967
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 971
    :try_start_1a
    invoke-static {v2}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_cb

    .line 980
    :try_start_1e
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_22} :catch_9f

    .line 988
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8a

    .line 991
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_75

    .line 995
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "INSTANCE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    const/4 v0, 0x0

    .line 1002
    :try_start_3f
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_43} :catch_44

    return-object p1

    :catch_44
    move-exception v0

    .line 1004
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to get field value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 996
    :cond_5a
    new-instance p1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The INSTANCE field is only accessible through pseudo-constructor call: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 992
    :cond_75
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referred field isn\'t public: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 989
    :cond_8a
    new-instance v0, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Referred field isn\'t static: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_9f
    move-exception v1

    .line 982
    new-instance v3, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Failed to get field "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 983
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v4, " from class "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 984
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :catch_cb
    move-exception p1

    .line 973
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get field\'s parent class, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 974
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 964
    :cond_e9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method private hasNoParameters()Z
    .registers 2

    .line 1066
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->positionalParamValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->namedParamValues:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method


# virtual methods
.method eval()Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/_ObjectBuilderSettingEvaluationException;
        }
    .end annotation

    .line 864
    iget-boolean v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->mustBeStaticField:Z

    if-eqz v0, :cond_15

    .line 865
    iget-boolean v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->canBeStaticField:Z

    if-eqz v0, :cond_f

    .line 868
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    invoke-direct {p0, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->getStaticFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 866
    :cond_f
    new-instance v0, Lfreemarker/core/BugException;

    invoke-direct {v0}, Lfreemarker/core/BugException;-><init>()V

    throw v0

    .line 873
    :cond_15
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    # getter for: Lfreemarker/core/_ObjectBuilderSettingEvaluator;->modernMode:Z
    invoke-static {v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->access$1200(Lfreemarker/core/_ObjectBuilderSettingEvaluator;)Z

    move-result v0

    if-nez v0, :cond_57

    .line 876
    :try_start_1d
    iget-object v0, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    invoke-static {v0}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0
    :try_end_27
    .catch Ljava/lang/InstantiationException; {:try_start_1d .. :try_end_27} :catch_38
    .catch Ljava/lang/IllegalAccessException; {:try_start_1d .. :try_end_27} :catch_31
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1d .. :try_end_27} :catch_2a
    .catch Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression; {:try_start_1d .. :try_end_27} :catch_28

    return-object v0

    :catch_28
    move-exception v0

    goto :goto_3f

    :catch_2a
    move-exception v0

    .line 882
    :try_start_2b
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;

    invoke-direct {v1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_31
    move-exception v0

    .line 880
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;

    invoke-direct {v1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_38
    move-exception v0

    .line 878
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;

    invoke-direct {v1, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3f
    .catch Lfreemarker/core/_ObjectBuilderSettingEvaluator$LegacyExceptionWrapperSettingEvaluationExpression; {:try_start_2b .. :try_end_3f} :catch_28

    .line 885
    :goto_3f
    iget-boolean v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->canBeStaticField:Z

    if-eqz v1, :cond_56

    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_56

    .line 890
    :try_start_4e
    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    invoke-direct {p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->getStaticFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_54
    .catch Lfreemarker/core/_ObjectBuilderSettingEvaluationException; {:try_start_4e .. :try_end_54} :catch_55

    return-object v0

    .line 892
    :catch_55
    throw v0

    .line 886
    :cond_56
    throw v0

    :cond_57
    const/4 v0, 0x1

    .line 899
    :try_start_58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Builder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_71
    .catch Ljava/lang/ClassNotFoundException; {:try_start_58 .. :try_end_71} :catch_72

    goto :goto_7c

    :catch_72
    const/4 v1, 0x0

    .line 904
    :try_start_73
    iget-object v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    invoke-static {v2}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_79
    .catch Ljava/lang/Exception; {:try_start_73 .. :try_end_79} :catch_da

    move v5, v1

    move-object v1, v0

    move v0, v5

    :goto_7c
    if-nez v0, :cond_bb

    .line 926
    invoke-direct {p0}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->hasNoParameters()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 928
    :try_start_84
    const-string v2, "INSTANCE"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 929
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    const/16 v4, 0x9

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_bb

    const/4 v3, 0x0

    .line 931
    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_98
    .catch Ljava/lang/NoSuchFieldException; {:try_start_84 .. :try_end_98} :catch_bb
    .catch Ljava/lang/Exception; {:try_start_84 .. :try_end_98} :catch_99

    return-object v0

    :catch_99
    move-exception v0

    .line 936
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Error when trying to access "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    .line 937
    invoke-static {v3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".INSTANCE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 943
    :catch_bb
    :cond_bb
    invoke-direct {p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->callConstructor(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 946
    iget-object v2, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->this$0:Lfreemarker/core/_ObjectBuilderSettingEvaluator;

    iget-object v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->namedParamNames:Ljava/util/List;

    iget-object v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->namedParamValues:Ljava/util/List;

    # invokes: Lfreemarker/core/_ObjectBuilderSettingEvaluator;->setJavaBeanProperties(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v2, v1, v3, v4}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->access$1300(Lfreemarker/core/_ObjectBuilderSettingEvaluator;Ljava/lang/Object;Ljava/util/List;Ljava/util/List;)V

    if-eqz v0, :cond_cf

    .line 950
    invoke-direct {p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->callBuild(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_d9

    .line 952
    :cond_cf
    instance-of v0, v1, Lfreemarker/template/utility/WriteProtectable;

    if-eqz v0, :cond_d9

    .line 953
    move-object v0, v1

    check-cast v0, Lfreemarker/template/utility/WriteProtectable;

    invoke-interface {v0}, Lfreemarker/template/utility/WriteProtectable;->writeProtect()V

    :cond_d9
    :goto_d9
    return-object v1

    :catch_da
    move-exception v2

    .line 907
    iget-boolean v3, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->canBeStaticField:Z

    if-eqz v3, :cond_e6

    .line 910
    :try_start_df
    iget-object v1, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    invoke-direct {p0, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->getStaticFieldValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0
    :try_end_e5
    .catch Lfreemarker/core/_ObjectBuilderSettingEvaluationException; {:try_start_df .. :try_end_e5} :catch_e7

    return-object v0

    :cond_e6
    move v0, v1

    .line 918
    :catch_e7
    new-instance v1, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Failed to get class "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lfreemarker/core/_ObjectBuilderSettingEvaluator$BuilderCallExpression;->className:Ljava/lang/String;

    .line 919
    invoke-static {v4}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_ff

    const-string v0, " (also failed to resolve name as static field)"

    goto :goto_101

    :cond_ff
    const-string v0, ""

    :goto_101
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v2}, Lfreemarker/core/_ObjectBuilderSettingEvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getAllowPositionalParameters()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
