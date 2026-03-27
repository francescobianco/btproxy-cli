.class public Lfreemarker/template/DefaultObjectWrapper;
.super Lfreemarker/ext/beans/BeansWrapper;
.source "DefaultObjectWrapper.java"


# static fields
.field private static final JYTHON_OBJ_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final JYTHON_WRAPPER:Lfreemarker/template/ObjectWrapper;

.field static final instance:Lfreemarker/template/DefaultObjectWrapper;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private forceLegacyNonListCollections:Z

.field private iterableSupport:Z

.field private final useAdapterForEnumerations:Z

.field private useAdaptersForContainers:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 64
    new-instance v0, Lfreemarker/template/DefaultObjectWrapper;

    invoke-direct {v0}, Lfreemarker/template/DefaultObjectWrapper;-><init>()V

    sput-object v0, Lfreemarker/template/DefaultObjectWrapper;->instance:Lfreemarker/template/DefaultObjectWrapper;

    const/4 v0, 0x0

    .line 151
    :try_start_8
    const-string v1, "org.python.core.PyObject"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 152
    const-string v2, "freemarker.ext.jython.JythonWrapper"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "INSTANCE"

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/template/ObjectWrapper;
    :try_end_20
    .catchall {:try_start_8 .. :try_end_20} :catchall_22

    move-object v0, v1

    goto :goto_33

    :catchall_22
    move-exception v1

    .line 158
    instance-of v2, v1, Ljava/lang/ClassNotFoundException;

    if-nez v2, :cond_32

    .line 160
    :try_start_27
    const-string v2, "freemarker.template.DefaultObjectWrapper"

    invoke-static {v2}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v2

    const-string v3, "Failed to init Jython support, so it was disabled."

    .line 161
    invoke-virtual {v2, v3, v1}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_32
    .catchall {:try_start_27 .. :try_end_32} :catchall_32

    :catchall_32
    :cond_32
    move-object v2, v0

    .line 167
    :goto_33
    sput-object v0, Lfreemarker/template/DefaultObjectWrapper;->JYTHON_OBJ_CLASS:Ljava/lang/Class;

    .line 168
    sput-object v2, Lfreemarker/template/DefaultObjectWrapper;->JYTHON_WRAPPER:Lfreemarker/template/ObjectWrapper;

    return-void
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 84
    sget-object v0, Lfreemarker/template/Configuration;->DEFAULT_INCOMPATIBLE_IMPROVEMENTS:Lfreemarker/template/Version;

    invoke-direct {p0, v0}, Lfreemarker/template/DefaultObjectWrapper;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method

.method protected constructor <init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;Z)V
    .registers 6

    const/4 v0, 0x0

    .line 125
    invoke-direct {p0, p1, p2, v0}, Lfreemarker/ext/beans/BeansWrapper;-><init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;ZZ)V

    .line 126
    instance-of v1, p1, Lfreemarker/template/DefaultObjectWrapperConfiguration;

    if-eqz v1, :cond_b

    check-cast p1, Lfreemarker/template/DefaultObjectWrapperConfiguration;

    goto :goto_15

    :cond_b
    new-instance v1, Lfreemarker/template/DefaultObjectWrapper$2;

    .line 128
    invoke-virtual {p1}, Lfreemarker/ext/beans/BeansWrapperConfiguration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lfreemarker/template/DefaultObjectWrapper$2;-><init>(Lfreemarker/template/DefaultObjectWrapper;Lfreemarker/template/Version;)V

    move-object p1, v1

    .line 129
    :goto_15
    invoke-virtual {p1}, Lfreemarker/template/DefaultObjectWrapperConfiguration;->getUseAdaptersForContainers()Z

    move-result v1

    iput-boolean v1, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdaptersForContainers:Z

    if-eqz v1, :cond_2a

    .line 131
    invoke-virtual {p0}, Lfreemarker/template/DefaultObjectWrapper;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v1

    sget v2, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_26:I

    if-lt v1, v2, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    iput-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdapterForEnumerations:Z

    .line 132
    invoke-virtual {p1}, Lfreemarker/template/DefaultObjectWrapperConfiguration;->getForceLegacyNonListCollections()Z

    move-result v0

    iput-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->forceLegacyNonListCollections:Z

    .line 133
    invoke-virtual {p1}, Lfreemarker/template/DefaultObjectWrapperConfiguration;->getIterableSupport()Z

    move-result p1

    iput-boolean p1, p0, Lfreemarker/template/DefaultObjectWrapper;->iterableSupport:Z

    .line 134
    invoke-virtual {p0, p2}, Lfreemarker/template/DefaultObjectWrapper;->finalizeConstruction(Z)V

    return-void
.end method

.method protected constructor <init>(Lfreemarker/template/DefaultObjectWrapperConfiguration;Z)V
    .registers 3

    .line 144
    invoke-direct {p0, p1, p2}, Lfreemarker/template/DefaultObjectWrapper;-><init>(Lfreemarker/ext/beans/BeansWrapperConfiguration;Z)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .registers 3

    .line 115
    new-instance v0, Lfreemarker/template/DefaultObjectWrapper$1;

    invoke-direct {v0, p1}, Lfreemarker/template/DefaultObjectWrapper$1;-><init>(Lfreemarker/template/Version;)V

    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lfreemarker/template/DefaultObjectWrapper;-><init>(Lfreemarker/template/DefaultObjectWrapperConfiguration;Z)V

    return-void
.end method

.method protected static normalizeIncompatibleImprovementsVersion(Lfreemarker/template/Version;)Lfreemarker/template/Version;
    .registers 3

    .line 388
    invoke-static {p0}, Lfreemarker/template/_TemplateAPI;->checkVersionNotNullAndSupported(Lfreemarker/template/Version;)V

    .line 389
    invoke-static {p0}, Lfreemarker/ext/beans/BeansWrapper;->normalizeIncompatibleImprovementsVersion(Lfreemarker/template/Version;)Lfreemarker/template/Version;

    move-result-object v0

    .line 390
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-lt p0, v1, :cond_1a

    .line 391
    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-lt p0, v1, :cond_18

    goto :goto_1a

    :cond_18
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_22:Lfreemarker/template/Version;

    :cond_1a
    :goto_1a
    return-object v0
.end method


# virtual methods
.method protected convertArray(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6

    .line 281
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v0, :cond_16

    .line 284
    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_16
    return-object v1
.end method

.method public getForceLegacyNonListCollections()Z
    .registers 2

    .line 335
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->forceLegacyNonListCollections:Z

    return v0
.end method

.method public getIterableSupport()Z
    .registers 2

    .line 363
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->iterableSupport:Z

    return v0
.end method

.method public getUseAdaptersForContainers()Z
    .registers 2

    .line 295
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdaptersForContainers:Z

    return v0
.end method

.method protected handleUnknownType(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 263
    instance-of v0, p1, Lorg/w3c/dom/Node;

    if-eqz v0, :cond_9

    .line 264
    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultObjectWrapper;->wrapDomNode(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 266
    :cond_9
    sget-object v0, Lfreemarker/template/DefaultObjectWrapper;->JYTHON_WRAPPER:Lfreemarker/template/ObjectWrapper;

    if-eqz v0, :cond_1a

    sget-object v1, Lfreemarker/template/DefaultObjectWrapper;->JYTHON_OBJ_CLASS:Ljava/lang/Class;

    invoke-virtual {v1, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 267
    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 269
    :cond_1a
    invoke-super {p0, p1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public setForceLegacyNonListCollections(Z)V
    .registers 2

    .line 353
    invoke-virtual {p0}, Lfreemarker/template/DefaultObjectWrapper;->checkModifiable()V

    .line 354
    iput-boolean p1, p0, Lfreemarker/template/DefaultObjectWrapper;->forceLegacyNonListCollections:Z

    return-void
.end method

.method public setIterableSupport(Z)V
    .registers 2

    .line 378
    invoke-virtual {p0}, Lfreemarker/template/DefaultObjectWrapper;->checkModifiable()V

    .line 379
    iput-boolean p1, p0, Lfreemarker/template/DefaultObjectWrapper;->iterableSupport:Z

    return-void
.end method

.method public setUseAdaptersForContainers(Z)V
    .registers 2

    .line 325
    invoke-virtual {p0}, Lfreemarker/template/DefaultObjectWrapper;->checkModifiable()V

    .line 326
    iput-boolean p1, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdaptersForContainers:Z

    return-void
.end method

.method protected toPropertiesString()Ljava/lang/String;
    .registers 4

    .line 400
    invoke-super {p0}, Lfreemarker/ext/beans/BeansWrapper;->toPropertiesString()Ljava/lang/String;

    move-result-object v0

    .line 403
    const-string v1, "simpleMapWrapper"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1f

    const/16 v1, 0x2c

    .line 404
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

    add-int/lit8 v1, v1, 0x1

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 410
    :cond_1f
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "useAdaptersForContainers="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdaptersForContainers:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", forceLegacyNonListCollections="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lfreemarker/template/DefaultObjectWrapper;->forceLegacyNonListCollections:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iterableSupport="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lfreemarker/template/DefaultObjectWrapper;->iterableSupport:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    if-nez p1, :cond_8

    const/4 p1, 0x0

    .line 183
    invoke-super {p0, p1}, Lfreemarker/ext/beans/BeansWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 185
    :cond_8
    instance-of v0, p1, Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_f

    .line 186
    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1

    .line 188
    :cond_f
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1b

    .line 189
    new-instance v0, Lfreemarker/template/SimpleScalar;

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 191
    :cond_1b
    instance-of v0, p1, Ljava/lang/Number;

    if-eqz v0, :cond_27

    .line 192
    new-instance v0, Lfreemarker/template/SimpleNumber;

    check-cast p1, Ljava/lang/Number;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleNumber;-><init>(Ljava/lang/Number;)V

    return-object v0

    .line 194
    :cond_27
    instance-of v0, p1, Ljava/util/Date;

    if-eqz v0, :cond_5b

    .line 195
    instance-of v0, p1, Ljava/sql/Date;

    if-eqz v0, :cond_37

    .line 196
    new-instance v0, Lfreemarker/template/SimpleDate;

    check-cast p1, Ljava/sql/Date;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleDate;-><init>(Ljava/sql/Date;)V

    return-object v0

    .line 198
    :cond_37
    instance-of v0, p1, Ljava/sql/Time;

    if-eqz v0, :cond_43

    .line 199
    new-instance v0, Lfreemarker/template/SimpleDate;

    check-cast p1, Ljava/sql/Time;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleDate;-><init>(Ljava/sql/Time;)V

    return-object v0

    .line 201
    :cond_43
    instance-of v0, p1, Ljava/sql/Timestamp;

    if-eqz v0, :cond_4f

    .line 202
    new-instance v0, Lfreemarker/template/SimpleDate;

    check-cast p1, Ljava/sql/Timestamp;

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleDate;-><init>(Ljava/sql/Timestamp;)V

    return-object v0

    .line 204
    :cond_4f
    new-instance v0, Lfreemarker/template/SimpleDate;

    check-cast p1, Ljava/util/Date;

    invoke-virtual {p0}, Lfreemarker/template/DefaultObjectWrapper;->getDefaultDateType()I

    move-result v1

    invoke-direct {v0, p1, v1}, Lfreemarker/template/SimpleDate;-><init>(Ljava/util/Date;I)V

    return-object v0

    .line 206
    :cond_5b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 208
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdaptersForContainers:Z

    if-eqz v0, :cond_6e

    .line 209
    invoke-static {p1, p0}, Lfreemarker/template/DefaultArrayAdapter;->adapt(Ljava/lang/Object;Lfreemarker/template/ObjectWrapperAndUnwrapper;)Lfreemarker/template/DefaultArrayAdapter;

    move-result-object p1

    return-object p1

    .line 211
    :cond_6e
    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultObjectWrapper;->convertArray(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 215
    :cond_72
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_a0

    .line 216
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdaptersForContainers:Z

    if-eqz v0, :cond_98

    .line 217
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_85

    .line 218
    check-cast p1, Ljava/util/List;

    invoke-static {p1, p0}, Lfreemarker/template/DefaultListAdapter;->adapt(Ljava/util/List;Lfreemarker/template/utility/RichObjectWrapper;)Lfreemarker/template/DefaultListAdapter;

    move-result-object p1

    return-object p1

    .line 220
    :cond_85
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->forceLegacyNonListCollections:Z

    if-eqz v0, :cond_91

    new-instance v0, Lfreemarker/template/SimpleSequence;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    goto :goto_97

    :cond_91
    check-cast p1, Ljava/util/Collection;

    .line 222
    invoke-static {p1, p0}, Lfreemarker/template/DefaultNonListCollectionAdapter;->adapt(Ljava/util/Collection;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/DefaultNonListCollectionAdapter;

    move-result-object v0

    :goto_97
    return-object v0

    .line 225
    :cond_98
    new-instance v0, Lfreemarker/template/SimpleSequence;

    check-cast p1, Ljava/util/Collection;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/SimpleSequence;-><init>(Ljava/util/Collection;Lfreemarker/template/ObjectWrapper;)V

    return-object v0

    .line 228
    :cond_a0
    instance-of v0, p1, Ljava/util/Map;

    if-eqz v0, :cond_b8

    .line 229
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdaptersForContainers:Z

    if-eqz v0, :cond_af

    check-cast p1, Ljava/util/Map;

    .line 230
    invoke-static {p1, p0}, Lfreemarker/template/DefaultMapAdapter;->adapt(Ljava/util/Map;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/DefaultMapAdapter;

    move-result-object p1

    goto :goto_b7

    :cond_af
    new-instance v0, Lfreemarker/template/SimpleHash;

    check-cast p1, Ljava/util/Map;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/SimpleHash;-><init>(Ljava/util/Map;Lfreemarker/template/ObjectWrapper;)V

    move-object p1, v0

    :goto_b7
    return-object p1

    .line 233
    :cond_b8
    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_ca

    .line 234
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c7

    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->TRUE:Lfreemarker/template/TemplateBooleanModel;

    goto :goto_c9

    :cond_c7
    sget-object p1, Lfreemarker/template/TemplateBooleanModel;->FALSE:Lfreemarker/template/TemplateBooleanModel;

    :goto_c9
    return-object p1

    .line 236
    :cond_ca
    instance-of v0, p1, Ljava/util/Iterator;

    if-eqz v0, :cond_e2

    .line 237
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdaptersForContainers:Z

    if-eqz v0, :cond_d9

    check-cast p1, Ljava/util/Iterator;

    .line 238
    invoke-static {p1, p0}, Lfreemarker/template/DefaultIteratorAdapter;->adapt(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/DefaultIteratorAdapter;

    move-result-object p1

    goto :goto_e1

    :cond_d9
    new-instance v0, Lfreemarker/template/SimpleCollection;

    check-cast p1, Ljava/util/Iterator;

    invoke-direct {v0, p1, p0}, Lfreemarker/template/SimpleCollection;-><init>(Ljava/util/Iterator;Lfreemarker/template/ObjectWrapper;)V

    move-object p1, v0

    :goto_e1
    return-object p1

    .line 241
    :cond_e2
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->useAdapterForEnumerations:Z

    if-eqz v0, :cond_f1

    instance-of v0, p1, Ljava/util/Enumeration;

    if-eqz v0, :cond_f1

    .line 242
    check-cast p1, Ljava/util/Enumeration;

    invoke-static {p1, p0}, Lfreemarker/template/DefaultEnumerationAdapter;->adapt(Ljava/util/Enumeration;Lfreemarker/template/ObjectWrapper;)Lfreemarker/template/DefaultEnumerationAdapter;

    move-result-object p1

    return-object p1

    .line 244
    :cond_f1
    iget-boolean v0, p0, Lfreemarker/template/DefaultObjectWrapper;->iterableSupport:Z

    if-eqz v0, :cond_100

    instance-of v0, p1, Ljava/lang/Iterable;

    if-eqz v0, :cond_100

    .line 245
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1, p0}, Lfreemarker/template/DefaultIterableAdapter;->adapt(Ljava/lang/Iterable;Lfreemarker/template/utility/ObjectWrapperWithAPISupport;)Lfreemarker/template/DefaultIterableAdapter;

    move-result-object p1

    return-object p1

    .line 248
    :cond_100
    invoke-virtual {p0, p1}, Lfreemarker/template/DefaultObjectWrapper;->handleUnknownType(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public wrapDomNode(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;
    .registers 2

    .line 273
    check-cast p1, Lorg/w3c/dom/Node;

    invoke-static {p1}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p1

    return-object p1
.end method
