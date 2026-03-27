.class final Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;
.super Lfreemarker/ext/beans/CallableMemberDescriptor;
.source "ReflectionCallableMemberDescriptor.java"


# instance fields
.field private final member:Ljava/lang/reflect/Member;

.field final paramTypes:[Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/reflect/Constructor;[Ljava/lang/Class;)V
    .registers 3

    .line 48
    invoke-direct {p0}, Lfreemarker/ext/beans/CallableMemberDescriptor;-><init>()V

    .line 49
    iput-object p1, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    .line 50
    iput-object p2, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->paramTypes:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;[Ljava/lang/Class;)V
    .registers 3

    .line 43
    invoke-direct {p0}, Lfreemarker/ext/beans/CallableMemberDescriptor;-><init>()V

    .line 44
    iput-object p1, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    .line 45
    iput-object p2, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->paramTypes:[Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method getDeclaration()Ljava/lang/String;
    .registers 2

    .line 67
    iget-object v0, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lfreemarker/ext/beans/_MethodUtil;->toString(Ljava/lang/reflect/Member;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getName()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParamTypes()[Ljava/lang/Class;
    .registers 2

    .line 87
    iget-object v0, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->paramTypes:[Ljava/lang/Class;

    return-object v0
.end method

.method invokeConstructor(Lfreemarker/ext/beans/BeansWrapper;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 62
    iget-object p1, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    check-cast p1, Ljava/lang/reflect/Constructor;

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 56
    iget-object v0, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    invoke-virtual {p1, p2, v0, p3}, Lfreemarker/ext/beans/BeansWrapper;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method isConstructor()Z
    .registers 2

    .line 72
    iget-object v0, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    instance-of v0, v0, Ljava/lang/reflect/Constructor;

    return v0
.end method

.method isStatic()Z
    .registers 2

    .line 77
    iget-object v0, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    invoke-interface {v0}, Ljava/lang/reflect/Member;->getModifiers()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method isVarargs()Z
    .registers 2

    .line 82
    iget-object v0, p0, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->member:Ljava/lang/reflect/Member;

    invoke-static {v0}, Lfreemarker/ext/beans/_MethodUtil;->isVarargs(Ljava/lang/reflect/Member;)Z

    move-result v0

    return v0
.end method
