.class final Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;
.super Lfreemarker/ext/beans/CallableMemberDescriptor;
.source "ArgumentTypes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/ArgumentTypes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SpecialConversionCallableMemberDescriptor"
.end annotation


# instance fields
.field private final callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;


# direct methods
.method constructor <init>(Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;)V
    .registers 2

    .line 647
    invoke-direct {p0}, Lfreemarker/ext/beans/CallableMemberDescriptor;-><init>()V

    .line 648
    iput-object p1, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    return-void
.end method

.method private convertArgsToReflectionCompatible(Lfreemarker/ext/beans/BeansWrapper;[Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 696
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object v0

    .line 697
    array-length v1, v0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v1, :cond_72

    .line 699
    aget-object v3, v0, v2

    .line 700
    aget-object v4, p2, v2

    if-nez v4, :cond_11

    goto :goto_6f

    .line 713
    :cond_11
    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_25

    instance-of v5, v4, Ljava/util/List;

    if-eqz v5, :cond_25

    .line 714
    move-object v5, v4

    check-cast v5, Ljava/util/List;

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v3, v6}, Lfreemarker/ext/beans/BeansWrapper;->listToArray(Ljava/util/List;Ljava/lang/Class;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, p2, v2

    .line 716
    :cond_25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->isArray()Z

    move-result v5

    if-eqz v5, :cond_3d

    const-class v5, Ljava/util/List;

    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3d

    .line 717
    invoke-virtual {p1, v4}, Lfreemarker/ext/beans/BeansWrapper;->arrayToList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aput-object v5, p2, v2

    .line 721
    :cond_3d
    instance-of v5, v4, Lfreemarker/ext/beans/CharacterOrString;

    if-eqz v5, :cond_6f

    .line 722
    const-class v5, Ljava/lang/Character;

    if-eq v3, v5, :cond_63

    sget-object v5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq v3, v5, :cond_63

    const-class v5, Ljava/lang/String;

    .line 723
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_5a

    const-class v5, Ljava/lang/Character;

    .line 724
    invoke-virtual {v3, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_5a

    goto :goto_63

    .line 727
    :cond_5a
    check-cast v4, Lfreemarker/ext/beans/CharacterOrString;

    invoke-virtual {v4}, Lfreemarker/ext/beans/CharacterOrString;->getAsString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_6f

    .line 725
    :cond_63
    :goto_63
    check-cast v4, Lfreemarker/ext/beans/CharacterOrString;

    invoke-virtual {v4}, Lfreemarker/ext/beans/CharacterOrString;->getAsChar()C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    aput-object v3, p2, v2

    :cond_6f
    :goto_6f
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_72
    return-void
.end method


# virtual methods
.method getDeclaration()Ljava/lang/String;
    .registers 2

    .line 667
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->getDeclaration()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 692
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParamTypes()[Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 687
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method invokeConstructor(Lfreemarker/ext/beans/BeansWrapper;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 661
    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->convertArgsToReflectionCompatible(Lfreemarker/ext/beans/BeansWrapper;[Ljava/lang/Object;)V

    .line 662
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->invokeConstructor(Lfreemarker/ext/beans/BeansWrapper;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method invokeMethod(Lfreemarker/ext/beans/BeansWrapper;Ljava/lang/Object;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 654
    invoke-direct {p0, p1, p3}, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->convertArgsToReflectionCompatible(Lfreemarker/ext/beans/BeansWrapper;[Ljava/lang/Object;)V

    .line 655
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0, p1, p2, p3}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->invokeMethod(Lfreemarker/ext/beans/BeansWrapper;Ljava/lang/Object;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method isConstructor()Z
    .registers 2

    .line 672
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->isConstructor()Z

    move-result v0

    return v0
.end method

.method isStatic()Z
    .registers 2

    .line 677
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->isStatic()Z

    move-result v0

    return v0
.end method

.method isVarargs()Z
    .registers 2

    .line 682
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;->callableMemberDesc:Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->isVarargs()Z

    move-result v0

    return v0
.end method
