.class final Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;
.super Ljava/lang/Object;
.source "ClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/ClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MethodSignature"
.end annotation


# static fields
.field private static final GET_OBJECT_SIGNATURE:Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

.field private static final GET_STRING_SIGNATURE:Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;


# instance fields
.field private final args:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .line 827
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "get"

    invoke-direct {v0, v3, v2}, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->GET_STRING_SIGNATURE:Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    .line 829
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-direct {v0, v3, v1}, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    sput-object v0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->GET_OBJECT_SIGNATURE:Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 835
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 836
    iput-object p1, p0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->name:Ljava/lang/String;

    .line 837
    iput-object p2, p0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->args:[Ljava/lang/Class;

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;)V
    .registers 3

    .line 841
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;-><init>(Ljava/lang/String;[Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$200()Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;
    .registers 1

    .line 826
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->GET_STRING_SIGNATURE:Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    return-object v0
.end method

.method static synthetic access$300()Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;
    .registers 1

    .line 826
    sget-object v0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->GET_OBJECT_SIGNATURE:Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 846
    instance-of v0, p1, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    .line 847
    check-cast p1, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;

    .line 848
    iget-object v0, p1, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->name:Ljava/lang/String;

    iget-object v2, p0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->args:[Ljava/lang/Class;

    iget-object p1, p1, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->args:[Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1c

    const/4 v1, 0x1

    :cond_1c
    return v1
.end method

.method public hashCode()I
    .registers 3

    .line 855
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector$MethodSignature;->args:[Ljava/lang/Class;

    array-length v1, v1

    xor-int/2addr v0, v1

    return v0
.end method
