.class public abstract Lfreemarker/template/DefaultObjectWrapperConfiguration;
.super Lfreemarker/ext/beans/BeansWrapperConfiguration;
.source "DefaultObjectWrapperConfiguration.java"


# instance fields
.field private forceLegacyNonListCollections:Z

.field private iterableSupport:Z

.field private useAdaptersForContainers:Z


# direct methods
.method protected constructor <init>(Lfreemarker/template/Version;)V
    .registers 4

    .line 40
    invoke-static {p1}, Lfreemarker/template/DefaultObjectWrapper;->normalizeIncompatibleImprovementsVersion(Lfreemarker/template/Version;)Lfreemarker/template/Version;

    move-result-object p1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lfreemarker/ext/beans/BeansWrapperConfiguration;-><init>(Lfreemarker/template/Version;Z)V

    .line 41
    invoke-virtual {p0}, Lfreemarker/template/DefaultObjectWrapperConfiguration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Version;->intValue()I

    move-result p1

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-lt p1, v1, :cond_16

    move p1, v0

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->useAdaptersForContainers:Z

    .line 42
    iput-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->forceLegacyNonListCollections:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 95
    invoke-super {p0, p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 96
    :cond_8
    check-cast p1, Lfreemarker/template/DefaultObjectWrapperConfiguration;

    .line 97
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->useAdaptersForContainers:Z

    invoke-virtual {p1}, Lfreemarker/template/DefaultObjectWrapperConfiguration;->getUseAdaptersForContainers()Z

    move-result v2

    if-ne v0, v2, :cond_1f

    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->forceLegacyNonListCollections:Z

    iget-boolean v2, p1, Lfreemarker/template/DefaultObjectWrapperConfiguration;->forceLegacyNonListCollections:Z

    if-ne v0, v2, :cond_1f

    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->iterableSupport:Z

    iget-boolean p1, p1, Lfreemarker/template/DefaultObjectWrapperConfiguration;->iterableSupport:Z

    if-ne v0, p1, :cond_1f

    const/4 v1, 0x1

    :cond_1f
    return v1
.end method

.method public getForceLegacyNonListCollections()Z
    .registers 2

    .line 57
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->forceLegacyNonListCollections:Z

    return v0
.end method

.method public getIterableSupport()Z
    .registers 2

    .line 71
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->iterableSupport:Z

    return v0
.end method

.method public getUseAdaptersForContainers()Z
    .registers 2

    .line 47
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->useAdaptersForContainers:Z

    return v0
.end method

.method public hashCode()I
    .registers 5

    .line 85
    invoke-super {p0}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 87
    iget-boolean v1, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->useAdaptersForContainers:Z

    const/16 v2, 0x4cf

    const/16 v3, 0x4d5

    if-eqz v1, :cond_10

    move v1, v2

    goto :goto_11

    :cond_10
    move v1, v3

    :goto_11
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 88
    iget-boolean v1, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->forceLegacyNonListCollections:Z

    if-eqz v1, :cond_1a

    move v1, v2

    goto :goto_1b

    :cond_1a
    move v1, v3

    :goto_1b
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 89
    iget-boolean v1, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->iterableSupport:Z

    if-eqz v1, :cond_23

    goto :goto_24

    :cond_23
    move v2, v3

    :goto_24
    add-int/2addr v0, v2

    return v0
.end method

.method public setForceLegacyNonListCollections(Z)V
    .registers 2

    .line 62
    iput-boolean p1, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->forceLegacyNonListCollections:Z

    return-void
.end method

.method public setIterableSupport(Z)V
    .registers 2

    .line 80
    iput-boolean p1, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->iterableSupport:Z

    return-void
.end method

.method public setUseAdaptersForContainers(Z)V
    .registers 2

    .line 52
    iput-boolean p1, p0, Lfreemarker/template/DefaultObjectWrapperConfiguration;->useAdaptersForContainers:Z

    return-void
.end method
