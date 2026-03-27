.class final Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;
.super Ljava/lang/Object;
.source "ErrorUtils.java"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method private static synthetic $$$reportNull$$$0(I)V
    .registers 15

    const/16 v0, 0xd

    const/16 v1, 0xc

    const/16 v2, 0x9

    const/16 v3, 0x8

    const/4 v4, 0x6

    const/4 v5, 0x5

    const/4 v6, 0x4

    const/4 v7, 0x1

    if-eq p0, v7, :cond_1f

    if-eq p0, v6, :cond_1f

    if-eq p0, v5, :cond_1f

    if-eq p0, v4, :cond_1f

    if-eq p0, v3, :cond_1f

    if-eq p0, v2, :cond_1f

    if-eq p0, v1, :cond_1f

    if-eq p0, v0, :cond_1f

    const-string v8, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_21

    :cond_1f
    const-string v8, "@NotNull method %s.%s must not return null"

    :goto_21
    const/4 v9, 0x2

    if-eq p0, v7, :cond_34

    if-eq p0, v6, :cond_34

    if-eq p0, v5, :cond_34

    if-eq p0, v4, :cond_34

    if-eq p0, v3, :cond_34

    if-eq p0, v2, :cond_34

    if-eq p0, v1, :cond_34

    if-eq p0, v0, :cond_34

    const/4 v10, 0x3

    goto :goto_35

    :cond_34
    move v10, v9

    :goto_35
    new-array v10, v10, [Ljava/lang/Object;

    const-string v11, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$1"

    const/4 v12, 0x0

    packed-switch p0, :pswitch_data_cc

    const-string v13, "capability"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_42
    const-string v13, "targetModule"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_47
    const-string v13, "visitor"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_4c
    const-string v13, "nameFilter"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_51
    const-string v13, "fqName"

    aput-object v13, v10, v12

    goto :goto_58

    :pswitch_56
    aput-object v11, v10, v12

    :goto_58
    const-string v12, "getSubPackagesOf"

    if-eq p0, v7, :cond_8e

    if-eq p0, v6, :cond_8b

    if-eq p0, v5, :cond_86

    if-eq p0, v4, :cond_81

    if-eq p0, v3, :cond_7c

    if-eq p0, v2, :cond_77

    if-eq p0, v1, :cond_72

    if-eq p0, v0, :cond_6d

    aput-object v11, v10, v7

    goto :goto_92

    :cond_6d
    const-string v11, "getBuiltIns"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_72
    const-string v11, "getOriginal"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_77
    const-string v11, "getExpectedByModules"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_7c
    const-string v11, "getAllDependencyModules"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_81
    const-string v11, "getStableName"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_86
    const-string v11, "getName"

    aput-object v11, v10, v7

    goto :goto_92

    :cond_8b
    aput-object v12, v10, v7

    goto :goto_92

    :cond_8e
    const-string v11, "getAnnotations"

    aput-object v11, v10, v7

    :goto_92
    packed-switch p0, :pswitch_data_ea

    const-string v11, "getCapability"

    aput-object v11, v10, v9

    goto :goto_ab

    :pswitch_9a
    const-string v11, "shouldSeeInternalsOf"

    aput-object v11, v10, v9

    goto :goto_ab

    :pswitch_9f
    const-string v11, "accept"

    aput-object v11, v10, v9

    goto :goto_ab

    :pswitch_a4
    const-string v11, "getPackage"

    aput-object v11, v10, v9

    goto :goto_ab

    :pswitch_a9
    aput-object v12, v10, v9

    :goto_ab
    :pswitch_ab
    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    if-eq p0, v7, :cond_c5

    if-eq p0, v6, :cond_c5

    if-eq p0, v5, :cond_c5

    if-eq p0, v4, :cond_c5

    if-eq p0, v3, :cond_c5

    if-eq p0, v2, :cond_c5

    if-eq p0, v1, :cond_c5

    if-eq p0, v0, :cond_c5

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_ca

    :cond_c5
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_ca
    throw p0

    nop

    :pswitch_data_cc
    .packed-switch 0x1
        :pswitch_56
        :pswitch_51
        :pswitch_4c
        :pswitch_56
        :pswitch_56
        :pswitch_56
        :pswitch_51
        :pswitch_56
        :pswitch_56
        :pswitch_47
        :pswitch_42
        :pswitch_56
        :pswitch_56
    .end packed-switch

    :pswitch_data_ea
    .packed-switch 0x1
        :pswitch_ab
        :pswitch_a9
        :pswitch_a9
        :pswitch_ab
        :pswitch_ab
        :pswitch_ab
        :pswitch_a4
        :pswitch_ab
        :pswitch_ab
        :pswitch_9f
        :pswitch_9a
        :pswitch_ab
        :pswitch_ab
    .end packed-switch
.end method

.method constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorVisitor<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    if-nez p1, :cond_7

    const/16 p1, 0xa

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    :cond_7
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;
    .registers 3

    .line 62
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;->Companion:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations$Companion;->getEMPTY()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/Annotations;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    :cond_c
    return-object v0
.end method

.method public getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
    .registers 3

    .line 130
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;->getInstance()Lkotlin/reflect/jvm/internal/impl/builtins/DefaultBuiltIns;

    move-result-object v0

    if-nez v0, :cond_b

    const/16 v1, 0xd

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    :cond_b
    return-object v0
.end method

.method public getContainingDeclaration()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Lkotlin/reflect/jvm/internal/impl/name/Name;
    .registers 3

    .line 74
    const-string v0, "<ERROR MODULE>"

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/Name;->special(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/Name;

    move-result-object v0

    if-nez v0, :cond_c

    const/4 v1, 0x5

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    :cond_c
    return-object v0
.end method

.method public getOriginal()Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;
    .registers 1

    return-object p0
.end method

.method public getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
    .registers 3

    if-nez p1, :cond_6

    const/4 p1, 0x7

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    .line 86
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Should not be called!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getSubPackagesOf(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/name/Name;",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/util/Collection<",
            "Lkotlin/reflect/jvm/internal/impl/name/FqName;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_6

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    :cond_6
    if-nez p2, :cond_c

    const/4 p1, 0x3

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    .line 68
    :cond_c
    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_16

    const/4 p2, 0x4

    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    :cond_16
    return-object p1
.end method

.method public shouldSeeInternalsOf(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Z
    .registers 2

    if-nez p1, :cond_7

    const/16 p1, 0xb

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/ErrorUtils$1;->$$$reportNull$$$0(I)V

    :cond_7
    const/4 p1, 0x0

    return p1
.end method
