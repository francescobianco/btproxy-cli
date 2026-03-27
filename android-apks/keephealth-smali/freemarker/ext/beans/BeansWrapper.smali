.class public Lfreemarker/ext/beans/BeansWrapper;
.super Ljava/lang/Object;
.source "BeansWrapper.java"

# interfaces
.implements Lfreemarker/template/utility/RichObjectWrapper;
.implements Lfreemarker/template/utility/WriteProtectable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecisionInput;,
        Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;
    }
.end annotation


# static fields
.field static final CAN_NOT_UNWRAP:Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ENUMERATION_FACTORY:Lfreemarker/ext/util/ModelFactory;

.field public static final EXPOSE_ALL:I = 0x0

.field public static final EXPOSE_NOTHING:I = 0x3

.field public static final EXPOSE_PROPERTIES_ONLY:I = 0x2

.field public static final EXPOSE_SAFE:I = 0x1

.field private static final ITERATOR_FACTORY:Lfreemarker/ext/util/ModelFactory;

.field private static final LOG:Lfreemarker/log/Logger;

.field private static volatile ftmaDeprecationWarnLogged:Z


# instance fields
.field private final BOOLEAN_FACTORY:Lfreemarker/ext/util/ModelFactory;

.field private classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

.field private defaultDateType:I

.field private final enumModels:Lfreemarker/ext/beans/ClassBasedModelFactory;

.field private final falseModel:Lfreemarker/ext/beans/BooleanModel;

.field private final incompatibleImprovements:Lfreemarker/template/Version;

.field private methodsShadowItems:Z

.field private final modelCache:Lfreemarker/ext/util/ModelCache;

.field private nullModel:Lfreemarker/template/TemplateModel;

.field private outerIdentity:Lfreemarker/template/ObjectWrapper;

.field private preferIndexedReadMethod:Z

.field private final sharedIntrospectionLock:Ljava/lang/Object;

.field private simpleMapWrapper:Z

.field private final staticModels:Lfreemarker/ext/beans/StaticModels;

.field private strict:Z

.field private final trueModel:Lfreemarker/ext/beans/BooleanModel;

.field private volatile writeProtected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 88
    const-string v0, "freemarker.beans"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/beans/BeansWrapper;->LOG:Lfreemarker/log/Logger;

    .line 95
    sget-object v0, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    sput-object v0, Lfreemarker/ext/beans/BeansWrapper;->CAN_NOT_UNWRAP:Ljava/lang/Object;

    .line 958
    new-instance v0, Lfreemarker/ext/beans/BeansWrapper$4;

    invoke-direct {v0}, Lfreemarker/ext/beans/BeansWrapper$4;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/BeansWrapper;->ITERATOR_FACTORY:Lfreemarker/ext/util/ModelFactory;

    .line 964
    new-instance v0, Lfreemarker/ext/beans/BeansWrapper$5;

    invoke-direct {v0}, Lfreemarker/ext/beans/BeansWrapper$5;-><init>()V

    sput-object v0, Lfreemarker/ext/beans/BeansWrapper;->ENUMERATION_FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    sget-object v0, Lfreemarker/template/Configuration;->DEFAULT_INCOMPATIBLE_IMPROVEMENTS:Lfreemarker/template/Version;

    invoke-direct {p0, v0}, Lfreemarker/ext/beans/BeansWrapper;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method

.method protected constructor <init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;Z)V
    .registers 4

    const/4 v0, 0x1

    .line 280
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/BeansWrapper;-><init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;ZZ)V

    return-void
.end method

.method protected constructor <init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;ZZ)V
    .registers 12

    .line 294
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p3, 0x0

    .line 181
    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->nullModel:Lfreemarker/template/TemplateModel;

    .line 183
    iput-object p0, p0, Lfreemarker/ext/beans/BeansWrapper;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    const/4 p3, 0x1

    .line 184
    iput-boolean p3, p0, Lfreemarker/ext/beans/BeansWrapper;->methodsShadowItems:Z

    .line 952
    new-instance v0, Lfreemarker/ext/beans/BeansWrapper$3;

    invoke-direct {v0, p0}, Lfreemarker/ext/beans/BeansWrapper$3;-><init>(Lfreemarker/ext/beans/BeansWrapper;)V

    iput-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->BOOLEAN_FACTORY:Lfreemarker/ext/util/ModelFactory;

    .line 296
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    if-nez v0, :cond_a1

    .line 297
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 301
    :goto_1e
    const-class v3, Lfreemarker/ext/beans/BeansWrapper;

    if-nez v2, :cond_6a

    :try_start_22
    const-class v4, Lfreemarker/template/DefaultObjectWrapper;

    if-eq v0, v4, :cond_6a

    if-eq v0, v3, :cond_6a

    const-class v4, Lfreemarker/template/SimpleObjectWrapper;
    :try_end_2a
    .catchall {:try_start_22 .. :try_end_2a} :catchall_48

    if-eq v0, v4, :cond_6a

    .line 306
    :try_start_2c
    const-string v4, "finetuneMethodAppearance"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Class;

    aput-object v6, v5, v1

    const-class v6, Ljava/lang/reflect/Method;

    aput-object v6, v5, p3

    const-class v6, Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;

    const/4 v7, 0x2

    aput-object v6, v5, v7

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_41
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2c .. :try_end_41} :catch_43
    .catchall {:try_start_2c .. :try_end_41} :catchall_48

    move v2, p3

    goto :goto_1e

    .line 310
    :catch_43
    :try_start_43
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0
    :try_end_47
    .catchall {:try_start_43 .. :try_end_47} :catchall_48

    goto :goto_1e

    :catchall_48
    move-exception v2

    .line 315
    sget-object v4, Lfreemarker/ext/beans/BeansWrapper;->LOG:Lfreemarker/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Failed to check if finetuneMethodAppearance is overidden in "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "; acting like if it was, but this way it won\'t utilize the shared class introspection cache."

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0, v2}, Lfreemarker/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, p3

    move v2, v0

    goto :goto_6b

    :cond_6a
    move v0, v1

    :goto_6b
    if-eqz v2, :cond_a1

    if-nez v0, :cond_93

    .line 323
    sget-boolean v0, Lfreemarker/ext/beans/BeansWrapper;->ftmaDeprecationWarnLogged:Z

    if-nez v0, :cond_93

    .line 324
    sget-object v0, Lfreemarker/ext/beans/BeansWrapper;->LOG:Lfreemarker/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Overriding "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".finetuneMethodAppearance is deprecated and will be banned sometimes in the future. Use setMethodAppearanceFineTuner instead."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    .line 326
    sput-boolean p3, Lfreemarker/ext/beans/BeansWrapper;->ftmaDeprecationWarnLogged:Z

    .line 328
    :cond_93
    invoke-virtual {p1, v1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->clone(Z)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;

    .line 329
    new-instance p3, Lfreemarker/ext/beans/BeansWrapper$2;

    invoke-direct {p3, p0}, Lfreemarker/ext/beans/BeansWrapper$2;-><init>(Lfreemarker/ext/beans/BeansWrapper;)V

    invoke-virtual {p1, p3}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->setMethodAppearanceFineTuner(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V

    .line 340
    :cond_a1
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->incompatibleImprovements:Lfreemarker/template/Version;

    .line 342
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->isSimpleMapWrapper()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/ext/beans/BeansWrapper;->simpleMapWrapper:Z

    .line 343
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getPreferIndexedReadMethod()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/ext/beans/BeansWrapper;->preferIndexedReadMethod:Z

    .line 344
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getDefaultDateType()I

    move-result p3

    iput p3, p0, Lfreemarker/ext/beans/BeansWrapper;->defaultDateType:I

    .line 345
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getOuterIdentity()Lfreemarker/template/ObjectWrapper;

    move-result-object p3

    if-eqz p3, :cond_c4

    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getOuterIdentity()Lfreemarker/template/ObjectWrapper;

    move-result-object p3

    goto :goto_c5

    :cond_c4
    move-object p3, p0

    :goto_c5
    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    .line 346
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->isStrict()Z

    move-result p3

    iput-boolean p3, p0, Lfreemarker/ext/beans/BeansWrapper;->strict:Z

    if-nez p2, :cond_e2

    .line 352
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->sharedIntrospectionLock:Ljava/lang/Object;

    .line 353
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospector;

    .line 354
    invoke-static {p1}, Lfreemarker/ext/beans/_BeansAPI;->getClassIntrospectorBuilder(Lfreemarker/ext/beans/BeansWrapperConfiguration;)Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    move-result-object v1

    invoke-direct {v0, v1, p3}, Lfreemarker/ext/beans/ClassIntrospector;-><init>(Lfreemarker/ext/beans/ClassIntrospectorBuilder;Ljava/lang/Object;)V

    iput-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    goto :goto_f2

    .line 358
    :cond_e2
    invoke-static {p1}, Lfreemarker/ext/beans/_BeansAPI;->getClassIntrospectorBuilder(Lfreemarker/ext/beans/BeansWrapperConfiguration;)Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    move-result-object p3

    invoke-virtual {p3}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->build()Lfreemarker/ext/beans/ClassIntrospector;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    .line 359
    invoke-virtual {p3}, Lfreemarker/ext/beans/ClassIntrospector;->getSharedLock()Ljava/lang/Object;

    move-result-object p3

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->sharedIntrospectionLock:Ljava/lang/Object;

    .line 362
    :goto_f2
    new-instance p3, Lfreemarker/ext/beans/BooleanModel;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p3, v0, p0}, Lfreemarker/ext/beans/BooleanModel;-><init>(Ljava/lang/Boolean;Lfreemarker/ext/beans/BeansWrapper;)V

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->falseModel:Lfreemarker/ext/beans/BooleanModel;

    .line 363
    new-instance p3, Lfreemarker/ext/beans/BooleanModel;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p3, v0, p0}, Lfreemarker/ext/beans/BooleanModel;-><init>(Ljava/lang/Boolean;Lfreemarker/ext/beans/BeansWrapper;)V

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->trueModel:Lfreemarker/ext/beans/BooleanModel;

    .line 365
    new-instance p3, Lfreemarker/ext/beans/StaticModels;

    invoke-direct {p3, p0}, Lfreemarker/ext/beans/StaticModels;-><init>(Lfreemarker/ext/beans/BeansWrapper;)V

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->staticModels:Lfreemarker/ext/beans/StaticModels;

    .line 366
    new-instance p3, Lfreemarker/ext/beans/_EnumModels;

    invoke-direct {p3, p0}, Lfreemarker/ext/beans/_EnumModels;-><init>(Lfreemarker/ext/beans/BeansWrapper;)V

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->enumModels:Lfreemarker/ext/beans/ClassBasedModelFactory;

    .line 367
    new-instance p3, Lfreemarker/ext/beans/BeansModelCache;

    invoke-direct {p3, p0}, Lfreemarker/ext/beans/BeansModelCache;-><init>(Lfreemarker/ext/beans/BeansWrapper;)V

    iput-object p3, p0, Lfreemarker/ext/beans/BeansWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    .line 368
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getUseModelCache()Z

    move-result p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/BeansWrapper;->setUseCache(Z)V

    .line 370
    invoke-virtual {p0, p2}, Lfreemarker/ext/beans/BeansWrapper;->finalizeConstruction(Z)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .registers 3

    .line 266
    new-instance v0, Lfreemarker/ext/beans/BeansWrapper$1;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/BeansWrapper$1;-><init>(Lfreemarker/template/Version;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/BeansWrapper;-><init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;Z)V

    return-void
.end method

.method static synthetic access$000(Lfreemarker/ext/beans/BeansWrapper;)Lfreemarker/ext/beans/BooleanModel;
    .registers 1

    .line 87
    iget-object p0, p0, Lfreemarker/ext/beans/BeansWrapper;->trueModel:Lfreemarker/ext/beans/BooleanModel;

    return-object p0
.end method

.method static synthetic access$100(Lfreemarker/ext/beans/BeansWrapper;)Lfreemarker/ext/beans/BooleanModel;
    .registers 1

    .line 87
    iget-object p0, p0, Lfreemarker/ext/beans/BeansWrapper;->falseModel:Lfreemarker/ext/beans/BooleanModel;

    return-object p0
.end method

.method public static coerceBigDecimal(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/math/BigDecimal;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1725
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_70

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_9

    goto :goto_70

    .line 1727
    :cond_9
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_67

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_12

    goto :goto_67

    .line 1729
    :cond_12
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_5e

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_1b

    goto :goto_5e

    .line 1731
    :cond_1b
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_55

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_24

    goto :goto_55

    .line 1733
    :cond_24
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_4c

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_2d

    goto :goto_4c

    .line 1735
    :cond_2d
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_43

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_36

    goto :goto_43

    .line 1737
    :cond_36
    const-class v0, Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1738
    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    :cond_42
    return-object p0

    .line 1736
    :cond_43
    :goto_43
    invoke-virtual {p0}, Ljava/math/BigDecimal;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1734
    :cond_4c
    :goto_4c
    invoke-virtual {p0}, Ljava/math/BigDecimal;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    return-object p0

    .line 1732
    :cond_55
    :goto_55
    invoke-virtual {p0}, Ljava/math/BigDecimal;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    .line 1730
    :cond_5e
    :goto_5e
    invoke-virtual {p0}, Ljava/math/BigDecimal;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0

    .line 1728
    :cond_67
    :goto_67
    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1726
    :cond_70
    :goto_70
    invoke-virtual {p0}, Ljava/math/BigDecimal;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public static coerceBigDecimals(Ljava/lang/reflect/AccessibleObject;[Ljava/lang/Object;)V
    .registers 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1674
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_4f

    .line 1675
    aget-object v2, p1, v1

    .line 1676
    instance-of v3, v2, Ljava/math/BigDecimal;

    if-eqz v3, :cond_4c

    if-nez v0, :cond_42

    .line 1678
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_19

    .line 1679
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_42

    .line 1680
    :cond_19
    instance-of v0, p0, Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_25

    .line 1681
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/Constructor;

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v0

    goto :goto_42

    .line 1683
    :cond_25
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Expected method or  constructor; callable is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1685
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1688
    :cond_42
    :goto_42
    check-cast v2, Ljava/math/BigDecimal;

    aget-object v3, v0, v1

    invoke-static {v2, v3}, Lfreemarker/ext/beans/BeansWrapper;->coerceBigDecimal(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v1

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4f
    return-void
.end method

.method public static coerceBigDecimals([Ljava/lang/Class;[Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1698
    array-length v0, p0

    .line 1699
    array-length v1, p1

    .line 1700
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v2, :cond_1c

    .line 1702
    aget-object v4, p1, v3

    .line 1703
    instance-of v5, v4, Ljava/math/BigDecimal;

    if-eqz v5, :cond_19

    .line 1704
    check-cast v4, Ljava/math/BigDecimal;

    aget-object v5, p0, v3

    invoke-static {v4, v5}, Lfreemarker/ext/beans/BeansWrapper;->coerceBigDecimal(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, p1, v3

    :cond_19
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_1c
    if-le v1, v0, :cond_35

    add-int/lit8 v2, v0, -0x1

    .line 1708
    aget-object p0, p0, v2

    :goto_22
    if-ge v0, v1, :cond_35

    .line 1710
    aget-object v2, p1, v0

    .line 1711
    instance-of v3, v2, Ljava/math/BigDecimal;

    if-eqz v3, :cond_32

    .line 1712
    check-cast v2, Ljava/math/BigDecimal;

    invoke-static {v2, p0}, Lfreemarker/ext/beans/BeansWrapper;->coerceBigDecimal(Ljava/math/BigDecimal;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, p1, v0

    :cond_32
    add-int/lit8 v0, v0, 0x1

    goto :goto_22

    :cond_35
    return-void
.end method

.method static forceUnwrappedNumberToType(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Number;",
            "Ljava/lang/Class<",
            "*>;Z)",
            "Ljava/lang/Number;"
        }
    .end annotation

    .line 1430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_7

    return-object p0

    .line 1432
    :cond_7
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_104

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_11

    goto/16 :goto_104

    .line 1434
    :cond_11
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_f4

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_1b

    goto/16 :goto_f4

    .line 1436
    :cond_1b
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_e4

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_25

    goto/16 :goto_e4

    .line 1438
    :cond_25
    const-class v0, Ljava/math/BigDecimal;

    if-ne p1, v0, :cond_51

    .line 1439
    instance-of p1, p0, Ljava/math/BigDecimal;

    if-eqz p1, :cond_2e

    return-object p0

    .line 1441
    :cond_2e
    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_3a

    .line 1442
    new-instance p1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    invoke-direct {p1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    return-object p1

    .line 1443
    :cond_3a
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_47

    .line 1445
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object p0

    return-object p0

    .line 1447
    :cond_47
    new-instance p1, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    invoke-direct {p1, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    return-object p1

    .line 1449
    :cond_51
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_d4

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_5b

    goto/16 :goto_d4

    .line 1451
    :cond_5b
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_c4

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_64

    goto :goto_c4

    .line 1453
    :cond_64
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_b4

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_6d

    goto :goto_b4

    .line 1455
    :cond_6d
    const-class v0, Ljava/math/BigInteger;

    if-ne p1, v0, :cond_a1

    .line 1456
    instance-of p1, p0, Ljava/math/BigInteger;

    if-eqz p1, :cond_76

    return-object p0

    :cond_76
    if-eqz p2, :cond_97

    .line 1459
    instance-of p1, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    if-eqz p1, :cond_83

    .line 1460
    check-cast p0, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;

    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$IntegerBigDecimal;->bigIntegerValue()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1461
    :cond_83
    instance-of p1, p0, Ljava/math/BigDecimal;

    if-eqz p1, :cond_8e

    .line 1462
    check-cast p0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1464
    :cond_8e
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0

    .line 1468
    :cond_97
    new-instance p1, Ljava/math/BigInteger;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1471
    :cond_a1
    instance-of p2, p0, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;

    if-eqz p2, :cond_ab

    check-cast p0, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;

    .line 1472
    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedNumberUtil$NumberWithFallbackType;->getSourceNumber()Ljava/lang/Number;

    move-result-object p0

    .line 1473
    :cond_ab
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b2

    return-object p0

    :cond_b2
    const/4 p0, 0x0

    return-object p0

    .line 1454
    :cond_b4
    :goto_b4
    instance-of p1, p0, Ljava/lang/Short;

    if-eqz p1, :cond_bb

    check-cast p0, Ljava/lang/Short;

    goto :goto_c3

    :cond_bb
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result p0

    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    :goto_c3
    return-object p0

    .line 1452
    :cond_c4
    :goto_c4
    instance-of p1, p0, Ljava/lang/Byte;

    if-eqz p1, :cond_cb

    check-cast p0, Ljava/lang/Byte;

    goto :goto_d3

    :cond_cb
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    :goto_d3
    return-object p0

    .line 1450
    :cond_d4
    :goto_d4
    instance-of p1, p0, Ljava/lang/Float;

    if-eqz p1, :cond_db

    check-cast p0, Ljava/lang/Float;

    goto :goto_e3

    :cond_db
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    :goto_e3
    return-object p0

    .line 1437
    :cond_e4
    :goto_e4
    instance-of p1, p0, Ljava/lang/Double;

    if-eqz p1, :cond_eb

    check-cast p0, Ljava/lang/Double;

    goto :goto_f3

    :cond_eb
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    :goto_f3
    return-object p0

    .line 1435
    :cond_f4
    :goto_f4
    instance-of p1, p0, Ljava/lang/Long;

    if-eqz p1, :cond_fb

    check-cast p0, Ljava/lang/Long;

    goto :goto_103

    :cond_fb
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    :goto_103
    return-object p0

    .line 1433
    :cond_104
    :goto_104
    instance-of p1, p0, Ljava/lang/Integer;

    if-eqz p1, :cond_10b

    check-cast p0, Ljava/lang/Integer;

    goto :goto_113

    :cond_10b
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    :goto_113
    return-object p0
.end method

.method public static final getDefaultInstance()Lfreemarker/ext/beans/BeansWrapper;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 887
    sget-object v0, Lfreemarker/ext/beans/BeansWrapperSingletonHolder;->INSTANCE:Lfreemarker/ext/beans/BeansWrapper;

    return-object v0
.end method

.method static is2321Bugfixed(Lfreemarker/template/Version;)Z
    .registers 2

    .line 844
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-lt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method static is2324Bugfixed(Lfreemarker/template/Version;)Z
    .registers 2

    .line 852
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_24:I

    if-lt p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method protected static normalizeIncompatibleImprovementsVersion(Lfreemarker/template/Version;)Lfreemarker/template/Version;
    .registers 3

    .line 860
    invoke-static {p0}, Lfreemarker/template/_TemplateAPI;->checkVersionNotNullAndSupported(Lfreemarker/template/Version;)V

    .line 861
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_0:I

    if-lt v0, v1, :cond_36

    .line 864
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_27:I

    if-lt v0, v1, :cond_16

    sget-object p0, Lfreemarker/template/Configuration;->VERSION_2_3_27:Lfreemarker/template/Version;

    goto :goto_35

    .line 865
    :cond_16
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_26:I

    if-ne v0, v1, :cond_21

    sget-object p0, Lfreemarker/template/Configuration;->VERSION_2_3_26:Lfreemarker/template/Version;

    goto :goto_35

    .line 866
    :cond_21
    invoke-static {p0}, Lfreemarker/ext/beans/BeansWrapper;->is2324Bugfixed(Lfreemarker/template/Version;)Z

    move-result v0

    if-eqz v0, :cond_2a

    sget-object p0, Lfreemarker/template/Configuration;->VERSION_2_3_24:Lfreemarker/template/Version;

    goto :goto_35

    .line 867
    :cond_2a
    invoke-static {p0}, Lfreemarker/ext/beans/BeansWrapper;->is2321Bugfixed(Lfreemarker/template/Version;)Z

    move-result p0

    if-eqz p0, :cond_33

    sget-object p0, Lfreemarker/template/Configuration;->VERSION_2_3_21:Lfreemarker/template/Version;

    goto :goto_35

    :cond_33
    sget-object p0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    :goto_35
    return-object p0

    .line 862
    :cond_36
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Version must be at least 2.3.0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private registerModelFactories()V
    .registers 3

    .line 735
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->staticModels:Lfreemarker/ext/beans/StaticModels;

    if-eqz v0, :cond_9

    .line 736
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/ClassIntrospector;->registerModelFactory(Lfreemarker/ext/beans/ClassBasedModelFactory;)V

    .line 738
    :cond_9
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->enumModels:Lfreemarker/ext/beans/ClassBasedModelFactory;

    if-eqz v0, :cond_12

    .line 739
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/ClassIntrospector;->registerModelFactory(Lfreemarker/ext/beans/ClassBasedModelFactory;)V

    .line 741
    :cond_12
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    if-eqz v0, :cond_1b

    .line 742
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v1, v0}, Lfreemarker/ext/beans/ClassIntrospector;->registerModelFactory(Lfreemarker/ext/util/ModelCache;)V

    :cond_1b
    return-void
.end method

.method private replaceClassIntrospector(Lfreemarker/ext/beans/ClassIntrospectorBuilder;)V
    .registers 5

    .line 693
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 695
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospector;

    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->sharedIntrospectionLock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/ClassIntrospector;-><init>(Lfreemarker/ext/beans/ClassIntrospectorBuilder;Ljava/lang/Object;)V

    .line 703
    iget-object p1, p0, Lfreemarker/ext/beans/BeansWrapper;->sharedIntrospectionLock:Ljava/lang/Object;

    monitor-enter p1

    .line 704
    :try_start_d
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    if-eqz v1, :cond_43

    .line 708
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapper;->staticModels:Lfreemarker/ext/beans/StaticModels;

    if-eqz v2, :cond_1d

    .line 709
    invoke-virtual {v1, v2}, Lfreemarker/ext/beans/ClassIntrospector;->unregisterModelFactory(Lfreemarker/ext/beans/ClassBasedModelFactory;)V

    .line 710
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapper;->staticModels:Lfreemarker/ext/beans/StaticModels;

    invoke-virtual {v2}, Lfreemarker/ext/beans/StaticModels;->clearCache()V

    .line 712
    :cond_1d
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapper;->enumModels:Lfreemarker/ext/beans/ClassBasedModelFactory;

    if-eqz v2, :cond_29

    .line 713
    invoke-virtual {v1, v2}, Lfreemarker/ext/beans/ClassIntrospector;->unregisterModelFactory(Lfreemarker/ext/beans/ClassBasedModelFactory;)V

    .line 714
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapper;->enumModels:Lfreemarker/ext/beans/ClassBasedModelFactory;

    invoke-virtual {v2}, Lfreemarker/ext/beans/ClassBasedModelFactory;->clearCache()V

    .line 716
    :cond_29
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    if-eqz v2, :cond_35

    .line 717
    invoke-virtual {v1, v2}, Lfreemarker/ext/beans/ClassIntrospector;->unregisterModelFactory(Lfreemarker/ext/util/ModelCache;)V

    .line 718
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    invoke-virtual {v1}, Lfreemarker/ext/util/ModelCache;->clearCache()V

    .line 720
    :cond_35
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->trueModel:Lfreemarker/ext/beans/BooleanModel;

    if-eqz v1, :cond_3c

    .line 721
    invoke-virtual {v1}, Lfreemarker/ext/beans/BooleanModel;->clearMemberCache()V

    .line 723
    :cond_3c
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->falseModel:Lfreemarker/ext/beans/BooleanModel;

    if-eqz v1, :cond_43

    .line 724
    invoke-virtual {v1}, Lfreemarker/ext/beans/BooleanModel;->clearMemberCache()V

    .line 728
    :cond_43
    iput-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    .line 730
    invoke-direct {p0}, Lfreemarker/ext/beans/BeansWrapper;->registerModelFactories()V

    .line 731
    monitor-exit p1

    return-void

    :catchall_4a
    move-exception v0

    monitor-exit p1
    :try_end_4c
    .catchall {:try_start_d .. :try_end_4c} :catchall_4a

    throw v0
.end method

.method private tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-eqz p1, :cond_26f

    .line 1072
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->nullModel:Lfreemarker/template/TemplateModel;

    if-ne p1, v0, :cond_8

    goto/16 :goto_26f

    .line 1076
    :cond_8
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->is2321Bugfixed()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1078
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1079
    invoke-static {p2}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    .line 1086
    :cond_18
    instance-of v1, p1, Lfreemarker/template/AdapterTemplateModel;

    if-eqz v1, :cond_45

    .line 1087
    move-object v1, p1

    check-cast v1, Lfreemarker/template/AdapterTemplateModel;

    invoke-interface {v1, p2}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 1089
    const-class v2, Ljava/lang/Object;

    if-eq p2, v2, :cond_44

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    goto :goto_44

    .line 1094
    :cond_2e
    const-class v2, Ljava/lang/Object;

    if-eq p2, v2, :cond_45

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_45

    invoke-static {p2}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_45

    .line 1095
    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, p2, v0}, Lfreemarker/ext/beans/BeansWrapper;->forceUnwrappedNumberToType(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_45

    :cond_44
    :goto_44
    return-object v1

    .line 1100
    :cond_45
    instance-of v1, p1, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v1, :cond_72

    .line 1101
    move-object v1, p1

    check-cast v1, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {v1}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object v1

    .line 1102
    const-class v2, Ljava/lang/Object;

    if-eq p2, v2, :cond_71

    invoke-virtual {p2, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_71

    .line 1107
    :cond_5b
    const-class v2, Ljava/lang/Object;

    if-eq p2, v2, :cond_72

    instance-of v2, v1, Ljava/lang/Number;

    if-eqz v2, :cond_72

    invoke-static {p2}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_72

    .line 1108
    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, p2, v0}, Lfreemarker/ext/beans/BeansWrapper;->forceUnwrappedNumberToType(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v1

    if-eqz v1, :cond_72

    :cond_71
    :goto_71
    return-object v1

    .line 1119
    :cond_72
    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p2, v1, :cond_161

    .line 1122
    const-class v1, Ljava/lang/String;

    if-ne v1, p2, :cond_8a

    .line 1123
    instance-of p2, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_87

    .line 1124
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1127
    :cond_87
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    .line 1131
    :cond_8a
    invoke-static {p2}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a2

    .line 1132
    instance-of v1, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz v1, :cond_a2

    .line 1133
    move-object v1, p1

    check-cast v1, Lfreemarker/template/TemplateNumberModel;

    .line 1134
    invoke-interface {v1}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object v1

    .line 1133
    invoke-static {v1, p2, v0}, Lfreemarker/ext/beans/BeansWrapper;->forceUnwrappedNumberToType(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_a2

    return-object v0

    .line 1141
    :cond_a2
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v0, p2, :cond_14f

    const-class v0, Ljava/lang/Boolean;

    if-ne v0, p2, :cond_ac

    goto/16 :goto_14f

    .line 1149
    :cond_ac
    const-class v0, Ljava/util/Map;

    if-ne v0, p2, :cond_bc

    .line 1150
    instance-of v0, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz v0, :cond_bc

    .line 1151
    new-instance p2, Lfreemarker/ext/beans/HashAdapter;

    check-cast p1, Lfreemarker/template/TemplateHashModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/HashAdapter;-><init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    .line 1155
    :cond_bc
    const-class v0, Ljava/util/List;

    if-ne v0, p2, :cond_cc

    .line 1156
    instance-of v0, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_cc

    .line 1157
    new-instance p2, Lfreemarker/ext/beans/SequenceAdapter;

    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/SequenceAdapter;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    .line 1161
    :cond_cc
    const-class v0, Ljava/util/Set;

    if-ne v0, p2, :cond_dc

    .line 1162
    instance-of v0, p1, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_dc

    .line 1163
    new-instance p2, Lfreemarker/ext/beans/SetAdapter;

    check-cast p1, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/SetAdapter;-><init>(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    .line 1167
    :cond_dc
    const-class v0, Ljava/util/Collection;

    if-eq v0, p2, :cond_e4

    const-class v0, Ljava/lang/Iterable;

    if-ne v0, p2, :cond_fc

    .line 1168
    :cond_e4
    instance-of v0, p1, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_f0

    .line 1169
    new-instance p2, Lfreemarker/ext/beans/CollectionAdapter;

    check-cast p1, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/CollectionAdapter;-><init>(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    .line 1172
    :cond_f0
    instance-of v0, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_fc

    .line 1173
    new-instance p2, Lfreemarker/ext/beans/SequenceAdapter;

    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/SequenceAdapter;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    .line 1178
    :cond_fc
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_110

    .line 1179
    instance-of p3, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p3, :cond_10d

    .line 1180
    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {p0, p1, p2, v3, p4}, Lfreemarker/ext/beans/BeansWrapper;->unwrapSequenceToArray(Lfreemarker/template/TemplateSequenceModel;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 1183
    :cond_10d
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    .line 1187
    :cond_110
    sget-object p4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, p2, :cond_133

    const-class p4, Ljava/lang/Character;

    if-ne p2, p4, :cond_119

    goto :goto_133

    .line 1198
    :cond_119
    const-class p4, Ljava/util/Date;

    invoke-virtual {p4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_161

    instance-of p4, p1, Lfreemarker/template/TemplateDateModel;

    if-eqz p4, :cond_161

    .line 1199
    move-object p4, p1

    check-cast p4, Lfreemarker/template/TemplateDateModel;

    invoke-interface {p4}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object p4

    .line 1200
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_161

    return-object p4

    .line 1188
    :cond_133
    :goto_133
    instance-of p2, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz p2, :cond_14c

    .line 1189
    check-cast p1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p1

    .line 1190
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p2, v3, :cond_14c

    .line 1191
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 1195
    :cond_14c
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    .line 1142
    :cond_14f
    :goto_14f
    instance-of p2, p1, Lfreemarker/template/TemplateBooleanModel;

    if-eqz p2, :cond_15e

    .line 1143
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 1146
    :cond_15e
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    :cond_161
    :goto_161
    if-eqz p3, :cond_167

    and-int/lit16 p4, p3, 0x800

    if-eqz p4, :cond_17b

    .line 1214
    :cond_167
    instance-of p4, p1, Lfreemarker/template/TemplateNumberModel;

    if-eqz p4, :cond_17b

    .line 1216
    move-object p4, p1

    check-cast p4, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {p4}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p4

    if-nez p3, :cond_17a

    .line 1217
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17b

    :cond_17a
    return-object p4

    :cond_17b
    if-eqz p3, :cond_181

    and-int/lit16 p4, p3, 0x1000

    if-eqz p4, :cond_195

    .line 1221
    :cond_181
    instance-of p4, p1, Lfreemarker/template/TemplateDateModel;

    if-eqz p4, :cond_195

    .line 1223
    move-object p4, p1

    check-cast p4, Lfreemarker/template/TemplateDateModel;

    invoke-interface {p4}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object p4

    if-nez p3, :cond_194

    .line 1224
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_195

    :cond_194
    return-object p4

    :cond_195
    if-eqz p3, :cond_19d

    const p4, 0x82000

    and-int/2addr p4, p3

    if-eqz p4, :cond_1d8

    .line 1228
    :cond_19d
    instance-of p4, p1, Lfreemarker/template/TemplateScalarModel;

    if-eqz p4, :cond_1d8

    if-nez p3, :cond_1ab

    const-class p4, Ljava/lang/String;

    .line 1230
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_1d8

    .line 1231
    :cond_1ab
    move-object p4, p1

    check-cast p4, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p4}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p4

    if-eqz p3, :cond_1d7

    const/high16 v0, 0x80000

    and-int/2addr v0, p3

    if-nez v0, :cond_1ba

    goto :goto_1d7

    .line 1235
    :cond_1ba
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    if-ne v0, v3, :cond_1d3

    and-int/lit16 p1, p3, 0x2000

    if-eqz p1, :cond_1ca

    .line 1237
    new-instance p1, Lfreemarker/ext/beans/CharacterOrString;

    invoke-direct {p1, p4}, Lfreemarker/ext/beans/CharacterOrString;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 1239
    :cond_1ca
    invoke-virtual {p4, v2}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    :cond_1d3
    and-int/lit16 v0, p3, 0x2000

    if-eqz v0, :cond_1d8

    :cond_1d7
    :goto_1d7
    return-object p4

    :cond_1d8
    if-eqz p3, :cond_1de

    and-int/lit16 p4, p3, 0x4000

    if-eqz p4, :cond_1f7

    .line 1248
    :cond_1de
    instance-of p4, p1, Lfreemarker/template/TemplateBooleanModel;

    if-eqz p4, :cond_1f7

    if-nez p3, :cond_1ec

    const-class p4, Ljava/lang/Boolean;

    .line 1250
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_1f7

    .line 1251
    :cond_1ec
    check-cast p1, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p1}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    :cond_1f7
    if-eqz p3, :cond_1ff

    const p4, 0x8000

    and-int/2addr p4, p3

    if-eqz p4, :cond_215

    .line 1253
    :cond_1ff
    instance-of p4, p1, Lfreemarker/template/TemplateHashModel;

    if-eqz p4, :cond_215

    if-nez p3, :cond_20d

    const-class p4, Lfreemarker/ext/beans/HashAdapter;

    .line 1255
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_215

    .line 1256
    :cond_20d
    new-instance p2, Lfreemarker/ext/beans/HashAdapter;

    check-cast p1, Lfreemarker/template/TemplateHashModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/HashAdapter;-><init>(Lfreemarker/template/TemplateHashModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    :cond_215
    if-eqz p3, :cond_21c

    const/high16 p4, 0x10000

    and-int/2addr p4, p3

    if-eqz p4, :cond_232

    .line 1258
    :cond_21c
    instance-of p4, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p4, :cond_232

    if-nez p3, :cond_22a

    const-class p4, Lfreemarker/ext/beans/SequenceAdapter;

    .line 1260
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_232

    .line 1261
    :cond_22a
    new-instance p2, Lfreemarker/ext/beans/SequenceAdapter;

    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/SequenceAdapter;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    :cond_232
    if-eqz p3, :cond_239

    const/high16 p4, 0x20000

    and-int/2addr p4, p3

    if-eqz p4, :cond_24f

    .line 1263
    :cond_239
    instance-of p4, p1, Lfreemarker/template/TemplateCollectionModel;

    if-eqz p4, :cond_24f

    if-nez p3, :cond_247

    const-class p4, Lfreemarker/ext/beans/SetAdapter;

    .line 1265
    invoke-virtual {p2, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_24f

    .line 1266
    :cond_247
    new-instance p2, Lfreemarker/ext/beans/SetAdapter;

    check-cast p1, Lfreemarker/template/TemplateCollectionModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/SetAdapter;-><init>(Lfreemarker/template/TemplateCollectionModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    :cond_24f
    const/high16 p4, 0x40000

    and-int/2addr p4, p3

    if-eqz p4, :cond_260

    .line 1272
    instance-of p4, p1, Lfreemarker/template/TemplateSequenceModel;

    if-eqz p4, :cond_260

    .line 1274
    new-instance p2, Lfreemarker/ext/beans/SequenceAdapter;

    check-cast p1, Lfreemarker/template/TemplateSequenceModel;

    invoke-direct {p2, p1, p0}, Lfreemarker/ext/beans/SequenceAdapter;-><init>(Lfreemarker/template/TemplateSequenceModel;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object p2

    :cond_260
    if-nez p3, :cond_26c

    .line 1285
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_269

    return-object p1

    .line 1289
    :cond_269
    sget-object p1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    return-object p1

    :cond_26c
    move p3, v2

    goto/16 :goto_161

    :cond_26f
    :goto_26f
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method arrayToList(Ljava/lang/Object;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1412
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_15

    .line 1415
    check-cast p1, [Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    .line 1416
    array-length v0, p1

    if-nez v0, :cond_e

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_14

    :cond_e
    new-instance v0, Lfreemarker/ext/beans/NonPrimitiveArrayBackedReadOnlyList;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/NonPrimitiveArrayBackedReadOnlyList;-><init>([Ljava/lang/Object;)V

    move-object p1, v0

    :goto_14
    return-object p1

    .line 1419
    :cond_15
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1e

    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_24

    :cond_1e
    new-instance v0, Lfreemarker/ext/beans/PrimtiveArrayBackedReadOnlyList;

    invoke-direct {v0, p1}, Lfreemarker/ext/beans/PrimtiveArrayBackedReadOnlyList;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_24
    return-object p1
.end method

.method protected checkModifiable()V
    .registers 4

    .line 426
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper;->writeProtected:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t modify the "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " object, as it was write protected."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearClassIntrospecitonCache()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1633
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->clearCache()V

    return-void
.end method

.method public clearClassIntrospectionCache()V
    .registers 2

    .line 1647
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->clearCache()V

    return-void
.end method

.method protected finalizeConstruction(Z)V
    .registers 2

    if-eqz p1, :cond_5

    .line 383
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->writeProtect()V

    .line 391
    :cond_5
    invoke-direct {p0}, Lfreemarker/ext/beans/BeansWrapper;->registerModelFactories()V

    return-void
.end method

.method protected finetuneMethodAppearance(Ljava/lang/Class;Ljava/lang/reflect/Method;Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Method;",
            "Lfreemarker/ext/beans/BeansWrapper$MethodAppearanceDecision;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method getClassIntrospector()Lfreemarker/ext/beans/ClassIntrospector;
    .registers 2

    .line 1651
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    return-object v0
.end method

.method public getDefaultDateType()I
    .registers 2

    .line 792
    iget v0, p0, Lfreemarker/ext/beans/BeansWrapper;->defaultDateType:I

    return v0
.end method

.method public getEnumModels()Lfreemarker/template/TemplateHashModel;
    .registers 3

    .line 1546
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->enumModels:Lfreemarker/ext/beans/ClassBasedModelFactory;

    if-eqz v0, :cond_5

    return-object v0

    .line 1547
    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Enums not supported before J2SE 5."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getExposureLevel()I
    .registers 2

    .line 576
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getExposureLevel()I

    move-result v0

    return v0
.end method

.method public getIncompatibleImprovements()Lfreemarker/template/Version;
    .registers 2

    .line 836
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->incompatibleImprovements:Lfreemarker/template/Version;

    return-object v0
.end method

.method protected getInstance(Ljava/lang/Object;Lfreemarker/ext/util/ModelFactory;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 949
    invoke-interface {p2, p1, p0}, Lfreemarker/ext/util/ModelFactory;->create(Ljava/lang/Object;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;
    .registers 2

    .line 643
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    return-object v0
.end method

.method getMethodSorter()Lfreemarker/ext/beans/MethodSorter;
    .registers 2

    .line 661
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getMethodSorter()Lfreemarker/ext/beans/MethodSorter;

    move-result-object v0

    return-object v0
.end method

.method getModelCache()Lfreemarker/ext/util/ModelCache;
    .registers 2

    .line 1555
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    return-object v0
.end method

.method protected getModelFactory(Ljava/lang/Class;)Lfreemarker/ext/util/ModelFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lfreemarker/ext/util/ModelFactory;"
        }
    .end annotation

    .line 971
    const-class v0, Ljava/util/Map;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 972
    iget-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapper;->simpleMapWrapper:Z

    if-eqz p1, :cond_f

    sget-object p1, Lfreemarker/ext/beans/SimpleMapModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    goto :goto_11

    :cond_f
    sget-object p1, Lfreemarker/ext/beans/MapModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    :goto_11
    return-object p1

    .line 974
    :cond_12
    const-class v0, Ljava/util/Collection;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 975
    sget-object p1, Lfreemarker/ext/beans/CollectionModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 977
    :cond_1d
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 978
    sget-object p1, Lfreemarker/ext/beans/NumberModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 980
    :cond_28
    const-class v0, Ljava/util/Date;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_33

    .line 981
    sget-object p1, Lfreemarker/ext/beans/DateModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 983
    :cond_33
    const-class v0, Ljava/lang/Boolean;

    if-ne v0, p1, :cond_3a

    .line 984
    iget-object p1, p0, Lfreemarker/ext/beans/BeansWrapper;->BOOLEAN_FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 986
    :cond_3a
    const-class v0, Ljava/util/ResourceBundle;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 987
    sget-object p1, Lfreemarker/ext/beans/ResourceBundleModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 989
    :cond_45
    const-class v0, Ljava/util/Iterator;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 990
    sget-object p1, Lfreemarker/ext/beans/BeansWrapper;->ITERATOR_FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 992
    :cond_50
    const-class v0, Ljava/util/Enumeration;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 993
    sget-object p1, Lfreemarker/ext/beans/BeansWrapper;->ENUMERATION_FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 995
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result p1

    if-eqz p1, :cond_64

    .line 996
    sget-object p1, Lfreemarker/ext/beans/ArrayModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1

    .line 998
    :cond_64
    sget-object p1, Lfreemarker/ext/beans/StringModel;->FACTORY:Lfreemarker/ext/util/ModelFactory;

    return-object p1
.end method

.method public getOuterIdentity()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 482
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public getPreferIndexedReadMethod()Z
    .registers 2

    .line 529
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper;->preferIndexedReadMethod:Z

    return v0
.end method

.method getSharedIntrospectionLock()Ljava/lang/Object;
    .registers 2

    .line 416
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->sharedIntrospectionLock:Ljava/lang/Object;

    return-object v0
.end method

.method public getStaticModels()Lfreemarker/template/TemplateHashModel;
    .registers 2

    .line 1526
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->staticModels:Lfreemarker/ext/beans/StaticModels;

    return-object v0
.end method

.method public getTreatDefaultMethodsAsBeanMembers()Z
    .registers 2

    .line 639
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getTreatDefaultMethodsAsBeanMembers()Z

    move-result v0

    return v0
.end method

.method public getUseCache()Z
    .registers 2

    .line 811
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    invoke-virtual {v0}, Lfreemarker/ext/util/ModelCache;->getUseCache()Z

    move-result v0

    return v0
.end method

.method invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1505
    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 1507
    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p2

    sget-object p3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p2, p3, :cond_f

    sget-object p1, Lfreemarker/template/TemplateModel;->NOTHING:Lfreemarker/template/TemplateModel;

    goto :goto_17

    .line 1509
    :cond_f
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->getOuterIdentity()Lfreemarker/template/ObjectWrapper;

    move-result-object p2

    invoke-interface {p2, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    :goto_17
    return-object p1
.end method

.method is2321Bugfixed()Z
    .registers 2

    .line 840
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/beans/BeansWrapper;->is2321Bugfixed(Lfreemarker/template/Version;)Z

    move-result v0

    return v0
.end method

.method is2324Bugfixed()Z
    .registers 2

    .line 848
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/ext/beans/BeansWrapper;->is2324Bugfixed(Lfreemarker/template/Version;)Z

    move-result v0

    return v0
.end method

.method public isClassIntrospectionCacheRestricted()Z
    .registers 2

    .line 685
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getHasSharedInstanceRestrictons()Z

    move-result v0

    return v0
.end method

.method public isExposeFields()Z
    .registers 2

    .line 632
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getExposeFields()Z

    move-result v0

    return v0
.end method

.method isMethodsShadowItems()Z
    .registers 2

    .line 766
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper;->methodsShadowItems:Z

    return v0
.end method

.method public isSimpleMapWrapper()Z
    .registers 2

    .line 520
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper;->simpleMapWrapper:Z

    return v0
.end method

.method public isStrict()Z
    .registers 2

    .line 434
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper;->strict:Z

    return v0
.end method

.method public isWriteProtected()Z
    .registers 2

    .line 412
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper;->writeProtected:Z

    return v0
.end method

.method listToArray(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1339
    instance-of v0, p1, Lfreemarker/ext/beans/SequenceAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 1340
    check-cast p1, Lfreemarker/ext/beans/SequenceAdapter;

    .line 1341
    invoke-virtual {p1}, Lfreemarker/ext/beans/SequenceAdapter;->getTemplateSequenceModel()Lfreemarker/template/TemplateSequenceModel;

    move-result-object p1

    .line 1340
    invoke-virtual {p0, p1, p2, v1, p3}, Lfreemarker/ext/beans/BeansWrapper;->unwrapSequenceToArray(Lfreemarker/template/TemplateSequenceModel;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_10
    if-eqz p3, :cond_19

    .line 1347
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    return-object v0

    .line 1352
    :cond_19
    new-instance p3, Ljava/util/IdentityHashMap;

    invoke-direct {p3}, Ljava/util/IdentityHashMap;-><init>()V

    .line 1354
    :cond_1e
    invoke-virtual {p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p2

    .line 1355
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 1356
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1362
    :try_start_2d
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_35
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10a

    .line 1363
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_bf

    .line 1364
    invoke-virtual {p2, v7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_bf

    const/4 v8, 0x1

    if-nez v3, :cond_55

    .line 1367
    invoke-static {p2}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result v4

    .line 1368
    const-class v3, Ljava/util/List;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    move v3, v8

    :cond_55
    if-eqz v4, :cond_62

    .line 1371
    instance-of v9, v7, Ljava/lang/Number;

    if-eqz v9, :cond_62

    .line 1372
    check-cast v7, Ljava/lang/Number;

    invoke-static {v7, p2, v8}, Lfreemarker/ext/beans/BeansWrapper;->forceUnwrappedNumberToType(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v7

    goto :goto_bf

    .line 1373
    :cond_62
    const-class v9, Ljava/lang/String;

    if-ne p2, v9, :cond_75

    instance-of v9, v7, Ljava/lang/Character;

    if-eqz v9, :cond_75

    .line 1374
    check-cast v7, Ljava/lang/Character;

    invoke-virtual {v7}, Ljava/lang/Character;->charValue()C

    move-result v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v7

    goto :goto_bf

    .line 1375
    :cond_75
    const-class v9, Ljava/lang/Character;

    if-eq p2, v9, :cond_7d

    sget-object v9, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v9, :cond_93

    :cond_7d
    instance-of v9, v7, Ljava/lang/String;

    if-eqz v9, :cond_93

    .line 1377
    move-object v9, v7

    check-cast v9, Ljava/lang/String;

    .line 1378
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    if-ne v10, v8, :cond_bf

    .line 1379
    invoke-virtual {v9, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    goto :goto_bf

    .line 1381
    :cond_93
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_af

    .line 1382
    instance-of v8, v7, Ljava/util/List;

    if-eqz v8, :cond_a4

    .line 1383
    check-cast v7, Ljava/util/List;

    invoke-virtual {p0, v7, p2, p3}, Lfreemarker/ext/beans/BeansWrapper;->listToArray(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_bf

    .line 1384
    :cond_a4
    instance-of v8, v7, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v8, :cond_bf

    .line 1385
    check-cast v7, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {p0, v7, p2, v1, p3}, Lfreemarker/ext/beans/BeansWrapper;->unwrapSequenceToArray(Lfreemarker/template/TemplateSequenceModel;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;

    move-result-object v7

    goto :goto_bf

    :cond_af
    if-eqz v5, :cond_bf

    .line 1387
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->isArray()Z

    move-result v8

    if-eqz v8, :cond_bf

    .line 1388
    invoke-virtual {p0, v7}, Lfreemarker/ext/beans/BeansWrapper;->arrayToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7
    :try_end_bf
    .catchall {:try_start_2d .. :try_end_bf} :catchall_10e

    .line 1392
    :cond_bf
    :goto_bf
    :try_start_bf
    invoke-static {v0, v6, v7}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_c2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bf .. :try_end_c2} :catch_c6
    .catchall {:try_start_bf .. :try_end_c2} :catchall_10e

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_35

    :catch_c6
    move-exception p2

    .line 1394
    :try_start_c7
    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1395
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " object to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1396
    invoke-static {v0}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ": Problematic List item at index "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with value type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1398
    invoke-static {v7}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_10a
    .catchall {:try_start_c7 .. :try_end_10a} :catchall_10e

    .line 1403
    :cond_10a
    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :catchall_10e
    move-exception p2

    invoke-interface {p3, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1404
    throw p2
.end method

.method public newInstance(Ljava/lang/Class;Ljava/util/List;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const-string v0, "Class "

    .line 1569
    :try_start_2
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v1, p1}, Lfreemarker/ext/beans/ClassIntrospector;->get(Ljava/lang/Class;)Ljava/util/Map;

    move-result-object v1

    sget-object v2, Lfreemarker/ext/beans/ClassIntrospector;->CONSTRUCTORS_KEY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 1576
    instance-of v0, v1, Lfreemarker/ext/beans/SimpleMethod;

    const/4 v2, 0x0

    if-eqz v0, :cond_33

    .line 1577
    check-cast v1, Lfreemarker/ext/beans/SimpleMethod;

    .line 1578
    invoke-virtual {v1}, Lfreemarker/ext/beans/SimpleMethod;->getMember()Ljava/lang/reflect/Member;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Constructor;

    .line 1579
    invoke-virtual {v1, p2, p0}, Lfreemarker/ext/beans/SimpleMethod;->unwrapArguments(Ljava/util/List;Lfreemarker/ext/beans/BeansWrapper;)[Ljava/lang/Object;

    move-result-object p2
    :try_end_21
    .catch Lfreemarker/template/TemplateModelException; {:try_start_2 .. :try_end_21} :catch_96
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_21} :catch_76

    .line 1581
    :try_start_21
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_26
    .catch Lfreemarker/template/TemplateModelException; {:try_start_21 .. :try_end_25} :catch_96

    return-object p1

    :catch_26
    move-exception p2

    .line 1583
    :try_start_27
    instance-of v1, p2, Lfreemarker/template/TemplateModelException;

    if-eqz v1, :cond_2e

    check-cast p2, Lfreemarker/template/TemplateModelException;

    throw p2

    .line 1584
    :cond_2e
    invoke-static {v2, v0, p2}, Lfreemarker/ext/beans/_MethodUtil;->newInvocationTemplateModelException(Ljava/lang/Object;Ljava/lang/reflect/Member;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p2

    throw p2

    .line 1586
    :cond_33
    instance-of v0, v1, Lfreemarker/ext/beans/OverloadedMethods;

    if-eqz v0, :cond_53

    .line 1587
    check-cast v1, Lfreemarker/ext/beans/OverloadedMethods;

    invoke-virtual {v1, p2, p0}, Lfreemarker/ext/beans/OverloadedMethods;->getMemberAndArguments(Ljava/util/List;Lfreemarker/ext/beans/BeansWrapper;)Lfreemarker/ext/beans/MemberAndArguments;

    move-result-object p2
    :try_end_3d
    .catch Lfreemarker/template/TemplateModelException; {:try_start_27 .. :try_end_3d} :catch_96
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_3d} :catch_76

    .line 1589
    :try_start_3d
    invoke-virtual {p2, p0}, Lfreemarker/ext/beans/MemberAndArguments;->invokeConstructor(Lfreemarker/ext/beans/BeansWrapper;)Ljava/lang/Object;

    move-result-object p1
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_3d .. :try_end_41} :catch_42
    .catch Lfreemarker/template/TemplateModelException; {:try_start_3d .. :try_end_41} :catch_96

    return-object p1

    :catch_42
    move-exception v0

    .line 1591
    :try_start_43
    instance-of v1, v0, Lfreemarker/template/TemplateModelException;

    if-eqz v1, :cond_4a

    check-cast v0, Lfreemarker/template/TemplateModelException;

    throw v0

    .line 1593
    :cond_4a
    invoke-virtual {p2}, Lfreemarker/ext/beans/MemberAndArguments;->getCallableMemberDescriptor()Lfreemarker/ext/beans/CallableMemberDescriptor;

    move-result-object p2

    invoke-static {v2, p2, v0}, Lfreemarker/ext/beans/_MethodUtil;->newInvocationTemplateModelException(Ljava/lang/Object;Lfreemarker/ext/beans/CallableMemberDescriptor;Ljava/lang/Throwable;)Lfreemarker/template/TemplateModelException;

    move-result-object p2

    throw p2

    .line 1597
    :cond_53
    new-instance p2, Lfreemarker/core/BugException;

    invoke-direct {p2}, Lfreemarker/core/BugException;-><init>()V

    throw p2

    .line 1571
    :cond_59
    new-instance p2, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " has no public constructors."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_76
    .catch Lfreemarker/template/TemplateModelException; {:try_start_43 .. :try_end_76} :catch_96
    .catch Ljava/lang/Exception; {:try_start_43 .. :try_end_76} :catch_76

    :catch_76
    move-exception p2

    .line 1602
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error while creating new instance of class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; see cause exception"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_96
    move-exception p1

    .line 1600
    throw p1
.end method

.method public removeFromClassIntrospectionCache(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1616
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospector;->remove(Ljava/lang/Class;)V

    return-void
.end method

.method public setDefaultDateType(I)V
    .registers 2

    .line 779
    monitor-enter p0

    .line 780
    :try_start_1
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 782
    iput p1, p0, Lfreemarker/ext/beans/BeansWrapper;->defaultDateType:I

    .line 783
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public setExposeFields(Z)V
    .registers 3

    .line 590
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 592
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getExposeFields()Z

    move-result v0

    if-eq v0, p1, :cond_17

    .line 593
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->createBuilder()Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    move-result-object v0

    .line 594
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setExposeFields(Z)V

    .line 595
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/BeansWrapper;->replaceClassIntrospector(Lfreemarker/ext/beans/ClassIntrospectorBuilder;)V

    :cond_17
    return-void
.end method

.method public setExposureLevel(I)V
    .registers 3

    .line 563
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 565
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getExposureLevel()I

    move-result v0

    if-eq v0, p1, :cond_17

    .line 566
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->createBuilder()Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    move-result-object v0

    .line 567
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setExposureLevel(I)V

    .line 568
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/BeansWrapper;->replaceClassIntrospector(Lfreemarker/ext/beans/ClassIntrospectorBuilder;)V

    :cond_17
    return-void
.end method

.method public setMethodAppearanceFineTuner(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V
    .registers 3

    .line 651
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 653
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    if-eq v0, p1, :cond_17

    .line 654
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->createBuilder()Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    move-result-object v0

    .line 655
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setMethodAppearanceFineTuner(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V

    .line 656
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/BeansWrapper;->replaceClassIntrospector(Lfreemarker/ext/beans/ClassIntrospectorBuilder;)V

    :cond_17
    return-void
.end method

.method setMethodSorter(Lfreemarker/ext/beans/MethodSorter;)V
    .registers 3

    .line 665
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 667
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getMethodSorter()Lfreemarker/ext/beans/MethodSorter;

    move-result-object v0

    if-eq v0, p1, :cond_17

    .line 668
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->createBuilder()Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    move-result-object v0

    .line 669
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setMethodSorter(Lfreemarker/ext/beans/MethodSorter;)V

    .line 670
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/BeansWrapper;->replaceClassIntrospector(Lfreemarker/ext/beans/ClassIntrospectorBuilder;)V

    :cond_17
    return-void
.end method

.method public setMethodsShadowItems(Z)V
    .registers 2

    .line 759
    monitor-enter p0

    .line 760
    :try_start_1
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 761
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapper;->methodsShadowItems:Z

    .line 762
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_8

    throw p1
.end method

.method public setNullModel(Lfreemarker/template/TemplateModel;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 825
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 826
    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapper;->nullModel:Lfreemarker/template/TemplateModel;

    return-void
.end method

.method public setOuterIdentity(Lfreemarker/template/ObjectWrapper;)V
    .registers 2

    .line 473
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 474
    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapper;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public setPreferIndexedReadMethod(Z)V
    .registers 2

    .line 553
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 554
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapper;->preferIndexedReadMethod:Z

    return-void
.end method

.method public setSimpleMapWrapper(Z)V
    .registers 2

    .line 509
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 510
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapper;->simpleMapWrapper:Z

    return-void
.end method

.method public setStrict(Z)V
    .registers 2

    .line 459
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 460
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapper;->strict:Z

    return-void
.end method

.method public setTreatDefaultMethodsAsBeanMembers(Z)V
    .registers 3

    .line 615
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 617
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->getTreatDefaultMethodsAsBeanMembers()Z

    move-result v0

    if-eq v0, p1, :cond_17

    .line 618
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospector;->createBuilder()Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    move-result-object v0

    .line 619
    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setTreatDefaultMethodsAsBeanMembers(Z)V

    .line 620
    invoke-direct {p0, v0}, Lfreemarker/ext/beans/BeansWrapper;->replaceClassIntrospector(Lfreemarker/ext/beans/ClassIntrospectorBuilder;)V

    :cond_17
    return-void
.end method

.method public setUseCache(Z)V
    .registers 3

    .line 803
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->checkModifiable()V

    .line 804
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/ModelCache;->setUseCache(Z)V

    return-void
.end method

.method protected toPropertiesString()Ljava/lang/String;
    .registers 4

    .line 1769
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "simpleMapWrapper="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lfreemarker/ext/beans/BeansWrapper;->simpleMapWrapper:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exposureLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    .line 1770
    invoke-virtual {v1}, Lfreemarker/ext/beans/ClassIntrospector;->getExposureLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", exposeFields="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    .line 1771
    invoke-virtual {v1}, Lfreemarker/ext/beans/ClassIntrospector;->getExposeFields()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", preferIndexedReadMethod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lfreemarker/ext/beans/BeansWrapper;->preferIndexedReadMethod:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", treatDefaultMethodsAsBeanMembers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    .line 1774
    invoke-virtual {v1}, Lfreemarker/ext/beans/ClassIntrospector;->getTreatDefaultMethodsAsBeanMembers()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sharedClassIntrospCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    .line 1776
    invoke-virtual {v1}, Lfreemarker/ext/beans/ClassIntrospector;->isShared()Z

    move-result v1

    if-eqz v1, :cond_6d

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapper;->classIntrospector:Lfreemarker/ext/beans/ClassIntrospector;

    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_6f

    :cond_6d
    const-string v1, "none"

    :goto_6f
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1752
    invoke-virtual {p0}, Lfreemarker/ext/beans/BeansWrapper;->toPropertiesString()Ljava/lang/String;

    move-result-object v0

    .line 1753
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapper;->incompatibleImprovements:Lfreemarker/template/Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1755
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", ..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_4d

    :cond_4b
    const-string v0, ""

    :goto_4d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1045
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/ext/beans/BeansWrapper;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1057
    invoke-direct {p0, p1, p2, p3, v0}, Lfreemarker/ext/beans/BeansWrapper;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    and-int/lit8 p2, p3, 0x1

    if-eqz p2, :cond_13

    .line 1058
    instance-of p2, p1, Ljava/lang/Number;

    if-eqz p2, :cond_13

    .line 1060
    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p3}, Lfreemarker/ext/beans/OverloadedNumberUtil;->addFallbackType(Ljava/lang/Number;I)Ljava/lang/Number;

    move-result-object p1

    :cond_13
    return-object p1
.end method

.method public unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1015
    const-class v0, Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, Lfreemarker/ext/beans/BeansWrapper;->unwrap(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public unwrap(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateModel;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 1033
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/beans/BeansWrapper;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 1034
    sget-object v1, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-eq v0, v1, :cond_9

    return-object v0

    .line 1035
    :cond_9
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can not unwrap model of type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " to type "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method unwrapSequenceToArray(Lfreemarker/template/TemplateSequenceModel;Ljava/lang/Class;ZLjava/util/Map;)Ljava/lang/Object;
    .registers 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lfreemarker/template/TemplateSequenceModel;",
            "Ljava/lang/Class<",
            "*>;Z",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p4

    if-eqz v0, :cond_d

    .line 1302
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_12

    return-object v2

    .line 1307
    :cond_d
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    :cond_12
    move-object v2, v0

    .line 1309
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 1310
    invoke-interface/range {p1 .. p1}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v3

    .line 1311
    invoke-static {v0, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 1312
    invoke-interface {v2, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x0

    move v6, v5

    :goto_24
    if-ge v6, v3, :cond_76

    .line 1315
    :try_start_26
    invoke-interface {v1, v6}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v7
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_6f

    move-object/from16 v8, p0

    .line 1316
    :try_start_2c
    invoke-direct {v8, v7, v0, v5, v2}, Lfreemarker/ext/beans/BeansWrapper;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;ILjava/util/Map;)Ljava/lang/Object;

    move-result-object v9

    .line 1317
    sget-object v10, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-ne v9, v10, :cond_67

    if-eqz p3, :cond_3c

    .line 1319
    sget-object v0, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;
    :try_end_38
    .catchall {:try_start_2c .. :try_end_38} :catchall_6d

    .line 1332
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 1321
    :cond_3c
    :try_start_3c
    new-instance v0, Lfreemarker/core/_TemplateModelException;

    const-string v9, "Failed to convert "

    new-instance v10, Lfreemarker/core/_DelayedFTLTypeDescription;

    invoke-direct {v10, v1}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    const-string v11, " object to "

    new-instance v12, Lfreemarker/core/_DelayedShortClassName;

    .line 1323
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {v12, v3}, Lfreemarker/core/_DelayedShortClassName;-><init>(Ljava/lang/Class;)V

    const-string v13, ": Problematic sequence item at index "

    .line 1324
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, " with value type: "

    new-instance v3, Lfreemarker/core/_DelayedFTLTypeDescription;

    invoke-direct {v3, v7}, Lfreemarker/core/_DelayedFTLTypeDescription;-><init>(Lfreemarker/template/TemplateModel;)V

    move-object/from16 v16, v3

    filled-new-array/range {v9 .. v16}, [Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v3}, Lfreemarker/core/_TemplateModelException;-><init>([Ljava/lang/Object;)V

    throw v0

    .line 1329
    :cond_67
    invoke-static {v4, v6, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V
    :try_end_6a
    .catchall {:try_start_3c .. :try_end_6a} :catchall_6d

    add-int/lit8 v6, v6, 0x1

    goto :goto_24

    :catchall_6d
    move-exception v0

    goto :goto_72

    :catchall_6f
    move-exception v0

    move-object/from16 v8, p0

    .line 1332
    :goto_72
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    throw v0

    :cond_76
    move-object/from16 v8, p0

    .line 1332
    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object v4
.end method

.method public wrap(Ljava/lang/Object;Ljava/lang/reflect/Method;)Lfreemarker/template/TemplateMethodModelEx;
    .registers 5

    .line 930
    new-instance v0, Lfreemarker/ext/beans/SimpleMethodModel;

    invoke-virtual {p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1, p0}, Lfreemarker/ext/beans/SimpleMethodModel;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Class;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object v0
.end method

.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-nez p1, :cond_5

    .line 911
    iget-object p1, p0, Lfreemarker/ext/beans/BeansWrapper;->nullModel:Lfreemarker/template/TemplateModel;

    return-object p1

    .line 912
    :cond_5
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapper;->modelCache:Lfreemarker/ext/util/ModelCache;

    invoke-virtual {v0, p1}, Lfreemarker/ext/util/ModelCache;->getInstance(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public wrapAsAPI(Ljava/lang/Object;)Lfreemarker/template/TemplateHashModel;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 937
    new-instance v0, Lfreemarker/ext/beans/APIModel;

    invoke-direct {v0, p1, p0}, Lfreemarker/ext/beans/APIModel;-><init>(Ljava/lang/Object;Lfreemarker/ext/beans/BeansWrapper;)V

    return-object v0
.end method

.method public writeProtect()V
    .registers 2

    const/4 v0, 0x1

    .line 405
    iput-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapper;->writeProtected:Z

    return-void
.end method
