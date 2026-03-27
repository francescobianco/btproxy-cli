.class public abstract Lfreemarker/ext/beans/BeansWrapperConfiguration;
.super Ljava/lang/Object;
.source "BeansWrapperConfiguration.java"

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

.field private defaultDateType:I

.field private final incompatibleImprovements:Lfreemarker/template/Version;

.field private outerIdentity:Lfreemarker/template/ObjectWrapper;

.field private preferIndexedReadMethod:Z

.field private simpleMapWrapper:Z

.field private strict:Z

.field private useModelCache:Z


# direct methods
.method protected constructor <init>(Lfreemarker/template/Version;)V
    .registers 3

    const/4 v0, 0x0

    .line 94
    invoke-direct {p0, p1, v0}, Lfreemarker/ext/beans/BeansWrapperConfiguration;-><init>(Lfreemarker/template/Version;Z)V

    return-void
.end method

.method protected constructor <init>(Lfreemarker/template/Version;Z)V
    .registers 5

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->simpleMapWrapper:Z

    .line 50
    iput v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->defaultDateType:I

    const/4 v1, 0x0

    .line 51
    iput-object v1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    .line 52
    iput-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->strict:Z

    .line 53
    iput-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->useModelCache:Z

    .line 78
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->checkVersionNotNullAndSupported(Lfreemarker/template/Version;)V

    if-eqz p2, :cond_15

    goto :goto_19

    .line 82
    :cond_15
    invoke-static {p1}, Lfreemarker/ext/beans/BeansWrapper;->normalizeIncompatibleImprovementsVersion(Lfreemarker/template/Version;)Lfreemarker/template/Version;

    move-result-object p1

    .line 83
    :goto_19
    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->incompatibleImprovements:Lfreemarker/template/Version;

    .line 85
    invoke-virtual {p1}, Lfreemarker/template/Version;->intValue()I

    move-result p2

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_27:I

    if-ge p2, v1, :cond_24

    const/4 v0, 0x1

    :cond_24
    iput-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->preferIndexedReadMethod:Z

    .line 87
    new-instance p2, Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-direct {p2, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;-><init>(Lfreemarker/template/Version;)V

    iput-object p2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    return-void
.end method


# virtual methods
.method protected clone(Z)Ljava/lang/Object;
    .registers 4

    .line 137
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/ext/beans/BeansWrapperConfiguration;

    if-eqz p1, :cond_12

    .line 139
    iget-object p1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    .line 140
    invoke-virtual {p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    iput-object p1, v0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;
    :try_end_12
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_12} :catch_13

    :cond_12
    return-object v0

    :catch_13
    move-exception p1

    .line 144
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to clone BeansWrapperConfiguration"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    return v1

    .line 120
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    return v1

    .line 121
    :cond_13
    check-cast p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;

    .line 123
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->incompatibleImprovements:Lfreemarker/template/Version;

    iget-object v3, p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;->incompatibleImprovements:Lfreemarker/template/Version;

    invoke-virtual {v2, v3}, Lfreemarker/template/Version;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_20

    return v1

    .line 124
    :cond_20
    iget-boolean v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->simpleMapWrapper:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;->simpleMapWrapper:Z

    if-eq v2, v3, :cond_27

    return v1

    .line 125
    :cond_27
    iget-boolean v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->preferIndexedReadMethod:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;->preferIndexedReadMethod:Z

    if-eq v2, v3, :cond_2e

    return v1

    .line 126
    :cond_2e
    iget v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->defaultDateType:I

    iget v3, p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;->defaultDateType:I

    if-eq v2, v3, :cond_35

    return v1

    .line 127
    :cond_35
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    iget-object v3, p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    if-eq v2, v3, :cond_3c

    return v1

    .line 128
    :cond_3c
    iget-boolean v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->strict:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;->strict:Z

    if-eq v2, v3, :cond_43

    return v1

    .line 129
    :cond_43
    iget-boolean v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->useModelCache:Z

    iget-boolean v3, p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;->useModelCache:Z

    if-eq v2, v3, :cond_4a

    return v1

    .line 130
    :cond_4a
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    iget-object p1, p1, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v2, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_55

    return v1

    :cond_55
    return v0
.end method

.method getClassIntrospectorBuilder()Lfreemarker/ext/beans/ClassIntrospectorBuilder;
    .registers 2

    .line 259
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    return-object v0
.end method

.method public getDefaultDateType()I
    .registers 2

    .line 168
    iget v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->defaultDateType:I

    return v0
.end method

.method public getExposeFields()Z
    .registers 2

    .line 220
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getExposeFields()Z

    move-result v0

    return v0
.end method

.method public getExposureLevel()I
    .registers 2

    .line 211
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getExposureLevel()I

    move-result v0

    return v0
.end method

.method public getIncompatibleImprovements()Lfreemarker/template/Version;
    .registers 2

    .line 207
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->incompatibleImprovements:Lfreemarker/template/Version;

    return-object v0
.end method

.method public getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;
    .registers 2

    .line 238
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getMethodAppearanceFineTuner()Lfreemarker/ext/beans/MethodAppearanceFineTuner;

    move-result-object v0

    return-object v0
.end method

.method getMethodSorter()Lfreemarker/ext/beans/MethodSorter;
    .registers 2

    .line 251
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getMethodSorter()Lfreemarker/ext/beans/MethodSorter;

    move-result-object v0

    return-object v0
.end method

.method public getOuterIdentity()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 177
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    return-object v0
.end method

.method public getPreferIndexedReadMethod()Z
    .registers 2

    .line 159
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->preferIndexedReadMethod:Z

    return v0
.end method

.method public getTreatDefaultMethodsAsBeanMembers()Z
    .registers 2

    .line 229
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->getTreatDefaultMethodsAsBeanMembers()Z

    move-result v0

    return v0
.end method

.method public getUseModelCache()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->useModelCache:Z

    return v0
.end method

.method public hashCode()I
    .registers 6

    .line 101
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->incompatibleImprovements:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 102
    iget-boolean v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->simpleMapWrapper:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    if-eqz v2, :cond_14

    move v2, v3

    goto :goto_15

    :cond_14
    move v2, v4

    :goto_15
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 103
    iget-boolean v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->preferIndexedReadMethod:Z

    if-eqz v2, :cond_1d

    move v2, v3

    goto :goto_1e

    :cond_1d
    move v2, v4

    :goto_1e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 104
    iget v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->defaultDateType:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 105
    iget-object v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    if-eqz v2, :cond_2d

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 106
    iget-boolean v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->strict:Z

    if-eqz v2, :cond_36

    move v2, v3

    goto :goto_37

    :cond_36
    move v2, v4

    :goto_37
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 107
    iget-boolean v2, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->useModelCache:Z

    if-eqz v2, :cond_3e

    goto :goto_3f

    :cond_3e
    move v3, v4

    :goto_3f
    add-int/2addr v0, v3

    mul-int/2addr v0, v1

    .line 108
    iget-object v1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isSimpleMapWrapper()Z
    .registers 2

    .line 149
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->simpleMapWrapper:Z

    return v0
.end method

.method public isStrict()Z
    .registers 2

    .line 189
    iget-boolean v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->strict:Z

    return v0
.end method

.method public setDefaultDateType(I)V
    .registers 2

    .line 173
    iput p1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->defaultDateType:I

    return-void
.end method

.method public setExposeFields(Z)V
    .registers 3

    .line 225
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setExposeFields(Z)V

    return-void
.end method

.method public setExposureLevel(I)V
    .registers 3

    .line 216
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setExposureLevel(I)V

    return-void
.end method

.method public setMethodAppearanceFineTuner(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V
    .registers 3

    .line 247
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setMethodAppearanceFineTuner(Lfreemarker/ext/beans/MethodAppearanceFineTuner;)V

    return-void
.end method

.method setMethodSorter(Lfreemarker/ext/beans/MethodSorter;)V
    .registers 3

    .line 255
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setMethodSorter(Lfreemarker/ext/beans/MethodSorter;)V

    return-void
.end method

.method public setOuterIdentity(Lfreemarker/template/ObjectWrapper;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->outerIdentity:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public setPreferIndexedReadMethod(Z)V
    .registers 2

    .line 164
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->preferIndexedReadMethod:Z

    return-void
.end method

.method public setSimpleMapWrapper(Z)V
    .registers 2

    .line 154
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->simpleMapWrapper:Z

    return-void
.end method

.method public setStrict(Z)V
    .registers 2

    .line 194
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->strict:Z

    return-void
.end method

.method public setTreatDefaultMethodsAsBeanMembers(Z)V
    .registers 3

    .line 234
    iget-object v0, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->classIntrospectorBuilder:Lfreemarker/ext/beans/ClassIntrospectorBuilder;

    invoke-virtual {v0, p1}, Lfreemarker/ext/beans/ClassIntrospectorBuilder;->setTreatDefaultMethodsAsBeanMembers(Z)V

    return-void
.end method

.method public setUseModelCache(Z)V
    .registers 2

    .line 203
    iput-boolean p1, p0, Lfreemarker/ext/beans/BeansWrapperConfiguration;->useModelCache:Z

    return-void
.end method
