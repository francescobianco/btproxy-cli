.class public final Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument$Factory;
.super Ljava/lang/Object;
.source "ReflectJavaAnnotationArguments.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0018\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument$Factory;",
        "",
        "()V",
        "create",
        "Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument;",
        "value",
        "name",
        "Lkotlin/reflect/jvm/internal/impl/name/Name;",
        "descriptors.runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    .line 26
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument$Factory;-><init>()V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/reflect/jvm/internal/impl/name/Name;)Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument;
    .registers 4

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/structure/ReflectClassUtilKt;->isEnumClassOrSpecializedEnumEntryClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_19

    new-instance v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaEnumValueAnnotationArgument;

    check-cast p1, Ljava/lang/Enum;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaEnumValueAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Enum;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument;

    goto :goto_4a

    .line 30
    :cond_19
    instance-of v0, p1, Ljava/lang/annotation/Annotation;

    if-eqz v0, :cond_27

    new-instance v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationAsAnnotationArgument;

    check-cast p1, Ljava/lang/annotation/Annotation;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationAsAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/annotation/Annotation;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument;

    goto :goto_4a

    .line 31
    :cond_27
    instance-of v0, p1, [Ljava/lang/Object;

    if-eqz v0, :cond_35

    new-instance v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaArrayAnnotationArgument;

    check-cast p1, [Ljava/lang/Object;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaArrayAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;[Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument;

    goto :goto_4a

    .line 32
    :cond_35
    instance-of v0, p1, Ljava/lang/Class;

    if-eqz v0, :cond_43

    new-instance v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaClassObjectAnnotationArgument;

    check-cast p1, Ljava/lang/Class;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaClassObjectAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Class;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument;

    goto :goto_4a

    .line 33
    :cond_43
    new-instance v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaLiteralAnnotationArgument;

    invoke-direct {v0, p2, p1}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaLiteralAnnotationArgument;-><init>(Lkotlin/reflect/jvm/internal/impl/name/Name;Ljava/lang/Object;)V

    check-cast v0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaAnnotationArgument;

    :goto_4a
    return-object v0
.end method
