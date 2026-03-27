.class final Lfreemarker/ext/servlet/InitParamParser;
.super Ljava/lang/Object;
.source "InitParamParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;
    }
.end annotation


# static fields
.field private static final LOG:Lfreemarker/log/Logger;

.field static final TEMPLATE_PATH_PREFIX_CLASS:Ljava/lang/String; = "class://"

.field static final TEMPLATE_PATH_PREFIX_CLASSPATH:Ljava/lang/String; = "classpath:"

.field static final TEMPLATE_PATH_PREFIX_FILE:Ljava/lang/String; = "file://"

.field static final TEMPLATE_PATH_SETTINGS_BI_NAME:Ljava/lang/String; = "settings"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-string v0, "freemarker.servlet"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/servlet/InitParamParser;->LOG:Lfreemarker/log/Logger;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createTemplateLoader(Ljava/lang/String;Lfreemarker/template/Configuration;Ljava/lang/Class;Ljavax/servlet/ServletContext;)Lfreemarker/cache/TemplateLoader;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-static {p0}, Lfreemarker/ext/servlet/InitParamParser;->findTemplatePathSettingAssignmentsStart(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_a

    move-object v3, p0

    goto :goto_e

    .line 60
    :cond_a
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 61
    :goto_e
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 64
    const-string v4, "class://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2c

    const/16 p1, 0x8

    .line 65
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-static {p1}, Lfreemarker/ext/servlet/InitParamParser;->normalizeToAbsolutePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    new-instance p3, Lfreemarker/cache/ClassTemplateLoader;

    invoke-direct {p3, p2, p1}, Lfreemarker/cache/ClassTemplateLoader;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    goto/16 :goto_104

    .line 68
    :cond_2c
    const-string v4, "classpath:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_72

    const/16 p1, 0xa

    .line 70
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lfreemarker/ext/servlet/InitParamParser;->normalizeToAbsolutePackagePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    if-nez p3, :cond_6a

    .line 75
    sget-object p3, Lfreemarker/ext/servlet/InitParamParser;->LOG:Lfreemarker/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "No Thread Context Class Loader was found. Falling back to the class loader of "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 75
    invoke-virtual {p3, v1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p3

    .line 80
    :cond_6a
    new-instance p2, Lfreemarker/cache/ClassTemplateLoader;

    invoke-direct {p2, p3, p1}, Lfreemarker/cache/ClassTemplateLoader;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    move-object p3, p2

    goto/16 :goto_104

    .line 81
    :cond_72
    const-string v4, "file://"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    const/4 p1, 0x7

    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 83
    new-instance p3, Lfreemarker/cache/FileTemplateLoader;

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {p3, p2}, Lfreemarker/cache/FileTemplateLoader;-><init>(Ljava/io/File;)V

    goto/16 :goto_104

    .line 84
    :cond_8b
    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e1

    .line 85
    invoke-virtual {p1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v4

    invoke-virtual {v4}, Lfreemarker/template/Version;->intValue()I

    move-result v4

    sget v6, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-lt v4, v6, :cond_e1

    .line 86
    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d9

    .line 90
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v3}, Lfreemarker/ext/servlet/InitParamParser;->parseCommaSeparatedTemplatePaths(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 92
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Lfreemarker/cache/TemplateLoader;

    .line 93
    :goto_be
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v1, v6, :cond_d3

    .line 94
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 95
    invoke-static {v6, p1, p2, p3}, Lfreemarker/ext/servlet/InitParamParser;->createTemplateLoader(Ljava/lang/String;Lfreemarker/template/Configuration;Ljava/lang/Class;Ljavax/servlet/ServletContext;)Lfreemarker/cache/TemplateLoader;

    move-result-object v6

    aput-object v6, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_be

    .line 97
    :cond_d3
    new-instance p3, Lfreemarker/cache/MultiTemplateLoader;

    invoke-direct {p3, v4}, Lfreemarker/cache/MultiTemplateLoader;-><init>([Lfreemarker/cache/TemplateLoader;)V

    goto :goto_104

    .line 88
    :cond_d9
    new-instance p0, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;

    const-string p1, "Failed to parse template path; closing \"]\" is missing."

    invoke-direct {p0, p1}, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 98
    :cond_e1
    const-string p2, "{"

    invoke-virtual {v3, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_fe

    .line 99
    invoke-virtual {p1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Version;->intValue()I

    move-result p1

    sget p2, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    if-ge p1, p2, :cond_f6

    goto :goto_fe

    .line 100
    :cond_f6
    new-instance p0, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;

    const-string p1, "Template paths starting with \"{\" are reseved for future purposes"

    invoke-direct {p0, p1}, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_fe
    :goto_fe
    new-instance p1, Lfreemarker/cache/WebappTemplateLoader;

    invoke-direct {p1, p3, v3}, Lfreemarker/cache/WebappTemplateLoader;-><init>(Ljavax/servlet/ServletContext;Ljava/lang/String;)V

    move-object p3, p1

    :goto_104
    if-eq v0, v2, :cond_14b

    const/16 p1, 0x28

    .line 108
    :try_start_108
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result p1

    add-int/2addr p1, v5

    .line 109
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object p2

    .line 107
    invoke-static {p0, p1, p3, p2}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->configureBean(Ljava/lang/String;ILjava/lang/Object;Lfreemarker/core/_SettingEvaluationEnvironment;)I

    move-result p1

    .line 110
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p2

    if-ne p1, p2, :cond_11c

    goto :goto_14b

    .line 111
    :cond_11c
    new-instance p1, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Template path should end after the setting list in: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_135
    .catch Ljava/lang/Exception; {:try_start_108 .. :try_end_135} :catch_135

    :catch_135
    move-exception p1

    .line 115
    new-instance p2, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Failed to set properties in: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :cond_14b
    :goto_14b
    return-object p3
.end method

.method static findTemplatePathSettingAssignmentsStart(Ljava/lang/String;)I
    .registers 11

    .line 179
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_6
    if-ltz v0, :cond_15

    .line 182
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_15
    const/4 v2, -0x1

    if-ltz v0, :cond_d3

    .line 187
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x29

    if-eq v3, v4, :cond_22

    goto/16 :goto_d3

    :cond_22
    add-int/2addr v0, v2

    const/4 v3, 0x0

    move v4, v1

    move v5, v3

    :goto_26
    if-lez v4, :cond_6a

    if-gez v0, :cond_2b

    return v2

    .line 195
    :cond_2b
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    const/16 v7, 0x22

    const/4 v8, 0x2

    if-eqz v5, :cond_58

    const/16 v9, 0x5c

    if-eq v5, v1, :cond_48

    if-eq v5, v8, :cond_3b

    goto :goto_67

    :cond_3b
    if-ne v6, v7, :cond_67

    if-lez v0, :cond_56

    add-int/lit8 v6, v0, -0x1

    .line 211
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_67

    goto :goto_56

    :cond_48
    const/16 v7, 0x27

    if-ne v6, v7, :cond_67

    if-lez v0, :cond_56

    add-int/lit8 v6, v0, -0x1

    .line 206
    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-eq v6, v9, :cond_67

    :cond_56
    :goto_56
    move v5, v3

    goto :goto_67

    :cond_58
    if-eq v6, v7, :cond_66

    packed-switch v6, :pswitch_data_d4

    goto :goto_67

    :pswitch_5e
    add-int/lit8 v4, v4, 0x1

    goto :goto_67

    :pswitch_61
    add-int/lit8 v4, v4, -0x1

    goto :goto_67

    :pswitch_64
    move v5, v1

    goto :goto_67

    :cond_66
    move v5, v8

    :cond_67
    :goto_67
    add-int/lit8 v0, v0, -0x1

    goto :goto_26

    :cond_6a
    :goto_6a
    if-ltz v0, :cond_79

    .line 220
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_79

    add-int/lit8 v0, v0, -0x1

    goto :goto_6a

    :cond_79
    add-int/lit8 v1, v0, 0x1

    :goto_7b
    if-ltz v0, :cond_8a

    .line 227
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v3

    if-eqz v3, :cond_8a

    add-int/lit8 v0, v0, -0x1

    goto :goto_7b

    :cond_8a
    add-int/lit8 v3, v0, 0x1

    if-ne v3, v1, :cond_8f

    return v2

    .line 235
    :cond_8f
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_93
    if-ltz v0, :cond_a2

    .line 238
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v3

    if-eqz v3, :cond_a2

    add-int/lit8 v0, v0, -0x1

    goto :goto_93

    :cond_a2
    if-ltz v0, :cond_d3

    .line 243
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    const/16 v3, 0x3f

    if-eq p0, v3, :cond_ad

    goto :goto_d3

    .line 245
    :cond_ad
    const-string p0, "settings"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b6

    return v0

    .line 246
    :cond_b6
    new-instance p0, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    invoke-static {v1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is unexpected after the \"?\". Expected \"settings\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d3
    :goto_d3
    return v2

    :pswitch_data_d4
    .packed-switch 0x27
        :pswitch_64
        :pswitch_61
        :pswitch_5e
    .end packed-switch
.end method

.method static normalizeToAbsolutePackagePath(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 123
    :goto_0
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v0, 0x1

    .line 124
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 126
    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static parseCommaSeparatedList(Ljava/lang/String;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v1, 0x2c

    .line 131
    invoke-static {p0, v1}, Lfreemarker/template/utility/StringUtil;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 132
    :goto_c
    array-length v2, p0

    if-ge v1, v2, :cond_30

    .line 133
    aget-object v2, p0, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 134
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1f

    .line 135
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 136
    :cond_1f
    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_27

    :goto_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 137
    :cond_27
    new-instance p0, Ljava/text/ParseException;

    const-string v0, "Missing list item berfore a comma"

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_30
    return-object v0
.end method

.method static parseCommaSeparatedPatterns(Ljava/lang/String;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/text/ParseException;
        }
    .end annotation

    .line 144
    invoke-static {p0}, Lfreemarker/ext/servlet/InitParamParser;->parseCommaSeparatedList(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 146
    :goto_e
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 147
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    :cond_24
    return-object v0
.end method

.method static parseCommaSeparatedTemplatePaths(Ljava/lang/String;)Ljava/util/List;
    .registers 7

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_54

    .line 160
    invoke-static {p0}, Lfreemarker/ext/servlet/InitParamParser;->findTemplatePathSettingAssignmentsStart(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_13

    goto :goto_17

    .line 161
    :cond_13
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :goto_17
    const/16 v3, 0x2c

    add-int/lit8 v1, v1, -0x1

    .line 162
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_25

    add-int/lit8 v4, v1, 0x1

    goto :goto_26

    :cond_25
    move v4, v3

    .line 164
    :goto_26
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_38

    .line 166
    invoke-interface {v0, v3, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_3e

    .line 167
    :cond_38
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_4c

    :goto_3e
    if-eq v1, v2, :cond_49

    .line 170
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :cond_49
    const-string p0, ""

    goto :goto_5

    .line 168
    :cond_4c
    new-instance p0, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;

    const-string v0, "Missing list item before a comma"

    invoke-direct {p0, v0}, Lfreemarker/ext/servlet/InitParamParser$TemplatePathParsingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_54
    return-object v0
.end method
