.class final Lfreemarker/ext/beans/ArgumentTypes;
.super Ljava/lang/Object;
.source "ArgumentTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;,
        Lfreemarker/ext/beans/ArgumentTypes$Null;
    }
.end annotation


# static fields
.field private static final CONVERSION_DIFFICULTY_FREEMARKER:I = 0x1

.field private static final CONVERSION_DIFFICULTY_IMPOSSIBLE:I = 0x2

.field private static final CONVERSION_DIFFICULTY_REFLECTION:I


# instance fields
.field private final bugfixed:Z

.field private final types:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>([Ljava/lang/Object;Z)V
    .registers 7

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    array-length v0, p1

    .line 68
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_1e

    .line 70
    aget-object v3, p1, v2

    if-nez v3, :cond_15

    if-eqz p2, :cond_12

    .line 71
    const-class v3, Lfreemarker/ext/beans/ArgumentTypes$Null;

    goto :goto_19

    :cond_12
    const-class v3, Ljava/lang/Object;

    goto :goto_19

    .line 73
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    :goto_19
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 77
    :cond_1e
    iput-object v1, p0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    .line 78
    iput-boolean p2, p0, Lfreemarker/ext/beans/ArgumentTypes;->bugfixed:Z

    return-void
.end method

.method private compareParameterListPreferability_cmpTypeSpecificty(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 414
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 415
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_c

    :cond_b
    move-object v0, p1

    .line 416
    :goto_c
    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 417
    invoke-static {p2}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    goto :goto_18

    :cond_17
    move-object v1, p2

    :goto_18
    const/4 v2, 0x0

    if-ne v0, v1, :cond_27

    if-eq v0, p1, :cond_22

    if-eq v1, p2, :cond_20

    return v2

    :cond_20
    const/4 p1, 0x1

    return p1

    :cond_22
    if-eq v1, p2, :cond_26

    const/4 p1, -0x1

    return p1

    :cond_26
    return v2

    .line 431
    :cond_27
    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    const/4 p2, 0x2

    if-eqz p1, :cond_2f

    return p2

    .line 433
    :cond_2f
    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    const/4 v3, -0x2

    if-eqz p1, :cond_37

    return v3

    .line 435
    :cond_37
    const-class p1, Ljava/lang/Character;

    if-ne v0, p1, :cond_44

    const-class p1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_44

    return p2

    .line 437
    :cond_44
    const-class p1, Ljava/lang/Character;

    if-ne v1, p1, :cond_51

    const-class p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_51

    return v3

    :cond_51
    return v2
.end method

.method private static getParamType([Ljava/lang/Class;IIZ)Ljava/lang/Class;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;IIZ)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p3, :cond_d

    add-int/lit8 p1, p1, -0x1

    if-lt p2, p1, :cond_d

    .line 445
    aget-object p0, p0, p1

    .line 446
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_f

    :cond_d
    aget-object p0, p0, p2

    :goto_f
    return-object p0
.end method

.method private isApplicable(Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;Z)I
    .registers 10

    .line 480
    invoke-virtual {p1}, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object p1

    .line 481
    iget-object v0, p0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    array-length v0, v0

    .line 482
    array-length v1, p1

    sub-int/2addr v1, p2

    const/4 v2, 0x2

    if-eqz p2, :cond_f

    if-ge v0, v1, :cond_12

    return v2

    :cond_f
    if-eq v0, v1, :cond_12

    return v2

    :cond_12
    const/4 v3, 0x0

    move v4, v3

    :goto_14
    if-ge v3, v1, :cond_29

    .line 495
    aget-object v5, p1, v3

    iget-object v6, p0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    aget-object v6, v6, v3

    invoke-direct {p0, v5, v6}, Lfreemarker/ext/beans/ArgumentTypes;->isMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v5

    if-ne v5, v2, :cond_23

    return v2

    :cond_23
    if-ge v4, v5, :cond_26

    move v4, v5

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_14

    :cond_29
    if-eqz p2, :cond_44

    .line 504
    aget-object p1, p1, v1

    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p1

    :goto_31
    if-ge v1, v0, :cond_44

    .line 506
    iget-object p2, p0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    aget-object p2, p2, v1

    invoke-direct {p0, p1, p2}, Lfreemarker/ext/beans/ArgumentTypes;->isMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p2

    if-ne p2, v2, :cond_3e

    return v2

    :cond_3e
    if-ge v4, p2, :cond_41

    move v4, p2

    :cond_41
    add-int/lit8 v1, v1, 0x1

    goto :goto_31

    :cond_44
    return v4
.end method

.method private isMethodInvocationConvertible(Ljava/lang/Class;Ljava/lang/Class;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)I"
        }
    .end annotation

    .line 534
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    const-class v0, Lfreemarker/ext/beans/CharacterOrString;

    if-eq p2, v0, :cond_c

    return v1

    .line 536
    :cond_c
    iget-boolean v0, p0, Lfreemarker/ext/beans/ArgumentTypes;->bugfixed:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_7e

    .line 538
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 539
    const-class v0, Lfreemarker/ext/beans/ArgumentTypes$Null;

    if-ne p2, v0, :cond_1c

    return v2

    .line 543
    :cond_1c
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    if-ne p2, v0, :cond_29

    return v1

    .line 549
    :cond_23
    const-class v0, Lfreemarker/ext/beans/ArgumentTypes$Null;

    if-ne p2, v0, :cond_28

    return v1

    :cond_28
    move-object v0, p1

    .line 555
    :cond_29
    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_44

    const-class v3, Ljava/lang/Number;

    invoke-virtual {v3, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_44

    .line 556
    invoke-static {p2, v0}, Lfreemarker/ext/beans/OverloadedNumberUtil;->getArgumentConversionPrice(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result p1

    const p2, 0x7fffffff

    if-ne p1, p2, :cond_43

    move v1, v2

    :cond_43
    return v1

    .line 558
    :cond_44
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_55

    .line 560
    const-class p1, Ljava/util/List;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_54

    move v2, v1

    :cond_54
    return v2

    .line 562
    :cond_55
    invoke-virtual {p2}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_64

    const-class v0, Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_64

    return v1

    .line 565
    :cond_64
    const-class v0, Lfreemarker/ext/beans/CharacterOrString;

    if-ne p2, v0, :cond_7d

    const-class p2, Ljava/lang/String;

    .line 566
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_7c

    const-class p2, Ljava/lang/Character;

    .line 567
    invoke-virtual {p1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-nez p2, :cond_7c

    sget-object p2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, p2, :cond_7d

    :cond_7c
    return v1

    :cond_7d
    return v2

    .line 580
    :cond_7e
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_11b

    .line 584
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_8f

    .line 585
    const-class p1, Ljava/lang/Boolean;

    if-ne p2, p1, :cond_8d

    goto :goto_8e

    :cond_8d
    move v1, v2

    :goto_8e
    return v1

    .line 587
    :cond_8f
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_ac

    const-class v0, Ljava/lang/Double;

    if-eq p2, v0, :cond_ab

    const-class v0, Ljava/lang/Float;

    if-eq p2, v0, :cond_ab

    const-class v0, Ljava/lang/Long;

    if-eq p2, v0, :cond_ab

    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_ab

    const-class v0, Ljava/lang/Short;

    if-eq p2, v0, :cond_ab

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_ac

    :cond_ab
    return v1

    .line 592
    :cond_ac
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_bd

    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_bc

    const-class v0, Ljava/lang/Short;

    if-eq p2, v0, :cond_bc

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_bd

    :cond_bc
    return v1

    .line 596
    :cond_bd
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_d2

    const-class v0, Ljava/lang/Long;

    if-eq p2, v0, :cond_d1

    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_d1

    const-class v0, Ljava/lang/Short;

    if-eq p2, v0, :cond_d1

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_d2

    :cond_d1
    return v1

    .line 600
    :cond_d2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_eb

    const-class v0, Ljava/lang/Float;

    if-eq p2, v0, :cond_ea

    const-class v0, Ljava/lang/Long;

    if-eq p2, v0, :cond_ea

    const-class v0, Ljava/lang/Integer;

    if-eq p2, v0, :cond_ea

    const-class v0, Ljava/lang/Short;

    if-eq p2, v0, :cond_ea

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_eb

    :cond_ea
    return v1

    .line 605
    :cond_eb
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_f6

    .line 606
    const-class p1, Ljava/lang/Character;

    if-ne p2, p1, :cond_f4

    goto :goto_f5

    :cond_f4
    move v1, v2

    :goto_f5
    return v1

    .line 608
    :cond_f6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_ff

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_ff

    return v1

    .line 610
    :cond_ff
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p1, v0, :cond_10c

    const-class v0, Ljava/lang/Short;

    if-eq p2, v0, :cond_10b

    const-class v0, Ljava/lang/Byte;

    if-ne p2, v0, :cond_10c

    :cond_10b
    return v1

    .line 613
    :cond_10c
    const-class v0, Ljava/math/BigDecimal;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_11b

    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_11b

    return v1

    :cond_11b
    return v2
.end method


# virtual methods
.method compareParameterListPreferability([Ljava/lang/Class;[Ljava/lang/Class;Z)I
    .registers 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Class<",
            "*>;Z)I"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 177
    iget-object v4, v0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    array-length v4, v4

    .line 178
    array-length v5, v1

    .line 179
    array-length v6, v2

    .line 182
    iget-boolean v7, v0, Lfreemarker/ext/beans/ArgumentTypes;->bugfixed:Z

    if-eqz v7, :cond_1b9

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    :goto_1c
    if-ge v7, v4, :cond_164

    move/from16 v17, v4

    .line 193
    invoke-static {v1, v5, v7, v3}, Lfreemarker/ext/beans/ArgumentTypes;->getParamType([Ljava/lang/Class;IIZ)Ljava/lang/Class;

    move-result-object v4

    .line 194
    invoke-static {v2, v6, v7, v3}, Lfreemarker/ext/beans/ArgumentTypes;->getParamType([Ljava/lang/Class;IIZ)Ljava/lang/Class;

    move-result-object v1

    if-ne v4, v1, :cond_31

    move/from16 v18, v5

    move/from16 v19, v6

    :cond_2e
    :goto_2e
    const/4 v1, 0x0

    goto/16 :goto_14e

    .line 200
    :cond_31
    iget-object v2, v0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    aget-object v2, v2, v7

    move/from16 v18, v5

    .line 201
    const-class v5, Ljava/lang/Number;

    invoke-virtual {v5, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    move/from16 v19, v6

    if-eqz v5, :cond_5a

    .line 204
    invoke-static {v4}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result v20

    if-eqz v20, :cond_5a

    .line 205
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v20

    if-eqz v20, :cond_54

    .line 206
    invoke-static {v4}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v20

    move-object/from16 v6, v20

    goto :goto_55

    :cond_54
    move-object v6, v4

    .line 207
    :goto_55
    invoke-static {v2, v6}, Lfreemarker/ext/beans/OverloadedNumberUtil;->getArgumentConversionPrice(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v6

    goto :goto_5d

    :cond_5a
    const v6, 0x7fffffff

    :goto_5d
    if-eqz v5, :cond_79

    .line 216
    invoke-static {v1}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 217
    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v5

    if-eqz v5, :cond_70

    .line 218
    invoke-static {v1}, Lfreemarker/template/utility/ClassUtil;->primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    goto :goto_71

    :cond_70
    move-object v5, v1

    .line 219
    :goto_71
    invoke-static {v2, v5}, Lfreemarker/ext/beans/OverloadedNumberUtil;->getArgumentConversionPrice(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v5

    const v3, 0x7fffffff

    goto :goto_7f

    :cond_79
    const v3, 0x7fffffff

    const v5, 0x7fffffff

    :goto_7f
    if-ne v6, v3, :cond_11d

    if-ne v5, v3, :cond_119

    .line 227
    const-class v3, Ljava/util/List;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    const/4 v5, 0x2

    if-eqz v3, :cond_d8

    .line 228
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-nez v3, :cond_98

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_d8

    .line 229
    :cond_98
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_c9

    .line 230
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_bb

    .line 232
    invoke-virtual {v4}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    .line 231
    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/ArgumentTypes;->compareParameterListPreferability_cmpTypeSpecificty(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_b3

    goto :goto_c3

    :cond_b3
    if-gez v1, :cond_b9

    add-int/lit8 v13, v13, 0x1

    const/4 v5, 0x1

    goto :goto_d5

    :cond_b9
    const/4 v5, 0x0

    goto :goto_d5

    .line 246
    :cond_bb
    const-class v2, Ljava/util/Collection;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_c6

    :goto_c3
    add-int/lit8 v14, v14, 0x1

    goto :goto_d5

    :cond_c6
    add-int/lit8 v8, v8, 0x1

    goto :goto_122

    .line 256
    :cond_c9
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v1, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d3

    goto/16 :goto_12f

    :cond_d3
    add-int/lit8 v10, v10, 0x1

    :goto_d5
    move v1, v5

    goto/16 :goto_14e

    .line 264
    :cond_d8
    invoke-virtual {v2}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_106

    const-class v2, Ljava/util/List;

    .line 265
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_ee

    const-class v2, Ljava/util/List;

    .line 266
    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_106

    .line 268
    :cond_ee
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_103

    .line 269
    const-class v2, Ljava/util/List;

    invoke-virtual {v2, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_100

    goto/16 :goto_2e

    :cond_100
    add-int/lit8 v12, v12, 0x1

    goto :goto_d5

    :cond_103
    add-int/lit8 v11, v11, 0x1

    goto :goto_122

    .line 283
    :cond_106
    invoke-direct {v0, v4, v1}, Lfreemarker/ext/beans/ArgumentTypes;->compareParameterListPreferability_cmpTypeSpecificty(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v1

    if-lez v1, :cond_110

    const/4 v2, 0x1

    if-le v1, v2, :cond_c6

    goto :goto_120

    :cond_110
    if-gez v1, :cond_2e

    const/4 v2, -0x1

    if-ge v1, v2, :cond_116

    goto :goto_119

    :cond_116
    add-int/lit8 v10, v10, 0x1

    goto :goto_11b

    :cond_119
    :goto_119
    add-int/lit8 v9, v9, 0x1

    :goto_11b
    const/4 v1, -0x1

    goto :goto_14e

    :cond_11d
    move v2, v3

    if-ne v5, v2, :cond_124

    :cond_120
    :goto_120
    add-int/lit8 v15, v15, 0x1

    :goto_122
    const/4 v1, 0x1

    goto :goto_14e

    :cond_124
    if-eq v6, v5, :cond_139

    const v1, 0x9c40

    if-ge v6, v5, :cond_132

    if-ge v6, v1, :cond_120

    if-le v5, v1, :cond_120

    :goto_12f
    add-int/lit8 v13, v13, 0x1

    goto :goto_122

    :cond_132
    if-ge v5, v1, :cond_119

    if-le v6, v1, :cond_119

    add-int/lit8 v14, v14, 0x1

    goto :goto_11b

    .line 330
    :cond_139
    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v2

    invoke-virtual {v1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    sub-int v1, v2, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_149

    add-int/lit8 v8, v8, 0x1

    goto :goto_14e

    :cond_149
    const/4 v2, -0x1

    if-ne v1, v2, :cond_14e

    add-int/lit8 v10, v10, 0x1

    :cond_14e
    :goto_14e
    if-nez v16, :cond_154

    if-eqz v1, :cond_154

    move/from16 v16, v1

    :cond_154
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, v17

    move/from16 v5, v18

    move/from16 v6, v19

    goto/16 :goto_1c

    :cond_164
    move/from16 v17, v4

    move/from16 v18, v5

    move/from16 v19, v6

    if-eq v11, v12, :cond_16e

    sub-int/2addr v11, v12

    return v11

    :cond_16e
    if-eq v13, v14, :cond_172

    sub-int/2addr v13, v14

    return v13

    :cond_172
    if-eq v15, v9, :cond_176

    sub-int/2addr v15, v9

    return v15

    :cond_176
    if-eq v8, v10, :cond_17a

    sub-int/2addr v8, v10

    return v8

    :cond_17a
    if-eqz v16, :cond_17d

    return v16

    :cond_17d
    move/from16 v1, p3

    if-eqz v1, :cond_1b7

    move/from16 v2, v18

    move/from16 v3, v19

    if-ne v2, v3, :cond_1b4

    add-int/lit8 v5, v2, -0x1

    move/from16 v1, v17

    if-ne v1, v5, :cond_1b2

    move-object/from16 v4, p1

    const/4 v5, 0x1

    .line 359
    invoke-static {v4, v2, v1, v5}, Lfreemarker/ext/beans/ArgumentTypes;->getParamType([Ljava/lang/Class;IIZ)Ljava/lang/Class;

    move-result-object v2

    move-object/from16 v6, p2

    .line 360
    invoke-static {v6, v3, v1, v5}, Lfreemarker/ext/beans/ArgumentTypes;->getParamType([Ljava/lang/Class;IIZ)Ljava/lang/Class;

    move-result-object v1

    .line 361
    invoke-static {v2}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    invoke-static {v1}, Lfreemarker/template/utility/ClassUtil;->isNumerical(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1ad

    .line 362
    invoke-static {v2, v1}, Lfreemarker/ext/beans/OverloadedNumberUtil;->compareNumberTypeSpecificity(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v3

    if-eqz v3, :cond_1ad

    return v3

    .line 366
    :cond_1ad
    invoke-direct {v0, v2, v1}, Lfreemarker/ext/beans/ArgumentTypes;->compareParameterListPreferability_cmpTypeSpecificty(Ljava/lang/Class;Ljava/lang/Class;)I

    move-result v1

    return v1

    :cond_1b2
    const/4 v5, 0x0

    return v5

    :cond_1b4
    sub-int v5, v2, v3

    return v5

    :cond_1b7
    const/4 v5, 0x0

    return v5

    :cond_1b9
    move-object v4, v1

    move v1, v3

    move v3, v6

    move-object v6, v2

    move v2, v5

    const/4 v5, 0x0

    move v7, v5

    move v8, v7

    move v9, v8

    :goto_1c2
    if-ge v7, v2, :cond_1eb

    .line 382
    invoke-static {v4, v2, v7, v1}, Lfreemarker/ext/beans/ArgumentTypes;->getParamType([Ljava/lang/Class;IIZ)Ljava/lang/Class;

    move-result-object v10

    .line 383
    invoke-static {v6, v3, v7, v1}, Lfreemarker/ext/beans/ArgumentTypes;->getParamType([Ljava/lang/Class;IIZ)Ljava/lang/Class;

    move-result-object v11

    if-eq v10, v11, :cond_1e7

    if-nez v8, :cond_1d9

    .line 387
    invoke-static {v10, v11, v5, v5}, Lfreemarker/ext/beans/_MethodUtil;->isMoreOrSameSpecificParameterType(Ljava/lang/Class;Ljava/lang/Class;ZI)I

    move-result v8

    if-eqz v8, :cond_1d7

    goto :goto_1d9

    :cond_1d7
    move v8, v5

    goto :goto_1da

    :cond_1d9
    :goto_1d9
    const/4 v8, 0x1

    :goto_1da
    if-nez v9, :cond_1e5

    .line 390
    invoke-static {v11, v10, v5, v5}, Lfreemarker/ext/beans/_MethodUtil;->isMoreOrSameSpecificParameterType(Ljava/lang/Class;Ljava/lang/Class;ZI)I

    move-result v9

    if-eqz v9, :cond_1e3

    goto :goto_1e5

    :cond_1e3
    const/4 v5, 0x0

    goto :goto_1e6

    :cond_1e5
    :goto_1e5
    const/4 v5, 0x1

    :goto_1e6
    move v9, v5

    :cond_1e7
    add-int/lit8 v7, v7, 0x1

    const/4 v5, 0x0

    goto :goto_1c2

    :cond_1eb
    if-eqz v8, :cond_1f0

    const/4 v1, 0x1

    xor-int/2addr v1, v9

    return v1

    :cond_1f0
    if-eqz v9, :cond_1f4

    const/4 v1, -0x1

    return v1

    :cond_1f4
    const/4 v1, 0x0

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    .line 92
    instance-of v0, p1, Lfreemarker/ext/beans/ArgumentTypes;

    const/4 v1, 0x0

    if-eqz v0, :cond_24

    .line 93
    check-cast p1, Lfreemarker/ext/beans/ArgumentTypes;

    .line 94
    iget-object v0, p1, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    array-length v0, v0

    iget-object v2, p0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    array-length v2, v2

    if-eq v0, v2, :cond_10

    return v1

    :cond_10
    move v0, v1

    .line 97
    :goto_11
    iget-object v2, p0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_22

    .line 98
    iget-object v3, p1, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    aget-object v3, v3, v0

    aget-object v2, v2, v0

    if-eq v3, v2, :cond_1f

    return v1

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_22
    const/4 p1, 0x1

    return p1

    :cond_24
    return v1
.end method

.method getApplicables(Ljava/util/List;Z)Ljava/util/LinkedList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;",
            ">;Z)",
            "Ljava/util/LinkedList<",
            "Lfreemarker/ext/beans/CallableMemberDescriptor;",
            ">;"
        }
    .end annotation

    .line 456
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 457
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_9
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_34

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;

    .line 458
    invoke-direct {p0, v1, p2}, Lfreemarker/ext/beans/ArgumentTypes;->isApplicable(Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;Z)I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_9

    if-nez v2, :cond_22

    .line 461
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_22
    const/4 v3, 0x1

    if-ne v2, v3, :cond_2e

    .line 463
    new-instance v2, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;

    invoke-direct {v2, v1}, Lfreemarker/ext/beans/ArgumentTypes$SpecialConversionCallableMemberDescriptor;-><init>(Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 465
    :cond_2e
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1}, Lfreemarker/core/BugException;-><init>()V

    throw p1

    :cond_34
    return-object v0
.end method

.method getMostSpecific(Ljava/util/List;Z)Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lfreemarker/ext/beans/ReflectionCallableMemberDescriptor;",
            ">;Z)",
            "Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;"
        }
    .end annotation

    .line 113
    invoke-virtual {p0, p1, p2}, Lfreemarker/ext/beans/ArgumentTypes;->getApplicables(Ljava/util/List;Z)Ljava/util/LinkedList;

    move-result-object p1

    .line 114
    invoke-virtual {p1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 115
    sget-object p1, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;->NO_SUCH_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    return-object p1

    .line 117
    :cond_d
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1b

    .line 118
    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;

    return-object p1

    .line 121
    :cond_1b
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 122
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_24
    :goto_24
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/ext/beans/CallableMemberDescriptor;

    .line 124
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    .line 125
    :cond_35
    :goto_35
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_57

    .line 126
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfreemarker/ext/beans/CallableMemberDescriptor;

    .line 128
    invoke-virtual {v2}, Lfreemarker/ext/beans/CallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5}, Lfreemarker/ext/beans/CallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object v5

    .line 127
    invoke-virtual {p0, v6, v5, p2}, Lfreemarker/ext/beans/ArgumentTypes;->compareParameterListPreferability([Ljava/lang/Class;[Ljava/lang/Class;Z)I

    move-result v5

    if-lez v5, :cond_53

    .line 130
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_35

    :cond_53
    if-gez v5, :cond_35

    move v4, v1

    goto :goto_35

    :cond_57
    if-nez v4, :cond_24

    .line 136
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_24

    .line 139
    :cond_5d
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v1, :cond_66

    .line 140
    sget-object p1, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;->AMBIGUOUS_METHOD:Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    return-object p1

    .line 142
    :cond_66
    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;

    return-object p1
.end method

.method public hashCode()I
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 84
    :goto_2
    iget-object v2, p0, Lfreemarker/ext/beans/ArgumentTypes;->types:[Ljava/lang/Class;

    array-length v3, v2

    if-ge v0, v3, :cond_11

    .line 85
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_11
    return v1
.end method
