.class public Lfreemarker/core/CustomAttribute;
.super Ljava/lang/Object;
.source "CustomAttribute.java"


# static fields
.field public static final SCOPE_CONFIGURATION:I = 0x2

.field public static final SCOPE_ENVIRONMENT:I = 0x0

.field public static final SCOPE_TEMPLATE:I = 0x1


# instance fields
.field private final key:Ljava/lang/Object;

.field private final scope:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    if-eqz p1, :cond_19

    const/4 v0, 0x1

    if-eq p1, v0, :cond_19

    const/4 v0, 0x2

    if-ne p1, v0, :cond_13

    goto :goto_19

    .line 75
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1

    .line 77
    :cond_19
    :goto_19
    iput p1, p0, Lfreemarker/core/CustomAttribute;->scope:I

    return-void
.end method

.method private getRequiredCurrentEnvironment()Lfreemarker/core/Environment;
    .registers 3

    .line 245
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 247
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No current environment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getScopeConfigurable(Lfreemarker/core/Environment;)Lfreemarker/core/Configurable;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Error;
        }
    .end annotation

    .line 253
    iget v0, p0, Lfreemarker/core/CustomAttribute;->scope:I

    if-eqz v0, :cond_1d

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-ne v0, v1, :cond_13

    .line 259
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getParent()Lfreemarker/core/Configurable;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/core/Configurable;->getParent()Lfreemarker/core/Configurable;

    move-result-object p1

    return-object p1

    .line 261
    :cond_13
    new-instance p1, Lfreemarker/core/BugException;

    invoke-direct {p1}, Lfreemarker/core/BugException;-><init>()V

    throw p1

    .line 257
    :cond_19
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getParent()Lfreemarker/core/Configurable;

    move-result-object p1

    :cond_1d
    return-object p1
.end method


# virtual methods
.method protected create()Ljava/lang/Object;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public final get()Ljava/lang/Object;
    .registers 3

    .line 116
    invoke-direct {p0}, Lfreemarker/core/CustomAttribute;->getRequiredCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/CustomAttribute;->getScopeConfigurable(Lfreemarker/core/Environment;)Lfreemarker/core/Configurable;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p0}, Lfreemarker/core/Configurable;->getCustomAttribute(Ljava/lang/Object;Lfreemarker/core/CustomAttribute;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final get(Lfreemarker/core/Environment;)Ljava/lang/Object;
    .registers 3

    .line 105
    invoke-direct {p0, p1}, Lfreemarker/core/CustomAttribute;->getScopeConfigurable(Lfreemarker/core/Environment;)Lfreemarker/core/Configurable;

    move-result-object p1

    iget-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/Configurable;->getCustomAttribute(Ljava/lang/Object;Lfreemarker/core/CustomAttribute;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public get(Lfreemarker/core/TemplateConfiguration;)Ljava/lang/Object;
    .registers 4

    .line 140
    iget v0, p0, Lfreemarker/core/CustomAttribute;->scope:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 143
    iget-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/TemplateConfiguration;->getCustomAttribute(Ljava/lang/Object;Lfreemarker/core/CustomAttribute;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 141
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not a template-scope attribute"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final get(Lfreemarker/template/Configuration;)Ljava/lang/Object;
    .registers 4

    .line 157
    iget v0, p0, Lfreemarker/core/CustomAttribute;->scope:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    .line 160
    iget-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/Configurable;->getCustomAttribute(Ljava/lang/Object;Lfreemarker/core/CustomAttribute;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 158
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not a template-scope attribute"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final get(Lfreemarker/template/Template;)Ljava/lang/Object;
    .registers 4

    .line 128
    iget v0, p0, Lfreemarker/core/CustomAttribute;->scope:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    .line 131
    iget-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {p1, v0, p0}, Lfreemarker/core/Configurable;->getCustomAttribute(Ljava/lang/Object;Lfreemarker/core/CustomAttribute;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 129
    :cond_c
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "This is not a template-scope attribute"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(Ljava/lang/Object;)V
    .registers 4

    .line 191
    invoke-direct {p0}, Lfreemarker/core/CustomAttribute;->getRequiredCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/core/CustomAttribute;->getScopeConfigurable(Lfreemarker/core/Environment;)Lfreemarker/core/Configurable;

    move-result-object v0

    iget-object v1, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lfreemarker/core/Configurable;->setCustomAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final set(Ljava/lang/Object;Lfreemarker/core/Environment;)V
    .registers 4

    .line 179
    invoke-direct {p0, p2}, Lfreemarker/core/CustomAttribute;->getScopeConfigurable(Lfreemarker/core/Environment;)Lfreemarker/core/Configurable;

    move-result-object p2

    iget-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lfreemarker/core/Configurable;->setCustomAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final set(Ljava/lang/Object;Lfreemarker/core/TemplateConfiguration;)V
    .registers 5

    .line 218
    iget v0, p0, Lfreemarker/core/CustomAttribute;->scope:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 221
    iget-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lfreemarker/core/TemplateConfiguration;->setCustomAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 219
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is not a template-scope attribute"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(Ljava/lang/Object;Lfreemarker/template/Configuration;)V
    .registers 5

    .line 238
    iget v0, p0, Lfreemarker/core/CustomAttribute;->scope:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 241
    iget-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lfreemarker/core/Configurable;->setCustomAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 239
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is not a configuration-scope attribute"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final set(Ljava/lang/Object;Lfreemarker/template/Template;)V
    .registers 5

    .line 206
    iget v0, p0, Lfreemarker/core/CustomAttribute;->scope:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    .line 209
    iget-object v0, p0, Lfreemarker/core/CustomAttribute;->key:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Lfreemarker/core/Configurable;->setCustomAttribute(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    .line 207
    :cond_b
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "This is not a template-scope attribute"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
