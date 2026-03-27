.class public final Lkotlin/reflect/jvm/internal/impl/utils/NumbersKt;
.super Ljava/lang/Object;
.source "numbers.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nnumbers.kt\nKotlin\n*S Kotlin\n*F\n+ 1 numbers.kt\norg/jetbrains/kotlin/utils/NumbersKt\n*L\n1#1,26:1\n*E\n"
.end annotation


# direct methods
.method public static final extractRadix(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/utils/NumberWithRadix;
    .registers 6

    const-string v0, "value"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    const-string v0, "0x"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    const-string v4, "(this as java.lang.String).substring(startIndex)"

    if-nez v0, :cond_41

    const-string v0, "0X"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_41

    .line 23
    :cond_1b
    const-string v0, "0b"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_34

    const-string v0, "0B"

    invoke-static {p0, v0, v1, v2, v3}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_34

    .line 24
    :cond_2c
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/NumberWithRadix;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/NumberWithRadix;-><init>(Ljava/lang/String;I)V

    goto :goto_4f

    .line 23
    :cond_34
    :goto_34
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/NumberWithRadix;

    invoke-direct {v0, p0, v2}, Lkotlin/reflect/jvm/internal/impl/utils/NumberWithRadix;-><init>(Ljava/lang/String;I)V

    goto :goto_4f

    .line 22
    :cond_41
    :goto_41
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/utils/NumberWithRadix;

    const/16 v1, 0x10

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/utils/NumberWithRadix;-><init>(Ljava/lang/String;I)V

    :goto_4f
    return-object v0
.end method
