.class Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;
.super Ljava/lang/Object;
.source "ClassIntrospector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/ext/beans/ClassIntrospector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertyReaderMethodPair"
.end annotation


# instance fields
.field private final indexedReadMethod:Ljava/lang/reflect/Method;

.field private final readMethod:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/beans/PropertyDescriptor;)V
    .registers 4

    .line 510
    invoke-virtual {p1}, Ljava/beans/PropertyDescriptor;->getReadMethod()Ljava/lang/reflect/Method;

    move-result-object v0

    instance-of v1, p1, Ljava/beans/IndexedPropertyDescriptor;

    if-eqz v1, :cond_f

    check-cast p1, Ljava/beans/IndexedPropertyDescriptor;

    .line 512
    invoke-virtual {p1}, Ljava/beans/IndexedPropertyDescriptor;->getIndexedReadMethod()Ljava/lang/reflect/Method;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    .line 509
    :goto_10
    invoke-direct {p0, v0, p1}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 503
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 504
    iput-object p1, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->readMethod:Ljava/lang/reflect/Method;

    .line 505
    iput-object p2, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->indexedReadMethod:Ljava/lang/reflect/Method;

    return-void
.end method

.method static synthetic access$000(Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)Ljava/lang/reflect/Method;
    .registers 1

    .line 499
    iget-object p0, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->readMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static synthetic access$100(Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)Ljava/lang/reflect/Method;
    .registers 1

    .line 499
    iget-object p0, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->indexedReadMethod:Ljava/lang/reflect/Method;

    return-object p0
.end method

.method static from(Ljava/lang/Object;)Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;
    .registers 4

    .line 516
    instance-of v0, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    if-eqz v0, :cond_7

    .line 517
    check-cast p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    return-object p0

    .line 518
    :cond_7
    instance-of v0, p0, Ljava/beans/PropertyDescriptor;

    if-eqz v0, :cond_13

    .line 519
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    check-cast p0, Ljava/beans/PropertyDescriptor;

    invoke-direct {v0, p0}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;-><init>(Ljava/beans/PropertyDescriptor;)V

    return-object v0

    .line 520
    :cond_13
    instance-of v0, p0, Ljava/lang/reflect/Method;

    if-eqz v0, :cond_20

    .line 521
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    check-cast p0, Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v0

    .line 523
    :cond_20
    new-instance v0, Lfreemarker/core/BugException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected obj type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static merge(Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;)Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;
    .registers 4

    .line 528
    new-instance v0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    iget-object v1, p1, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->readMethod:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_7

    goto :goto_9

    :cond_7
    iget-object v1, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->readMethod:Ljava/lang/reflect/Method;

    :goto_9
    iget-object p1, p1, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->indexedReadMethod:Ljava/lang/reflect/Method;

    if-eqz p1, :cond_e

    goto :goto_10

    :cond_e
    iget-object p1, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->indexedReadMethod:Ljava/lang/reflect/Method;

    :goto_10
    invoke-direct {v0, v1, p1}, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 547
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 548
    :cond_13
    check-cast p1, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;

    .line 549
    iget-object v2, p1, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->readMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->readMethod:Ljava/lang/reflect/Method;

    if-ne v2, v3, :cond_22

    iget-object p1, p1, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->indexedReadMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->indexedReadMethod:Ljava/lang/reflect/Method;

    if-ne p1, v2, :cond_22

    goto :goto_23

    :cond_22
    move v0, v1

    :goto_23
    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 538
    iget-object v0, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->indexedReadMethod:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_b

    :cond_7
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v0

    :goto_b
    const/16 v2, 0x1f

    add-int/2addr v0, v2

    mul-int/2addr v0, v2

    .line 539
    iget-object v2, p0, Lfreemarker/ext/beans/ClassIntrospector$PropertyReaderMethodPair;->readMethod:Ljava/lang/reflect/Method;

    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->hashCode()I

    move-result v1

    :goto_18
    add-int/2addr v0, v1

    return v0
.end method
