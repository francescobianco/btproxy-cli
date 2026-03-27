.class Lfreemarker/core/Environment$LazilyInitializedNamespace;
.super Lfreemarker/core/Environment$Namespace;
.source "Environment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfreemarker/core/Environment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LazilyInitializedNamespace"
.end annotation


# instance fields
.field private final customLookupCondition:Ljava/lang/Object;

.field private final encoding:Ljava/lang/String;

.field private final locale:Ljava/util/Locale;

.field private status:Lfreemarker/core/Environment$InitializationStatus;

.field private final templateName:Ljava/lang/String;

.field final synthetic this$0:Lfreemarker/core/Environment;


# direct methods
.method private constructor <init>(Lfreemarker/core/Environment;Ljava/lang/String;)V
    .registers 4

    .line 3066
    iput-object p1, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->this$0:Lfreemarker/core/Environment;

    const/4 v0, 0x0

    .line 3067
    invoke-direct {p0, p1, v0}, Lfreemarker/core/Environment$Namespace;-><init>(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    .line 3060
    sget-object v0, Lfreemarker/core/Environment$InitializationStatus;->UNINITIALIZED:Lfreemarker/core/Environment$InitializationStatus;

    iput-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;

    .line 3069
    iput-object p2, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->templateName:Ljava/lang/String;

    .line 3071
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->locale:Ljava/util/Locale;

    .line 3072
    # invokes: Lfreemarker/core/Environment;->getIncludedTemplateEncoding()Ljava/lang/String;
    invoke-static {p1}, Lfreemarker/core/Environment;->access$700(Lfreemarker/core/Environment;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->encoding:Ljava/lang/String;

    .line 3073
    # invokes: Lfreemarker/core/Environment;->getIncludedTemplateCustomLookupCondition()Ljava/lang/Object;
    invoke-static {p1}, Lfreemarker/core/Environment;->access$800(Lfreemarker/core/Environment;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->customLookupCondition:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lfreemarker/core/Environment;Ljava/lang/String;Lfreemarker/core/Environment$1;)V
    .registers 4

    .line 3053
    invoke-direct {p0, p1, p2}, Lfreemarker/core/Environment$LazilyInitializedNamespace;-><init>(Lfreemarker/core/Environment;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lfreemarker/core/Environment$LazilyInitializedNamespace;)V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3053
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedTME()V

    return-void
.end method

.method private ensureInitializedRTE()V
    .registers 4

    .line 3104
    :try_start_0
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedTME()V
    :try_end_3
    .catch Lfreemarker/template/TemplateModelException; {:try_start_0 .. :try_end_3} :catch_4

    return-void

    :catch_4
    move-exception v0

    .line 3106
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Lfreemarker/template/TemplateModelException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lfreemarker/template/TemplateModelException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private ensureInitializedTME()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3077
    iget-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;

    sget-object v1, Lfreemarker/core/Environment$InitializationStatus;->INITIALIZED:Lfreemarker/core/Environment$InitializationStatus;

    if-eq v0, v1, :cond_74

    iget-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;

    sget-object v1, Lfreemarker/core/Environment$InitializationStatus;->INITIALIZING:Lfreemarker/core/Environment$InitializationStatus;

    if-eq v0, v1, :cond_74

    .line 3078
    iget-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;

    sget-object v1, Lfreemarker/core/Environment$InitializationStatus;->FAILED:Lfreemarker/core/Environment$InitializationStatus;

    const-string v2, "Lazy initialization of the imported namespace for "

    if-eq v0, v1, :cond_55

    .line 3085
    :try_start_14
    sget-object v0, Lfreemarker/core/Environment$InitializationStatus;->INITIALIZING:Lfreemarker/core/Environment$InitializationStatus;

    iput-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;

    .line 3086
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->initialize()V

    .line 3087
    sget-object v0, Lfreemarker/core/Environment$InitializationStatus;->INITIALIZED:Lfreemarker/core/Environment$InitializationStatus;

    iput-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_2a
    .catchall {:try_start_14 .. :try_end_1f} :catchall_28

    .line 3095
    sget-object v1, Lfreemarker/core/Environment$InitializationStatus;->INITIALIZED:Lfreemarker/core/Environment$InitializationStatus;

    if-eq v0, v1, :cond_74

    .line 3096
    sget-object v0, Lfreemarker/core/Environment$InitializationStatus;->FAILED:Lfreemarker/core/Environment$InitializationStatus;

    iput-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;

    goto :goto_74

    :catchall_28
    move-exception v0

    goto :goto_4a

    :catch_2a
    move-exception v0

    .line 3090
    :try_start_2b
    new-instance v1, Lfreemarker/template/TemplateModelException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->templateName:Ljava/lang/String;

    .line 3092
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " has failed; see cause exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_4a
    .catchall {:try_start_2b .. :try_end_4a} :catchall_28

    .line 3095
    :goto_4a
    iget-object v1, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;

    sget-object v2, Lfreemarker/core/Environment$InitializationStatus;->INITIALIZED:Lfreemarker/core/Environment$InitializationStatus;

    if-eq v1, v2, :cond_54

    .line 3096
    sget-object v1, Lfreemarker/core/Environment$InitializationStatus;->FAILED:Lfreemarker/core/Environment$InitializationStatus;

    iput-object v1, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->status:Lfreemarker/core/Environment$InitializationStatus;

    .line 3098
    :cond_54
    throw v0

    .line 3079
    :cond_55
    new-instance v0, Lfreemarker/template/TemplateModelException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->templateName:Ljava/lang/String;

    .line 3081
    invoke-static {v2}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " has already failed earlier; won\'t retry it."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lfreemarker/template/TemplateModelException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_74
    :goto_74
    return-void
.end method

.method private initialize()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 3111
    iget-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->this$0:Lfreemarker/core/Environment;

    # getter for: Lfreemarker/core/Environment;->configuration:Lfreemarker/template/Configuration;
    invoke-static {v0}, Lfreemarker/core/Environment;->access$200(Lfreemarker/core/Environment;)Lfreemarker/template/Configuration;

    move-result-object v1

    iget-object v2, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->templateName:Ljava/lang/String;

    iget-object v3, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->locale:Ljava/util/Locale;

    iget-object v4, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->customLookupCondition:Ljava/lang/Object;

    iget-object v5, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->encoding:Ljava/lang/String;

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->setTemplate(Lfreemarker/template/Template;)V

    .line 3114
    iget-object v0, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->this$0:Lfreemarker/core/Environment;

    invoke-virtual {v0}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v0

    .line 3116
    :try_start_1d
    iget-object v1, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->this$0:Lfreemarker/core/Environment;

    iget-object v2, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Lfreemarker/core/Environment;->setLocale(Ljava/util/Locale;)V

    .line 3117
    iget-object v1, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->this$0:Lfreemarker/core/Environment;

    invoke-virtual {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v2

    # invokes: Lfreemarker/core/Environment;->initializeImportLibNamespace(Lfreemarker/core/Environment$Namespace;Lfreemarker/template/Template;)V
    invoke-static {v1, p0, v2}, Lfreemarker/core/Environment;->access$900(Lfreemarker/core/Environment;Lfreemarker/core/Environment$Namespace;Lfreemarker/template/Template;)V
    :try_end_2d
    .catchall {:try_start_1d .. :try_end_2d} :catchall_33

    .line 3119
    iget-object v1, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->this$0:Lfreemarker/core/Environment;

    invoke-virtual {v1, v0}, Lfreemarker/core/Environment;->setLocale(Ljava/util/Locale;)V

    return-void

    :catchall_33
    move-exception v1

    iget-object v2, p0, Lfreemarker/core/Environment$LazilyInitializedNamespace;->this$0:Lfreemarker/core/Environment;

    invoke-virtual {v2, v0}, Lfreemarker/core/Environment;->setLocale(Ljava/util/Locale;)V

    .line 3120
    throw v1
.end method


# virtual methods
.method public containsKey(Ljava/lang/String;)Z
    .registers 2

    .line 3155
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3156
    invoke-super {p0, p1}, Lfreemarker/core/Environment$Namespace;->containsKey(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected copyMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 2

    .line 3125
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3126
    invoke-super {p0, p1}, Lfreemarker/core/Environment$Namespace;->copyMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3149
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedTME()V

    .line 3150
    invoke-super {p0, p1}, Lfreemarker/core/Environment$Namespace;->get(Ljava/lang/String;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate()Lfreemarker/template/Template;
    .registers 2

    .line 3131
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3132
    invoke-super {p0}, Lfreemarker/core/Environment$Namespace;->getTemplate()Lfreemarker/template/Template;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .registers 2

    .line 3191
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3192
    invoke-super {p0}, Lfreemarker/core/Environment$Namespace;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;
    .registers 2

    .line 3209
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3210
    invoke-super {p0}, Lfreemarker/core/Environment$Namespace;->keyValuePairIterator()Lfreemarker/template/TemplateHashModelEx2$KeyValuePairIterator;

    move-result-object v0

    return-object v0
.end method

.method public keys()Lfreemarker/template/TemplateCollectionModel;
    .registers 2

    .line 3197
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3198
    invoke-super {p0}, Lfreemarker/core/Environment$Namespace;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 3

    .line 3137
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3138
    invoke-super {p0, p1, p2}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public put(Ljava/lang/String;Z)V
    .registers 3

    .line 3143
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3144
    invoke-super {p0, p1, p2}, Lfreemarker/core/Environment$Namespace;->put(Ljava/lang/String;Z)V

    return-void
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 2

    .line 3167
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3168
    invoke-super {p0, p1}, Lfreemarker/core/Environment$Namespace;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 2

    .line 3161
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3162
    invoke-super {p0, p1}, Lfreemarker/core/Environment$Namespace;->remove(Ljava/lang/String;)V

    return-void
.end method

.method public size()I
    .registers 2

    .line 3185
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3186
    invoke-super {p0}, Lfreemarker/core/Environment$Namespace;->size()I

    move-result v0

    return v0
.end method

.method public toMap()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3173
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedTME()V

    .line 3174
    invoke-super {p0}, Lfreemarker/core/Environment$Namespace;->toMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 3179
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3180
    invoke-super {p0}, Lfreemarker/core/Environment$Namespace;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Lfreemarker/template/TemplateCollectionModel;
    .registers 2

    .line 3203
    invoke-direct {p0}, Lfreemarker/core/Environment$LazilyInitializedNamespace;->ensureInitializedRTE()V

    .line 3204
    invoke-super {p0}, Lfreemarker/core/Environment$Namespace;->values()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    return-object v0
.end method
