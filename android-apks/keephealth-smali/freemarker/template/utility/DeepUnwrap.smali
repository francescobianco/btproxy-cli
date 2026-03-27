.class public Lfreemarker/template/utility/DeepUnwrap;
.super Ljava/lang/Object;
.source "DeepUnwrap.java"


# static fields
.field private static final OBJECT_CLASS:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 48
    const-class v0, Ljava/lang/Object;

    sput-object v0, Lfreemarker/template/utility/DeepUnwrap;->OBJECT_CLASS:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static permissiveUnwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 88
    invoke-static {p0, v0}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static premissiveUnwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    .line 97
    invoke-static {p0, v0}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static unwrap(Lfreemarker/template/TemplateModel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 79
    invoke-static {p0, v0}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static unwrap(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 113
    instance-of v0, p0, Lfreemarker/template/AdapterTemplateModel;

    if-eqz v0, :cond_d

    .line 114
    check-cast p0, Lfreemarker/template/AdapterTemplateModel;

    sget-object p1, Lfreemarker/template/utility/DeepUnwrap;->OBJECT_CLASS:Ljava/lang/Class;

    invoke-interface {p0, p1}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 116
    :cond_d
    instance-of v0, p0, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v0, :cond_18

    .line 117
    check-cast p0, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {p0}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_18
    if-ne p0, p1, :cond_1c

    const/4 p0, 0x0

    return-object p0

    .line 122
    :cond_1c
    instance-of v0, p0, Lfreemarker/template/TemplateScalarModel;

    if-eqz v0, :cond_27

    .line 123
    check-cast p0, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_27
    instance-of v0, p0, Lfreemarker/template/TemplateNumberModel;

    if-eqz v0, :cond_32

    .line 126
    check-cast p0, Lfreemarker/template/TemplateNumberModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateNumberModel;->getAsNumber()Ljava/lang/Number;

    move-result-object p0

    return-object p0

    .line 128
    :cond_32
    instance-of v0, p0, Lfreemarker/template/TemplateDateModel;

    if-eqz v0, :cond_3d

    .line 129
    check-cast p0, Lfreemarker/template/TemplateDateModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateDateModel;->getAsDate()Ljava/util/Date;

    move-result-object p0

    return-object p0

    .line 131
    :cond_3d
    instance-of v0, p0, Lfreemarker/template/TemplateBooleanModel;

    if-eqz v0, :cond_4c

    .line 132
    check-cast p0, Lfreemarker/template/TemplateBooleanModel;

    invoke-interface {p0}, Lfreemarker/template/TemplateBooleanModel;->getAsBoolean()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    .line 134
    :cond_4c
    instance-of v0, p0, Lfreemarker/template/TemplateSequenceModel;

    if-eqz v0, :cond_6d

    .line 135
    check-cast p0, Lfreemarker/template/TemplateSequenceModel;

    .line 136
    invoke-interface {p0}, Lfreemarker/template/TemplateSequenceModel;->size()I

    move-result v0

    .line 137
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    :goto_5c
    if-ge v2, v0, :cond_6c

    .line 139
    invoke-interface {p0, v2}, Lfreemarker/template/TemplateSequenceModel;->get(I)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5c

    :cond_6c
    return-object v1

    .line 143
    :cond_6d
    instance-of v0, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_8f

    .line 144
    check-cast p0, Lfreemarker/template/TemplateCollectionModel;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 146
    invoke-interface {p0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p0

    .line 147
    :goto_7c
    invoke-interface {p0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8e

    .line 148
    invoke-interface {p0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    invoke-static {v1, p1, p2}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7c

    :cond_8e
    return-object v0

    .line 152
    :cond_8f
    instance-of v0, p0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz v0, :cond_e8

    .line 153
    move-object v0, p0

    check-cast v0, Lfreemarker/template/TemplateHashModelEx;

    .line 154
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 155
    instance-of v2, p0, Lfreemarker/template/TemplateHashModelEx2;

    if-eqz v2, :cond_c3

    .line 156
    check-cast p0, Lfreemarker/template/TemplateHashModelEx2;

    invoke-interface {p0}, Lfreemarker/template/TemplateHashModelEx2;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    move-result-object p0

    .line 157
    :goto_a5
    invoke-interface {p0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e7

    .line 158
    invoke-interface {p0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;->next()Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;

    move-result-object v0

    .line 160
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;->getKey()Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object v2

    .line 161
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx2$KeyValuePair;->getValue()Lfreemarker/template/TemplateModel;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object v0

    .line 159
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a5

    .line 164
    :cond_c3
    invoke-interface {v0}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p0

    invoke-interface {p0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p0

    .line 165
    :goto_cb
    invoke-interface {p0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e7

    .line 166
    invoke-interface {p0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-static {v2, p1, p2}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 167
    invoke-interface {v0, v2}, Lfreemarker/template/TemplateHashModelEx;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object v3

    invoke-static {v3, p1, p2}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_cb

    :cond_e7
    return-object v1

    :cond_e8
    if-eqz p2, :cond_eb

    return-object p0

    .line 175
    :cond_eb
    new-instance p1, Lfreemarker/template/TemplateModelException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Cannot deep-unwrap model of type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static unwrap(Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 101
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    .line 104
    invoke-virtual {v0}, Lfreemarker/core/Environment;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 106
    invoke-interface {v0, v1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 109
    :cond_11
    invoke-static {p0, v1, p1}, Lfreemarker/template/utility/DeepUnwrap;->unwrap(Lfreemarker/template/TemplateModel;Lfreemarker/template/TemplateModel;Z)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
