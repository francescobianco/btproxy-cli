.class abstract Lfreemarker/ext/beans/OverloadedMethodsSubset;
.super Ljava/lang/Object;
.source "OverloadedMethodsSubset.java"


# static fields
.field static final ALL_ZEROS_ARRAY:[I

.field private static final ZERO_PARAM_COUNT_TYPE_FLAGS_ARRAY:[[I


# instance fields
.field private final argTypesToMemberDescCache:Ljava/util/Map;

.field protected final bugfixed:Z

.field private final memberDescs:Ljava/util/List;

.field private typeFlagsByParamCount:[[I

.field private unwrappingHintsByParamCount:[[Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x0

    .line 47
    new-array v1, v0, [I

    sput-object v1, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ALL_ZEROS_ARRAY:[I

    const/4 v2, 0x1

    .line 49
    new-array v2, v2, [[I

    sput-object v2, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ZERO_PARAM_COUNT_TYPE_FLAGS_ARRAY:[[I

    .line 51
    aput-object v1, v2, v0

    return-void
.end method

.method constructor <init>(Z)V
    .registers 6

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000    # 0.75f

    const/4 v2, 0x1

    const/4 v3, 0x6

    invoke-direct {v0, v3, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    iput-object v0, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->argTypesToMemberDescCache:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->memberDescs:Ljava/util/List;

    .line 72
    iput-boolean p1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->bugfixed:Z

    return-void
.end method


# virtual methods
.method addCallableMemberDescriptor(Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;)V
    .registers 8

    .line 76
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->memberDescs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    invoke-virtual {p0, p1}, Lfreemarker/ext/beans/OverloadedMethodsSubset;->preprocessParameterTypes(Lfreemarker/ext/beans/CallableMemberDescriptor;)[Ljava/lang/Class;

    move-result-object p1

    .line 81
    array-length v0, p1

    .line 84
    iget-object v1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->unwrappingHintsByParamCount:[[Ljava/lang/Class;

    const/4 v2, 0x0

    if-nez v1, :cond_1e

    add-int/lit8 v1, v0, 0x1

    .line 85
    new-array v1, v1, [[Ljava/lang/Class;

    iput-object v1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->unwrappingHintsByParamCount:[[Ljava/lang/Class;

    .line 86
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    aput-object v3, v1, v0

    goto :goto_52

    .line 87
    :cond_1e
    array-length v3, v1

    if-gt v3, v0, :cond_34

    add-int/lit8 v3, v0, 0x1

    .line 88
    new-array v3, v3, [[Ljava/lang/Class;

    .line 89
    array-length v4, v1

    invoke-static {v1, v2, v3, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    iput-object v3, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->unwrappingHintsByParamCount:[[Ljava/lang/Class;

    .line 92
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Class;

    aput-object v1, v3, v0

    goto :goto_52

    .line 94
    :cond_34
    aget-object v3, v1, v0

    if-nez v3, :cond_41

    .line 96
    invoke-virtual {p1}, [Ljava/lang/Class;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Class;

    aput-object v3, v1, v0

    goto :goto_52

    :cond_41
    move v1, v2

    .line 98
    :goto_42
    array-length v4, p1

    if-ge v1, v4, :cond_52

    .line 106
    aget-object v4, v3, v1

    aget-object v5, p1, v1

    invoke-virtual {p0, v4, v5}, Lfreemarker/ext/beans/OverloadedMethodsSubset;->getCommonSupertypeForUnwrappingHint(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 112
    :cond_52
    :goto_52
    sget-object v1, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ALL_ZEROS_ARRAY:[I

    .line 113
    iget-boolean v3, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->bugfixed:Z

    if-eqz v3, :cond_70

    :goto_58
    if-ge v2, v0, :cond_6d

    .line 116
    aget-object v3, p1, v2

    invoke-static {v3}, Lfreemarker/ext/beans/TypeFlags;->classToTypeFlags(Ljava/lang/Class;)I

    move-result v3

    if-eqz v3, :cond_6a

    .line 118
    sget-object v4, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ALL_ZEROS_ARRAY:[I

    if-ne v1, v4, :cond_68

    .line 119
    new-array v1, v0, [I

    .line 121
    :cond_68
    aput v3, v1, v2

    :cond_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_58

    .line 124
    :cond_6d
    invoke-virtual {p0, v0, v1}, Lfreemarker/ext/beans/OverloadedMethodsSubset;->mergeInTypesFlags(I[I)V

    .line 127
    :cond_70
    iget-boolean v2, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->bugfixed:Z

    if-eqz v2, :cond_75

    goto :goto_79

    :cond_75
    iget-object p1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->unwrappingHintsByParamCount:[[Ljava/lang/Class;

    aget-object p1, p1, v0

    :goto_79
    invoke-virtual {p0, p1, v1}, Lfreemarker/ext/beans/OverloadedMethodsSubset;->afterWideningUnwrappingHints([Ljava/lang/Class;[I)V

    return-void
.end method

.method abstract afterWideningUnwrappingHints([Ljava/lang/Class;[I)V
.end method

.method protected forceNumberArgumentsToParameterTypes([Ljava/lang/Object;[Ljava/lang/Class;[I)V
    .registers 10

    .line 404
    array-length v0, p2

    .line 405
    array-length v1, p1

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v1, :cond_28

    if-ge v2, v0, :cond_9

    move v3, v2

    goto :goto_b

    :cond_9
    add-int/lit8 v3, v0, -0x1

    .line 408
    :goto_b
    aget v4, p3, v3

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_25

    .line 413
    aget-object v4, p1, v2

    .line 415
    instance-of v5, v4, Ljava/lang/Number;

    if-eqz v5, :cond_25

    .line 416
    aget-object v3, p2, v3

    .line 417
    check-cast v4, Ljava/lang/Number;

    iget-boolean v5, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->bugfixed:Z

    invoke-static {v4, v3, v5}, Lfreemarker/ext/beans/BeansWrapper;->forceUnwrappedNumberToType(Ljava/lang/Number;Ljava/lang/Class;Z)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 420
    aput-object v3, p1, v2

    :cond_25
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_28
    return-void
.end method

.method protected getCommonSupertypeForUnwrappingHint(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Class;
    .registers 9

    if-ne p1, p2, :cond_3

    return-object p1

    .line 182
    :cond_3
    iget-boolean v0, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->bugfixed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    .line 185
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 186
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    move v0, v1

    goto :goto_16

    :cond_15
    move v0, v2

    .line 194
    :goto_16
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 195
    invoke-static {p2}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p2

    move v3, v1

    goto :goto_23

    :cond_22
    move v3, v2

    :goto_23
    if-ne p1, p2, :cond_26

    return-object p1

    .line 206
    :cond_26
    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_39

    const-class v4, Ljava/lang/Number;

    invoke-virtual {v4, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_39

    .line 211
    const-class p1, Ljava/lang/Number;

    return-object p1

    :cond_39
    if-nez v0, :cond_3d

    if-eqz v3, :cond_76

    .line 217
    :cond_3d
    const-class p1, Ljava/lang/Object;

    return-object p1

    .line 221
    :cond_40
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_76

    .line 222
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_4d

    const-class p2, Ljava/lang/Byte;

    goto :goto_76

    .line 223
    :cond_4d
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_54

    const-class p2, Ljava/lang/Short;

    goto :goto_76

    .line 224
    :cond_54
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_5b

    const-class p2, Ljava/lang/Character;

    goto :goto_76

    .line 225
    :cond_5b
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_62

    const-class p2, Ljava/lang/Integer;

    goto :goto_76

    .line 226
    :cond_62
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_69

    const-class p2, Ljava/lang/Float;

    goto :goto_76

    .line 227
    :cond_69
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_70

    const-class p2, Ljava/lang/Long;

    goto :goto_76

    .line 228
    :cond_70
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p2, v0, :cond_76

    const-class p2, Ljava/lang/Double;

    .line 236
    :cond_76
    :goto_76
    invoke-static {p1, p2}, Lfreemarker/ext/beans/_MethodUtil;->getAssignables(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    .line 237
    invoke-static {p2, p1}, Lfreemarker/ext/beans/_MethodUtil;->getAssignables(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 238
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_8a

    .line 241
    const-class p1, Ljava/lang/Object;

    return-object p1

    .line 248
    :cond_8a
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_93
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c4

    .line 250
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 251
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_a3
    :goto_a3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c0

    .line 252
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    .line 253
    invoke-static {v4, v0, v2, v2}, Lfreemarker/ext/beans/_MethodUtil;->isMoreOrSameSpecificParameterType(Ljava/lang/Class;Ljava/lang/Class;ZI)I

    move-result v5

    if-eqz v5, :cond_b6

    goto :goto_93

    .line 257
    :cond_b6
    invoke-static {v0, v4, v2, v2}, Lfreemarker/ext/beans/_MethodUtil;->isMoreOrSameSpecificParameterType(Ljava/lang/Class;Ljava/lang/Class;ZI)I

    move-result v4

    if-eqz v4, :cond_a3

    .line 260
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_a3

    .line 268
    :cond_c0
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_93

    .line 271
    :cond_c4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_114

    .line 272
    iget-boolean p2, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->bugfixed:Z

    if-eqz p2, :cond_111

    .line 274
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d2
    :goto_d2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ed

    .line 275
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 276
    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-nez v3, :cond_d2

    .line 277
    const-class v3, Ljava/lang/Object;

    if-eq v0, v3, :cond_e9

    return-object v0

    .line 282
    :cond_e9
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_d2

    .line 289
    :cond_ed
    const-class p2, Ljava/lang/Cloneable;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 290
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_114

    .line 291
    const-class p2, Ljava/io/Serializable;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 292
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_114

    .line 293
    const-class p2, Ljava/lang/Comparable;

    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 294
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_114

    .line 295
    const-class p1, Ljava/lang/Object;

    return-object p1

    .line 300
    :cond_111
    const-class p1, Ljava/lang/Object;

    return-object p1

    .line 304
    :cond_114
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Class;

    return-object p1
.end method

.method abstract getMemberAndArguments(Ljava/util/List;Lfreemarker/ext/beans/BeansWrapper;)Lfreemarker/ext/beans/MaybeEmptyMemberAndArguments;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation
.end method

.method final getMemberDescriptorForArgs([Ljava/lang/Object;Z)Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;
    .registers 5

    .line 139
    new-instance v0, Lfreemarker/ext/beans/ArgumentTypes;

    iget-boolean v1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->bugfixed:Z

    invoke-direct {v0, p1, v1}, Lfreemarker/ext/beans/ArgumentTypes;-><init>([Ljava/lang/Object;Z)V

    .line 140
    iget-object p1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->argTypesToMemberDescCache:Ljava/util/Map;

    .line 141
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;

    if-nez p1, :cond_2e

    .line 144
    iget-object v1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->argTypesToMemberDescCache:Ljava/util/Map;

    monitor-enter v1

    .line 145
    :try_start_14
    iget-object p1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->argTypesToMemberDescCache:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;

    if-nez p1, :cond_29

    .line 147
    iget-object p1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->memberDescs:Ljava/util/List;

    invoke-virtual {v0, p1, p2}, Lfreemarker/ext/beans/ArgumentTypes;->getMostSpecific(Ljava/util/List;Z)Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;

    move-result-object p1

    .line 148
    iget-object p2, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->argTypesToMemberDescCache:Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_29
    monitor-exit v1

    goto :goto_2e

    :catchall_2b
    move-exception p1

    monitor-exit v1
    :try_end_2d
    .catchall {:try_start_14 .. :try_end_2d} :catchall_2b

    throw p1

    :cond_2e
    :goto_2e
    return-object p1
.end method

.method getMemberDescriptors()Ljava/util/Iterator;
    .registers 2

    .line 156
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->memberDescs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected final getTypeFlags(I)[I
    .registers 4

    .line 313
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->typeFlagsByParamCount:[[I

    if-eqz v0, :cond_a

    array-length v1, v0

    if-le v1, p1, :cond_a

    aget-object p1, v0, p1

    goto :goto_b

    :cond_a
    const/4 p1, 0x0

    :goto_b
    return-object p1
.end method

.method getUnwrappingHintsByParamCount()[[Ljava/lang/Class;
    .registers 2

    .line 133
    iget-object v0, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->unwrappingHintsByParamCount:[[Ljava/lang/Class;

    return-object v0
.end method

.method protected final mergeInTypesFlags(I[I)V
    .registers 8

    .line 328
    const-string v0, "srcTypesFlagsByParamIdx"

    invoke-static {v0, p2}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    if-nez p1, :cond_1a

    .line 332
    iget-object p1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->typeFlagsByParamCount:[[I

    if-nez p1, :cond_11

    .line 333
    sget-object p1, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ZERO_PARAM_COUNT_TYPE_FLAGS_ARRAY:[[I

    iput-object p1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->typeFlagsByParamCount:[[I

    goto :goto_19

    .line 334
    :cond_11
    sget-object p2, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ZERO_PARAM_COUNT_TYPE_FLAGS_ARRAY:[[I

    if-eq p1, p2, :cond_19

    .line 335
    sget-object p2, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ALL_ZEROS_ARRAY:[I

    aput-object p2, p1, v0

    :cond_19
    :goto_19
    return-void

    .line 341
    :cond_1a
    iget-object v1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->typeFlagsByParamCount:[[I

    if-nez v1, :cond_25

    add-int/lit8 v1, p1, 0x1

    .line 342
    new-array v1, v1, [[I

    iput-object v1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->typeFlagsByParamCount:[[I

    goto :goto_32

    .line 343
    :cond_25
    array-length v2, v1

    if-gt v2, p1, :cond_32

    add-int/lit8 v2, p1, 0x1

    .line 344
    new-array v2, v2, [[I

    .line 345
    array-length v3, v1

    invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 347
    iput-object v2, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->typeFlagsByParamCount:[[I

    .line 350
    :cond_32
    :goto_32
    iget-object v1, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->typeFlagsByParamCount:[[I

    aget-object v2, v1, p1

    if-nez v2, :cond_54

    .line 354
    sget-object v1, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ALL_ZEROS_ARRAY:[I

    if-eq p2, v1, :cond_4f

    .line 355
    array-length v1, p2

    .line 356
    new-array v2, p1, [I

    :goto_3f
    if-ge v0, p1, :cond_4e

    if-ge v0, v1, :cond_45

    move v3, v0

    goto :goto_47

    :cond_45
    add-int/lit8 v3, v1, -0x1

    .line 358
    :goto_47
    aget v3, p2, v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3f

    :cond_4e
    move-object v1, v2

    .line 365
    :cond_4f
    iget-object p2, p0, Lfreemarker/ext/beans/OverloadedMethodsSubset;->typeFlagsByParamCount:[[I

    aput-object v1, p2, p1

    goto :goto_83

    :cond_54
    if-ne p2, v2, :cond_57

    return-void

    .line 375
    :cond_57
    sget-object v3, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ALL_ZEROS_ARRAY:[I

    if-ne v2, v3, :cond_61

    if-lez p1, :cond_61

    .line 376
    new-array v2, p1, [I

    .line 377
    aput-object v2, v1, p1

    :cond_61
    move v1, v0

    :goto_62
    if-ge v1, p1, :cond_83

    .line 382
    sget-object v3, Lfreemarker/ext/beans/OverloadedMethodsSubset;->ALL_ZEROS_ARRAY:[I

    if-eq p2, v3, :cond_72

    .line 383
    array-length v3, p2

    if-ge v1, v3, :cond_6d

    move v3, v1

    goto :goto_6f

    :cond_6d
    add-int/lit8 v3, v3, -0x1

    .line 384
    :goto_6f
    aget v3, p2, v3

    goto :goto_73

    :cond_72
    move v3, v0

    .line 389
    :goto_73
    aget v4, v2, v1

    if-eq v4, v3, :cond_80

    or-int/2addr v3, v4

    and-int/lit16 v4, v3, 0x7fc

    if-eqz v4, :cond_7e

    or-int/lit8 v3, v3, 0x1

    .line 396
    :cond_7e
    aput v3, v2, v1

    :cond_80
    add-int/lit8 v1, v1, 0x1

    goto :goto_62

    :cond_83
    :goto_83
    return-void
.end method

.method abstract preprocessParameterTypes(Lfreemarker/ext/beans/CallableMemberDescriptor;)[Ljava/lang/Class;
.end method
