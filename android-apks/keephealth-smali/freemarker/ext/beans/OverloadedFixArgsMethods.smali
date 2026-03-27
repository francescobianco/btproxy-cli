.class Lfreemarker/ext/beans/OverloadedFixArgsMethods;
.super Lfreemarker/ext/beans/OverloadedMethodsSubset;
.source "OverloadedFixArgsMethods.java"


# direct methods
.method constructor <init>(Z)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lfreemarker/ext/beans/OverloadedMethodsSubset;-><init>(Z)V

    return-void
.end method


# virtual methods
.method afterWideningUnwrappingHints([Ljava/lang/Class;[I)V
    .registers 3

    return-void
.end method

.method getMemberAndArguments(Ljava/util/List;Lfreemarker/ext/beans/BeansWrapper;)Lfreemarker/ext/beans/MaybeEmptyMemberAndArguments;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-nez p1, :cond_4

    .line 53
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 55
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 56
    invoke-virtual {p0}, Lfreemarker/ext/beans/OverloadedFixArgsMethods;->getUnwrappingHintsByParamCount()[[Ljava/lang/Class;

    move-result-object v1

    .line 57
    array-length v2, v1

    if-gt v2, v0, :cond_12

    .line 58
    sget-object p1, Lfreemarker/ext/beans/EmptyMemberAndArguments;->WRONG_NUMBER_OF_ARGUMENTS:Lfreemarker/ext/beans/EmptyMemberAndArguments;

    return-object p1

    .line 60
    :cond_12
    aget-object v1, v1, v0

    if-nez v1, :cond_19

    .line 62
    sget-object p1, Lfreemarker/ext/beans/EmptyMemberAndArguments;->WRONG_NUMBER_OF_ARGUMENTS:Lfreemarker/ext/beans/EmptyMemberAndArguments;

    return-object p1

    .line 65
    :cond_19
    new-array v2, v0, [Ljava/lang/Object;

    .line 67
    invoke-virtual {p0, v0}, Lfreemarker/ext/beans/OverloadedFixArgsMethods;->getTypeFlags(I)[I

    move-result-object v3

    .line 68
    sget-object v4, Lfreemarker/ext/beans/OverloadedFixArgsMethods;->ALL_ZEROS_ARRAY:[I

    if-ne v3, v4, :cond_24

    const/4 v3, 0x0

    .line 72
    :cond_24
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move v5, v4

    :goto_2a
    if-ge v5, v0, :cond_4e

    .line 75
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lfreemarker/template/TemplateModel;

    aget-object v7, v1, v5

    if-eqz v3, :cond_39

    aget v8, v3, v5

    goto :goto_3a

    :cond_39
    move v8, v4

    .line 74
    :goto_3a
    invoke-virtual {p2, v6, v7, v8}, Lfreemarker/ext/beans/BeansWrapper;->tryUnwrapTo(Lfreemarker/template/TemplateModel;Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v6

    .line 78
    sget-object v7, Lfreemarker/template/ObjectWrapperAndUnwrapper;->CANT_UNWRAP_TO_TARGET_CLASS:Ljava/lang/Object;

    if-ne v6, v7, :cond_49

    add-int/lit8 v5, v5, 0x1

    .line 79
    invoke-static {v5}, Lfreemarker/ext/beans/EmptyMemberAndArguments;->noCompatibleOverload(I)Lfreemarker/ext/beans/EmptyMemberAndArguments;

    move-result-object p1

    return-object p1

    .line 81
    :cond_49
    aput-object v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2a

    .line 84
    :cond_4e
    invoke-virtual {p0, v2, v4}, Lfreemarker/ext/beans/OverloadedFixArgsMethods;->getMemberDescriptorForArgs([Ljava/lang/Object;Z)Lfreemarker/ext/beans/MaybeEmptyCallableMemberDescriptor;

    move-result-object p1

    .line 85
    instance-of p2, p1, Lfreemarker/ext/beans/CallableMemberDescriptor;

    if-eqz p2, :cond_73

    .line 86
    check-cast p1, Lfreemarker/ext/beans/CallableMemberDescriptor;

    .line 87
    iget-boolean p2, p0, Lfreemarker/ext/beans/OverloadedFixArgsMethods;->bugfixed:Z

    if-eqz p2, :cond_66

    if-eqz v3, :cond_6d

    .line 92
    invoke-virtual {p1}, Lfreemarker/ext/beans/CallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p0, v2, p2, v3}, Lfreemarker/ext/beans/OverloadedFixArgsMethods;->forceNumberArgumentsToParameterTypes([Ljava/lang/Object;[Ljava/lang/Class;[I)V

    goto :goto_6d

    .line 95
    :cond_66
    invoke-virtual {p1}, Lfreemarker/ext/beans/CallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object p2

    invoke-static {p2, v2}, Lfreemarker/ext/beans/BeansWrapper;->coerceBigDecimals([Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 97
    :cond_6d
    :goto_6d
    new-instance p2, Lfreemarker/ext/beans/MemberAndArguments;

    invoke-direct {p2, p1, v2}, Lfreemarker/ext/beans/MemberAndArguments;-><init>(Lfreemarker/ext/beans/CallableMemberDescriptor;[Ljava/lang/Object;)V

    return-object p2

    .line 99
    :cond_73
    check-cast p1, Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;

    invoke-static {p1, v2}, Lfreemarker/ext/beans/EmptyMemberAndArguments;->from(Lfreemarker/ext/beans/EmptyCallableMemberDescriptor;[Ljava/lang/Object;)Lfreemarker/ext/beans/MaybeEmptyMemberAndArguments;

    move-result-object p1

    return-object p1
.end method

.method preprocessParameterTypes(Lfreemarker/ext/beans/CallableMemberDescriptor;)[Ljava/lang/Class;
    .registers 2

    .line 40
    invoke-virtual {p1}, Lfreemarker/ext/beans/CallableMemberDescriptor;->getParamTypes()[Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
