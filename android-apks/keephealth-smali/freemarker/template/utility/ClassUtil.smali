.class public Lfreemarker/template/utility/ClassUtil;
.super Ljava/lang/Object;
.source "ClassUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static appendTemplateModelTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/Class;)V
    .registers 5

    .line 200
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 202
    const-class v1, Lfreemarker/template/TemplateNodeModelEx;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 203
    const-string v1, "extended node"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_1f

    .line 204
    :cond_12
    const-class v1, Lfreemarker/template/TemplateNodeModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 205
    const-string v1, "node"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 208
    :cond_1f
    :goto_1f
    const-class v1, Lfreemarker/template/TemplateDirectiveModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 209
    const-string v1, "directive"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_3a

    .line 210
    :cond_2d
    const-class v1, Lfreemarker/template/TemplateTransformModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 211
    const-string v1, "transform"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 214
    :cond_3a
    :goto_3a
    const-class v1, Lfreemarker/template/TemplateSequenceModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_48

    .line 215
    const-string v1, "sequence"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_6e

    .line 216
    :cond_48
    const-class v1, Lfreemarker/template/TemplateCollectionModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_61

    .line 217
    const-class v1, Lfreemarker/template/TemplateCollectionModelEx;

    .line 218
    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_5b

    const-string v1, "extended_collection"

    goto :goto_5d

    :cond_5b
    const-string v1, "collection"

    .line 217
    :goto_5d
    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_6e

    .line 219
    :cond_61
    const-class v1, Lfreemarker/template/TemplateModelIterator;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_6e

    .line 220
    const-string v1, "iterator"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 223
    :cond_6e
    :goto_6e
    const-class v1, Lfreemarker/template/TemplateMethodModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7b

    .line 224
    const-string v1, "method"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 227
    :cond_7b
    const-class v1, Lfreemarker/core/Environment$Namespace;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 228
    const-string v1, "namespace"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_a4

    .line 229
    :cond_89
    const-class v1, Lfreemarker/template/TemplateHashModelEx;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_97

    .line 230
    const-string v1, "extended_hash"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    goto :goto_a4

    .line 231
    :cond_97
    const-class v1, Lfreemarker/template/TemplateHashModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_a4

    .line 232
    const-string v1, "hash"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 235
    :cond_a4
    :goto_a4
    const-class v1, Lfreemarker/template/TemplateNumberModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 236
    const-string v1, "number"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 239
    :cond_b1
    const-class v1, Lfreemarker/template/TemplateDateModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_be

    .line 240
    const-string v1, "date_or_time_or_datetime"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 243
    :cond_be
    const-class v1, Lfreemarker/template/TemplateBooleanModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_cb

    .line 244
    const-string v1, "boolean"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 247
    :cond_cb
    const-class v1, Lfreemarker/template/TemplateScalarModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_d8

    .line 248
    const-string v1, "string"

    invoke-static {p0, p1, v1}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 251
    :cond_d8
    const-class v1, Lfreemarker/core/TemplateMarkupOutputModel;

    invoke-virtual {v1, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_e5

    .line 252
    const-string p2, "markup_output"

    invoke-static {p0, p1, p2}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 255
    :cond_e5
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result p2

    if-ne p2, v0, :cond_f0

    .line 256
    const-string p2, "misc_template_model"

    invoke-static {p0, p1, p2}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    :cond_f0
    return-void
.end method

.method private static appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V
    .registers 4

    .line 277
    invoke-interface {p1, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    .line 278
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "+"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    :cond_11
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-interface {p1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_17
    return-void
.end method

.method public static boxingClassToPrimitiveClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    .line 366
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_7

    sget-object p0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 367
    :cond_7
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_e

    sget-object p0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 368
    :cond_e
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_15

    sget-object p0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 369
    :cond_15
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_1c

    sget-object p0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 370
    :cond_1c
    const-class v0, Ljava/lang/Character;

    if-ne p0, v0, :cond_23

    sget-object p0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 371
    :cond_23
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_2a

    sget-object p0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 372
    :cond_2a
    const-class v0, Ljava/lang/Byte;

    if-ne p0, v0, :cond_31

    sget-object p0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 373
    :cond_31
    const-class v0, Ljava/lang/Short;

    if-ne p0, v0, :cond_38

    sget-object p0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    return-object p0

    .line 374
    :cond_38
    const-class v0, Ljava/lang/Void;

    if-ne p0, v0, :cond_3e

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    :cond_3e
    return-object p0
.end method

.method private static checkInputStreamNotNull(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    return-void

    .line 498
    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class-loader resource not found (shown quoted): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 499
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ". The base class was "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static forName(Ljava/lang/String;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    .line 81
    invoke-static {p0, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_f} :catch_10
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_f} :catch_10

    return-object p0

    .line 89
    :catch_10
    :cond_10
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public static getFTLTypeDescription(Lfreemarker/template/TemplateModel;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_5

    .line 294
    const-string p0, "Null"

    return-object p0

    .line 296
    :cond_5
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 300
    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->getPrimaryTemplateModelInterface(Lfreemarker/template/TemplateModel;)Ljava/lang/Class;

    move-result-object v2

    if-eqz v2, :cond_18

    .line 302
    invoke-static {v1, v0, v2}, Lfreemarker/template/utility/ClassUtil;->appendTemplateModelTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/Class;)V

    .line 305
    :cond_18
    instance-of v2, p0, Lfreemarker/core/Macro;

    if-eqz v2, :cond_2d

    .line 306
    move-object v2, p0

    check-cast v2, Lfreemarker/core/Macro;

    invoke-virtual {v2}, Lfreemarker/core/Macro;->isFunction()Z

    move-result v2

    if-eqz v2, :cond_28

    const-string v2, "function"

    goto :goto_2a

    :cond_28
    const-string v2, "macro"

    :goto_2a
    invoke-static {v1, v0, v2}, Lfreemarker/template/utility/ClassUtil;->appendTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/String;)V

    .line 309
    :cond_2d
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lfreemarker/template/utility/ClassUtil;->appendTemplateModelTypeName(Ljava/lang/StringBuilder;Ljava/util/Set;Ljava/lang/Class;)V

    .line 312
    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->getUnwrappedClass(Lfreemarker/template/TemplateModel;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_40

    .line 314
    invoke-static {v0, v2}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_41

    :cond_40
    const/4 v0, 0x0

    .line 319
    :goto_41
    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, v2}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    if-nez v0, :cond_59

    .line 322
    const-string v0, "wrapper: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_64

    .line 325
    :cond_59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v0, " wrapped into "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    :goto_64
    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPrimaryTemplateModelInterface(Lfreemarker/template/TemplateModel;)Ljava/lang/Class;
    .registers 3

    .line 168
    instance-of v0, p0, Lfreemarker/ext/beans/BeanModel;

    const/4 v1, 0x0

    if-eqz v0, :cond_4d

    .line 169
    instance-of v0, p0, Lfreemarker/ext/beans/CollectionModel;

    if-eqz v0, :cond_c

    .line 170
    const-class p0, Lfreemarker/template/TemplateSequenceModel;

    return-object p0

    .line 171
    :cond_c
    instance-of v0, p0, Lfreemarker/ext/beans/IteratorModel;

    if-nez v0, :cond_4a

    instance-of v0, p0, Lfreemarker/ext/beans/EnumerationModel;

    if-eqz v0, :cond_15

    goto :goto_4a

    .line 173
    :cond_15
    instance-of v0, p0, Lfreemarker/ext/beans/MapModel;

    if-eqz v0, :cond_1c

    .line 174
    const-class p0, Lfreemarker/template/TemplateHashModelEx;

    return-object p0

    .line 175
    :cond_1c
    instance-of v0, p0, Lfreemarker/ext/beans/NumberModel;

    if-eqz v0, :cond_23

    .line 176
    const-class p0, Lfreemarker/template/TemplateNumberModel;

    return-object p0

    .line 177
    :cond_23
    instance-of v0, p0, Lfreemarker/ext/beans/BooleanModel;

    if-eqz v0, :cond_2a

    .line 178
    const-class p0, Lfreemarker/template/TemplateBooleanModel;

    return-object p0

    .line 179
    :cond_2a
    instance-of v0, p0, Lfreemarker/ext/beans/DateModel;

    if-eqz v0, :cond_31

    .line 180
    const-class p0, Lfreemarker/template/TemplateDateModel;

    return-object p0

    .line 181
    :cond_31
    instance-of v0, p0, Lfreemarker/ext/beans/StringModel;

    if-eqz v0, :cond_49

    .line 182
    move-object v0, p0

    check-cast v0, Lfreemarker/ext/beans/BeanModel;

    invoke-virtual {v0}, Lfreemarker/ext/beans/BeanModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object v0

    .line 183
    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_43

    const-class v1, Lfreemarker/template/TemplateScalarModel;

    goto :goto_49

    :cond_43
    instance-of p0, p0, Lfreemarker/template/TemplateHashModelEx;

    if-eqz p0, :cond_49

    const-class v1, Lfreemarker/template/TemplateHashModelEx;

    :cond_49
    :goto_49
    return-object v1

    .line 172
    :cond_4a
    :goto_4a
    const-class p0, Lfreemarker/template/TemplateCollectionModel;

    return-object p0

    .line 189
    :cond_4d
    instance-of v0, p0, Lfreemarker/ext/beans/SimpleMethodModel;

    if-nez v0, :cond_66

    instance-of v0, p0, Lfreemarker/ext/beans/OverloadedMethodsModel;

    if-eqz v0, :cond_56

    goto :goto_66

    .line 191
    :cond_56
    instance-of v0, p0, Lfreemarker/template/TemplateCollectionModel;

    if-eqz v0, :cond_65

    check-cast p0, Lfreemarker/template/TemplateCollectionModel;

    .line 192
    invoke-static {p0}, Lfreemarker/core/_CoreAPI;->isLazilyGeneratedSequenceModel(Lfreemarker/template/TemplateCollectionModel;)Z

    move-result p0

    if-eqz p0, :cond_65

    .line 193
    const-class p0, Lfreemarker/template/TemplateSequenceModel;

    return-object p0

    :cond_65
    return-object v1

    .line 190
    :cond_66
    :goto_66
    const-class p0, Lfreemarker/template/TemplateMethodModelEx;

    return-object p0
.end method

.method public static getReasourceAsStream(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 410
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_11

    .line 414
    :catch_5
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 415
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez p2, :cond_16

    .line 418
    invoke-static {v0, p0, p1}, Lfreemarker/template/utility/ClassUtil;->checkInputStreamNotNull(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/String;)V

    :cond_16
    return-object v0
.end method

.method public static getReasourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;Z)Ljava/io/InputStream;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 434
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    goto :goto_11

    .line 436
    :catch_5
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 437
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    if-nez v0, :cond_39

    if-eqz p2, :cond_16

    goto :goto_39

    .line 440
    :cond_16
    new-instance p2, Ljava/io/IOException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Class-loader resource not found (shown quoted): "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 441
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ". The base ClassLoader was: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_39
    :goto_39
    return-object v0
.end method

.method public static getShortClassName(Ljava/lang/Class;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 98
    invoke-static {p0, v0}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortClassName(Ljava/lang/Class;Z)Ljava/lang/String;
    .registers 4

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 115
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "[]"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 118
    :cond_26
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 119
    const-string v0, "java.lang."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/16 v1, 0xa

    if-nez v0, :cond_d4

    const-string v0, "java.util."

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3e

    goto/16 :goto_d4

    :cond_3e
    if-eqz p1, :cond_d3

    .line 123
    const-string p1, "freemarker.template."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5e

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "f.t"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 125
    :cond_5e
    const-string p1, "freemarker.ext.beans."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 126
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "f.e.b"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_7c
    const-string p1, "freemarker.core."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9a

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "f.c"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 129
    :cond_9a
    const-string p1, "freemarker.ext."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b8

    .line 130
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "f.e"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 131
    :cond_b8
    const-string p1, "freemarker."

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d3

    .line 132
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "f"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_d3
    return-object p0

    .line 120
    :cond_d4
    :goto_d4
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortClassNameOfObject(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    .line 147
    invoke-static {p0, v0}, Lfreemarker/template/utility/ClassUtil;->getShortClassNameOfObject(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getShortClassNameOfObject(Ljava/lang/Object;Z)Ljava/lang/String;
    .registers 2

    if-nez p0, :cond_5

    .line 158
    const-string p0, "Null"

    return-object p0

    .line 160
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0, p1}, Lfreemarker/template/utility/ClassUtil;->getShortClassName(Ljava/lang/Class;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getUnwrappedClass(Lfreemarker/template/TemplateModel;)Ljava/lang/Class;
    .registers 3

    const/4 v0, 0x0

    .line 263
    :try_start_1
    instance-of v1, p0, Lfreemarker/ext/util/WrapperTemplateModel;

    if-eqz v1, :cond_c

    .line 264
    check-cast p0, Lfreemarker/ext/util/WrapperTemplateModel;

    invoke-interface {p0}, Lfreemarker/ext/util/WrapperTemplateModel;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1a

    .line 265
    :cond_c
    instance-of v1, p0, Lfreemarker/template/AdapterTemplateModel;

    if-eqz v1, :cond_19

    .line 266
    check-cast p0, Lfreemarker/template/AdapterTemplateModel;

    const-class v1, Ljava/lang/Object;

    invoke-interface {p0, v1}, Lfreemarker/template/AdapterTemplateModel;->getAdaptedObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_19

    goto :goto_1a

    :catchall_19
    :cond_19
    move-object p0, v0

    :goto_1a
    if-eqz p0, :cond_20

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :cond_20
    return-object v0
.end method

.method public static isNumerical(Ljava/lang/Class;)Z
    .registers 2

    .line 386
    const-class v0, Ljava/lang/Number;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1d

    .line 387
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1b

    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1b

    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-eq p0, v0, :cond_1b

    goto :goto_1d

    :cond_1b
    const/4 p0, 0x0

    goto :goto_1e

    :cond_1d
    :goto_1d
    const/4 p0, 0x1

    :goto_1e
    return p0
.end method

.method public static loadProperties(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Properties;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Properties;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 453
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v1, 0x0

    .line 459
    :try_start_6
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_a} :catch_24
    .catch Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException; {:try_start_6 .. :try_end_a} :catch_22
    .catchall {:try_start_6 .. :try_end_a} :catchall_20

    .line 463
    :try_start_a
    invoke-static {v2, p0, p1}, Lfreemarker/template/utility/ClassUtil;->checkInputStreamNotNull(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/String;)V
    :try_end_d
    .catch Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException; {:try_start_a .. :try_end_d} :catch_2a
    .catchall {:try_start_a .. :try_end_d} :catchall_40

    .line 465
    :try_start_d
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_10} :catch_16
    .catchall {:try_start_d .. :try_end_10} :catchall_14

    .line 470
    :try_start_10
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_13} :catch_3f
    .catch Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException; {:try_start_10 .. :try_end_13} :catch_2a
    .catchall {:try_start_10 .. :try_end_13} :catchall_40

    goto :goto_3f

    :catchall_14
    move-exception v3

    goto :goto_1c

    .line 467
    :catch_16
    :try_start_16
    new-instance v3, Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException;

    invoke-direct {v3, v1}, Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException;-><init>(Lfreemarker/template/utility/ClassUtil$1;)V

    throw v3
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_14

    .line 470
    :goto_1c
    :try_start_1c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_1f
    .catch Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException; {:try_start_1c .. :try_end_1f} :catch_2a
    .catchall {:try_start_1c .. :try_end_1f} :catchall_40

    .line 475
    :catch_1f
    :try_start_1f
    throw v3

    :catchall_20
    move-exception p0

    goto :goto_42

    :catch_22
    move-object v2, v1

    goto :goto_2a

    .line 461
    :catch_24
    new-instance v2, Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException;

    invoke-direct {v2, v1}, Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException;-><init>(Lfreemarker/template/utility/ClassUtil$1;)V

    throw v2
    :try_end_2a
    .catch Lfreemarker/template/utility/ClassUtil$MaybeZipFileClosedException; {:try_start_1f .. :try_end_2a} :catch_22
    .catchall {:try_start_1f .. :try_end_2a} :catchall_20

    .line 479
    :catch_2a
    :goto_2a
    :try_start_2a
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 480
    invoke-virtual {v3}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_40

    .line 481
    :cond_34
    :try_start_34
    invoke-static {v1, p0, p1}, Lfreemarker/template/utility/ClassUtil;->checkInputStreamNotNull(Ljava/io/InputStream;Ljava/lang/Class;Ljava/lang/String;)V

    .line 482
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_3a
    .catchall {:try_start_34 .. :try_end_3a} :catchall_20

    if-eqz v1, :cond_3f

    .line 486
    :try_start_3c
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_3f} :catch_3f

    :catch_3f
    :cond_3f
    :goto_3f
    return-object v0

    :catchall_40
    move-exception p0

    move-object v1, v2

    :goto_42
    if-eqz v1, :cond_47

    :try_start_44
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_47} :catch_47

    .line 491
    :catch_47
    :cond_47
    throw p0
.end method

.method public static primitiveClassToBoxingClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 2

    .line 347
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_7

    const-class p0, Ljava/lang/Integer;

    return-object p0

    .line 348
    :cond_7
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_e

    const-class p0, Ljava/lang/Boolean;

    return-object p0

    .line 349
    :cond_e
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_15

    const-class p0, Ljava/lang/Long;

    return-object p0

    .line 350
    :cond_15
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_1c

    const-class p0, Ljava/lang/Double;

    return-object p0

    .line 351
    :cond_1c
    sget-object v0, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_23

    const-class p0, Ljava/lang/Character;

    return-object p0

    .line 352
    :cond_23
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_2a

    const-class p0, Ljava/lang/Float;

    return-object p0

    .line 353
    :cond_2a
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_31

    const-class p0, Ljava/lang/Byte;

    return-object p0

    .line 354
    :cond_31
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_38

    const-class p0, Ljava/lang/Short;

    return-object p0

    .line 355
    :cond_38
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    if-ne p0, v0, :cond_3e

    const-class p0, Ljava/lang/Void;

    :cond_3e
    return-object p0
.end method
