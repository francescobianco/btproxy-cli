.class final Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass$methods$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ReflectJavaClass.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;->getMethods()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/reflect/Method;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "method",
        "Ljava/lang/reflect/Method;",
        "kotlin.jvm.PlatformType",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;)V
    .registers 2

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass$methods$1;->this$0:Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 28
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass$methods$1;->invoke(Ljava/lang/reflect/Method;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Ljava/lang/reflect/Method;)Z
    .registers 5

    .line 69
    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isSynthetic()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_d

    goto :goto_1f

    .line 70
    :cond_d
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass$methods$1;->this$0:Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;->isEnum()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass$methods$1;->this$0:Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;

    # invokes: Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;->isEnumValuesOrValueOf(Ljava/lang/reflect/Method;)Z
    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;->access$isEnumValuesOrValueOf(Lkotlin/reflect/jvm/internal/structure/ReflectJavaClass;Ljava/lang/reflect/Method;)Z

    move-result p1

    if-nez p1, :cond_1f

    :cond_1e
    move v1, v2

    :cond_1f
    :goto_1f
    return v1
.end method
