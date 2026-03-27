.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;
.super Ljava/lang/Object;
.source "ClassMapperLite.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nClassMapperLite.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ClassMapperLite.kt\norg/jetbrains/kotlin/metadata/jvm/deserialization/ClassMapperLite\n*L\n1#1,81:1\n*E\n"
.end annotation


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;

.field private static final map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 21

    .line 15
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;

    .line 20
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const/16 v1, 0x10

    .line 21
    new-array v1, v1, [Ljava/lang/String;

    .line 22
    const-string v2, "Boolean"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Z"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    .line 23
    const-string v5, "Char"

    aput-object v5, v1, v2

    const-string v6, "C"

    const/4 v7, 0x3

    aput-object v6, v1, v7

    const/4 v6, 0x4

    .line 24
    const-string v8, "Byte"

    aput-object v8, v1, v6

    const-string v9, "B"

    const/4 v10, 0x5

    aput-object v9, v1, v10

    const/4 v9, 0x6

    .line 25
    const-string v11, "Short"

    aput-object v11, v1, v9

    const-string v12, "S"

    const/4 v13, 0x7

    aput-object v12, v1, v13

    const/16 v12, 0x8

    .line 26
    const-string v14, "Int"

    aput-object v14, v1, v12

    const-string v15, "I"

    const/16 v12, 0x9

    aput-object v15, v1, v12

    const/16 v15, 0xa

    .line 27
    const-string v16, "Float"

    aput-object v16, v1, v15

    const/16 v15, 0xb

    const-string v17, "F"

    aput-object v17, v1, v15

    const/16 v15, 0xc

    .line 28
    const-string v17, "Long"

    aput-object v17, v1, v15

    const/16 v15, 0xd

    const-string v18, "J"

    aput-object v18, v1, v15

    const/16 v15, 0xe

    .line 29
    const-string v18, "Double"

    aput-object v18, v1, v15

    const/16 v15, 0xf

    const-string v19, "D"

    aput-object v19, v1, v15

    .line 21
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 32
    move-object v15, v1

    check-cast v15, Ljava/util/Collection;

    invoke-static {v15}, Lkotlin/collections/CollectionsKt;->getIndices(Ljava/util/Collection;)Lkotlin/ranges/IntRange;

    move-result-object v15

    check-cast v15, Lkotlin/ranges/IntProgression;

    invoke-static {v15, v2}, Lkotlin/ranges/RangesKt;->step(Lkotlin/ranges/IntProgression;I)Lkotlin/ranges/IntProgression;

    move-result-object v15

    invoke-virtual {v15}, Lkotlin/ranges/IntProgression;->getFirst()I

    move-result v12

    invoke-virtual {v15}, Lkotlin/ranges/IntProgression;->getLast()I

    move-result v9

    invoke-virtual {v15}, Lkotlin/ranges/IntProgression;->getStep()I

    move-result v15

    if-ltz v15, :cond_8c

    if-gt v12, v9, :cond_e6

    goto :goto_8e

    :cond_8c
    if-lt v12, v9, :cond_e6

    .line 33
    :goto_8e
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v6, "kotlin/"

    invoke-direct {v10, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    add-int/lit8 v10, v12, 0x1

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "Array"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eq v12, v9, :cond_e6

    add-int/2addr v12, v15

    const/4 v2, 0x2

    const/4 v6, 0x4

    const/4 v7, 0x3

    goto :goto_8e

    .line 37
    :cond_e6
    const-string v1, "kotlin/Unit"

    const-string v2, "V"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;

    invoke-direct {v1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;-><init>(Ljava/util/Map;)V

    .line 43
    const-string v2, "Any"

    const-string v6, "java/lang/Object"

    invoke-virtual {v1, v2, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    const-string v2, "Nothing"

    const-string v6, "java/lang/Void"

    invoke-virtual {v1, v2, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    const-string v2, "Annotation"

    const-string v6, "java/lang/annotation/Annotation"

    invoke-virtual {v1, v2, v6}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    new-array v2, v13, [Ljava/lang/String;

    const-string v6, "String"

    aput-object v6, v2, v3

    const-string v7, "CharSequence"

    aput-object v7, v2, v4

    const-string v7, "Throwable"

    const/4 v9, 0x2

    aput-object v7, v2, v9

    const-string v7, "Cloneable"

    const/4 v9, 0x3

    aput-object v7, v2, v9

    const-string v7, "Number"

    const/4 v9, 0x4

    aput-object v7, v2, v9

    const-string v7, "Comparable"

    const/4 v9, 0x5

    aput-object v7, v2, v9

    const-string v7, "Enum"

    const/4 v9, 0x6

    aput-object v7, v2, v9

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_132
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_151

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 48
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "java/lang/"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_132

    :cond_151
    const/4 v9, 0x6

    .line 51
    new-array v2, v9, [Ljava/lang/String;

    const-string v9, "Iterator"

    aput-object v9, v2, v3

    const-string v9, "Collection"

    aput-object v9, v2, v4

    const-string v9, "List"

    const/4 v10, 0x2

    aput-object v9, v2, v10

    const-string v9, "Set"

    const/4 v10, 0x3

    aput-object v9, v2, v10

    const-string v9, "Map"

    const/4 v10, 0x4

    aput-object v9, v2, v10

    const-string v9, "ListIterator"

    const/4 v10, 0x5

    aput-object v9, v2, v10

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_178
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1c7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 52
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "collections/"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "java/util/"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v10, v12}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "collections/Mutable"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v15, "java/util/"

    invoke-direct {v12, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v10, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_178

    .line 56
    :cond_1c7
    const-string v2, "collections/Iterable"

    const-string v9, "java/lang/Iterable"

    invoke-virtual {v1, v2, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    const-string v2, "collections/MutableIterable"

    invoke-virtual {v1, v2, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v2, "collections/Map.Entry"

    const-string v9, "java/util/Map$Entry"

    invoke-virtual {v1, v2, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    const-string v2, "collections/MutableMap.MutableEntry"

    invoke-virtual {v1, v2, v9}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    :goto_1e0
    const/16 v9, 0x16

    if-gt v2, v9, :cond_21c

    .line 62
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Function"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v12, "kotlin/jvm/functions/Function"

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v9, v10}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "reflect/KFunction"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "kotlin/reflect/KFunction"

    invoke-virtual {v1, v9, v10}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1e0

    :cond_21c
    const/16 v2, 0x9

    .line 68
    new-array v2, v2, [Ljava/lang/String;

    aput-object v5, v2, v3

    aput-object v8, v2, v4

    const/4 v3, 0x2

    aput-object v11, v2, v3

    const/4 v3, 0x3

    aput-object v14, v2, v3

    const/4 v3, 0x4

    aput-object v16, v2, v3

    const/4 v3, 0x5

    aput-object v17, v2, v3

    const/4 v3, 0x6

    aput-object v18, v2, v3

    aput-object v6, v2, v13

    const/16 v3, 0x8

    aput-object v7, v2, v3

    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_241
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_279

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 69
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".Companion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "kotlin/jvm/internal/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "CompanionObject"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite$map$1$1;->invoke(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_241

    .line 20
    :cond_279
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;->map:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final mapClass(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "classId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/ClassMapperLite;->map:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_10

    goto :goto_31

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "L"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/16 v3, 0x2e

    const/16 v4, 0x24

    const/4 v5, 0x0

    move-object v2, p0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_31
    return-object v0
.end method
