.class public Lfreemarker/core/OptInTemplateClassResolver;
.super Ljava/lang/Object;
.source "OptInTemplateClassResolver.java"

# interfaces
.implements Lfreemarker/core/TemplateClassResolver;


# instance fields
.field private final allowedClasses:Ljava/util/Set;

.field private final trustedTemplateNames:Ljava/util/Set;

.field private final trustedTemplatePrefixes:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljava/util/List;)V
    .registers 6

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_6

    goto :goto_8

    .line 70
    :cond_6
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    :goto_8
    iput-object p1, p0, Lfreemarker/core/OptInTemplateClassResolver;->allowedClasses:Ljava/util/Set;

    if-eqz p2, :cond_55

    .line 72
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplateNames:Ljava/util/Set;

    .line 73
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplatePrefixes:Ljava/util/List;

    .line 75
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 76
    :goto_1e
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5d

    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 78
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    .line 79
    :cond_37
    const-string v0, "*"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 80
    iget-object v0, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplatePrefixes:Ljava/util/List;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v1, 0x0

    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 82
    :cond_4f
    iget-object v0, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplateNames:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    .line 86
    :cond_55
    sget-object p1, Ljava/util/Collections;->EMPTY_SET:Ljava/util/Set;

    iput-object p1, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplateNames:Ljava/util/Set;

    .line 87
    sget-object p1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    iput-object p1, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplatePrefixes:Ljava/util/List;

    :cond_5d
    return-void
.end method

.method private hasMatchingPrefix(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 150
    :goto_2
    iget-object v2, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplatePrefixes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1d

    .line 151
    iget-object v2, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplatePrefixes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 152
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1d
    return v0
.end method


# virtual methods
.method public resolve(Ljava/lang/String;Lfreemarker/core/Environment;Lfreemarker/template/Template;)Ljava/lang/Class;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0, p3}, Lfreemarker/core/OptInTemplateClassResolver;->safeGetTemplateName(Lfreemarker/template/Template;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 95
    iget-object v1, p0, Lfreemarker/core/OptInTemplateClassResolver;->trustedTemplateNames:Ljava/util/Set;

    .line 96
    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 97
    invoke-direct {p0, v0}, Lfreemarker/core/OptInTemplateClassResolver;->hasMatchingPrefix(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 98
    :cond_14
    sget-object v0, Lfreemarker/core/TemplateClassResolver;->SAFER_RESOLVER:Lfreemarker/core/TemplateClassResolver;

    invoke-interface {v0, p1, p2, p3}, Lfreemarker/core/TemplateClassResolver;->resolve(Ljava/lang/String;Lfreemarker/core/Environment;Lfreemarker/template/Template;)Ljava/lang/Class;

    move-result-object p1

    return-object p1

    .line 100
    :cond_1b
    iget-object p3, p0, Lfreemarker/core/OptInTemplateClassResolver;->allowedClasses:Ljava/util/Set;

    invoke-interface {p3, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2f

    .line 108
    :try_start_23
    invoke-static {p1}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1
    :try_end_27
    .catch Ljava/lang/ClassNotFoundException; {:try_start_23 .. :try_end_27} :catch_28

    return-object p1

    :catch_28
    move-exception p1

    .line 110
    new-instance p3, Lfreemarker/core/_MiscTemplateException;

    invoke-direct {p3, p1, p2}, Lfreemarker/core/_MiscTemplateException;-><init>(Ljava/lang/Throwable;Lfreemarker/core/Environment;)V

    throw p3

    .line 101
    :cond_2f
    new-instance p3, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "new_builtin_class_resolver"

    const-string v1, "\" setting in the FreeMarker configuration.)"

    const-string v2, "Instantiating "

    const-string v3, " is not allowed in the template for security reasons. (If you run into this problem when using ?new in a template, you may want to check the \""

    filled-new-array {v2, p1, v3, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw p3
.end method

.method protected safeGetTemplateName(Lfreemarker/template/Template;)Ljava/lang/String;
    .registers 9

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 123
    :cond_4
    invoke-virtual {p1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_b

    return-object v0

    :cond_b
    const/16 v1, 0x25

    .line 128
    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const-string v2, "/"

    const/4 v3, -0x1

    if-eq v1, v3, :cond_40

    .line 129
    const-string v1, "%2e"

    const-string v4, "."

    const/4 v5, 0x0

    invoke-static {p1, v1, v4, v5, v5}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 130
    const-string v6, "%2E"

    invoke-static {v1, v6, v4, v5, v5}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v4, "%2f"

    invoke-static {v1, v4, v2, v5, v5}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 132
    const-string v4, "%2F"

    invoke-static {v1, v4, v2, v5, v5}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 133
    const-string v4, "%5c"

    const-string v6, "\\"

    invoke-static {v1, v4, v6, v5, v5}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 134
    const-string v4, "%5C"

    invoke-static {v1, v4, v6, v5, v5}, Lfreemarker/template/utility/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    goto :goto_41

    :cond_40
    move-object v1, p1

    .line 136
    :goto_41
    const-string v4, ".."

    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-eq v4, v3, :cond_72

    add-int/lit8 v5, v4, -0x1

    if-ltz v5, :cond_52

    .line 138
    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    goto :goto_53

    :cond_52
    move v5, v3

    :goto_53
    add-int/lit8 v4, v4, 0x2

    .line 139
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v4, v6, :cond_60

    invoke-virtual {v1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    goto :goto_61

    :cond_60
    move v1, v3

    :goto_61
    const/16 v4, 0x5c

    const/16 v6, 0x2f

    if-eq v5, v3, :cond_6b

    if-eq v5, v6, :cond_6b

    if-ne v5, v4, :cond_72

    :cond_6b
    if-eq v1, v3, :cond_71

    if-eq v1, v6, :cond_71

    if-ne v1, v4, :cond_72

    :cond_71
    return-object v0

    .line 146
    :cond_72
    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_7d
    return-object p1
.end method
