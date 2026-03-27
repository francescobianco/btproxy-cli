.class final Lfreemarker/ext/beans/FastPropertyDescriptor;
.super Ljava/lang/Object;
.source "FastPropertyDescriptor.java"


# instance fields
.field private final indexedReadMethod:Ljava/lang/reflect/Method;

.field private final readMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lfreemarker/ext/beans/FastPropertyDescriptor;->readMethod:Ljava/lang/reflect/Method;

    .line 35
    iput-object p2, p0, Lfreemarker/ext/beans/FastPropertyDescriptor;->indexedReadMethod:Ljava/lang/reflect/Method;

    return-void
.end method


# virtual methods
.method public getIndexedReadMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 43
    iget-object v0, p0, Lfreemarker/ext/beans/FastPropertyDescriptor;->indexedReadMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method

.method public getReadMethod()Ljava/lang/reflect/Method;
    .registers 2

    .line 39
    iget-object v0, p0, Lfreemarker/ext/beans/FastPropertyDescriptor;->readMethod:Ljava/lang/reflect/Method;

    return-object v0
.end method
