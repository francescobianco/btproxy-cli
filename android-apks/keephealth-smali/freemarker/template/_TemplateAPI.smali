.class public Lfreemarker/template/_TemplateAPI;
.super Ljava/lang/Object;
.source "_TemplateAPI.java"


# static fields
.field public static final VERSION_INT_2_3_0:I

.field public static final VERSION_INT_2_3_19:I

.field public static final VERSION_INT_2_3_20:I

.field public static final VERSION_INT_2_3_21:I

.field public static final VERSION_INT_2_3_22:I

.field public static final VERSION_INT_2_3_23:I

.field public static final VERSION_INT_2_3_24:I

.field public static final VERSION_INT_2_3_25:I

.field public static final VERSION_INT_2_3_26:I

.field public static final VERSION_INT_2_3_27:I

.field public static final VERSION_INT_2_3_28:I

.field public static final VERSION_INT_2_3_29:I

.field public static final VERSION_INT_2_4_0:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 43
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_0:I

    .line 44
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_19:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_19:I

    .line 45
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_20:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_20:I

    .line 46
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_21:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    .line 47
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_22:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_22:I

    .line 48
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_23:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_23:I

    .line 49
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_24:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_24:I

    .line 50
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_25:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_25:I

    .line 51
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_26:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_26:I

    .line 52
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_27:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_27:I

    .line 53
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_28:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_28:I

    .line 54
    sget-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_29:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_29:I

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 55
    invoke-static {v2, v0, v1}, Lfreemarker/template/Version;->intValueFor(III)I

    move-result v0

    sput v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_4_0:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static DefaultObjectWrapperFactory_clearInstanceCache()V
    .registers 0

    .line 80
    invoke-static {}, Lfreemarker/template/DefaultObjectWrapperBuilder;->clearInstanceCache()V

    return-void
.end method

.method public static checkVersionNotNullAndSupported(Lfreemarker/template/Version;)V
    .registers 4

    .line 58
    const-string v0, "incompatibleImprovements"

    invoke-static {v0, p0}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    .line 60
    invoke-static {}, Lfreemarker/template/Configuration;->getVersion()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_20

    .line 65
    sget p0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_0:I

    if-lt v0, p0, :cond_18

    return-void

    .line 66
    :cond_18
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"incompatibleImprovements\" must be at least 2.3.0."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 61
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The FreeMarker version requested by \"incompatibleImprovements\" was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", but the installed FreeMarker version is only "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 63
    invoke-static {}, Lfreemarker/template/Configuration;->getVersion()Lfreemarker/template/Version;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ". You may need to upgrade FreeMarker in your project."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createDefaultCacheStorage(Lfreemarker/template/Version;)Lfreemarker/cache/CacheStorage;
    .registers 1

    .line 106
    invoke-static {p0}, Lfreemarker/template/Configuration;->createDefaultCacheStorage(Lfreemarker/template/Version;)Lfreemarker/cache/CacheStorage;

    move-result-object p0

    return-object p0
.end method

.method public static createDefaultTemplateLoader(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLoader;
    .registers 1

    .line 102
    invoke-static {p0}, Lfreemarker/template/Configuration;->createDefaultTemplateLoader(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLoader;

    move-result-object p0

    return-object p0
.end method

.method public static getBlamedExpression(Lfreemarker/template/TemplateException;)Lfreemarker/core/Expression;
    .registers 1

    .line 175
    invoke-virtual {p0}, Lfreemarker/template/TemplateException;->getBlamedExpression()Lfreemarker/core/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static getConfigurationSettingNames(Lfreemarker/template/Configuration;Z)Ljava/util/Set;
    .registers 2

    .line 121
    invoke-virtual {p0, p1}, Lfreemarker/template/Configuration;->getSettingNames(Z)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultAttemptExceptionReporter(Lfreemarker/template/Version;)Lfreemarker/template/AttemptExceptionReporter;
    .registers 1

    .line 90
    invoke-static {p0}, Lfreemarker/template/Configuration;->getDefaultAttemptExceptionReporter(Lfreemarker/template/Version;)Lfreemarker/template/AttemptExceptionReporter;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultLocale()Ljava/util/Locale;
    .registers 1

    .line 179
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultLogTemplateExceptions(Lfreemarker/template/Version;)Z
    .registers 1

    .line 94
    invoke-static {p0}, Lfreemarker/template/Configuration;->getDefaultLogTemplateExceptions(Lfreemarker/template/Version;)Z

    move-result p0

    return p0
.end method

.method public static getDefaultTemplateExceptionHandler(Lfreemarker/template/Version;)Lfreemarker/template/TemplateExceptionHandler;
    .registers 1

    .line 85
    invoke-static {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateExceptionHandler(Lfreemarker/template/Version;)Lfreemarker/template/TemplateExceptionHandler;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultTemplateLookupStrategy(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLookupStrategy;
    .registers 1

    .line 110
    invoke-static {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateLookupStrategy(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultTemplateNameFormat(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateNameFormat;
    .registers 1

    .line 114
    invoke-static {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateNameFormat(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateNameFormat;

    move-result-object p0

    return-object p0
.end method

.method public static getDefaultTimeZone()Ljava/util/TimeZone;
    .registers 1

    .line 183
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultWrapUncheckedExceptions(Lfreemarker/template/Version;)Z
    .registers 1

    .line 98
    invoke-static {p0}, Lfreemarker/template/Configuration;->getDefaultWrapUncheckedExceptions(Lfreemarker/template/Version;)Z

    move-result p0

    return p0
.end method

.method public static getTemplateLanguageVersionAsInt(Lfreemarker/core/TemplateObject;)I
    .registers 1

    .line 71
    invoke-virtual {p0}, Lfreemarker/core/TemplateObject;->getTemplate()Lfreemarker/template/Template;

    move-result-object p0

    invoke-static {p0}, Lfreemarker/template/_TemplateAPI;->getTemplateLanguageVersionAsInt(Lfreemarker/template/Template;)I

    move-result p0

    return p0
.end method

.method public static getTemplateLanguageVersionAsInt(Lfreemarker/template/Template;)I
    .registers 1

    .line 75
    invoke-virtual {p0}, Lfreemarker/template/Template;->getTemplateLanguageVersion()Lfreemarker/template/Version;

    move-result-object p0

    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    return p0
.end method

.method public static setAutoEscaping(Lfreemarker/template/Template;Z)V
    .registers 2

    .line 125
    invoke-virtual {p0, p1}, Lfreemarker/template/Template;->setAutoEscaping(Z)V

    return-void
.end method

.method public static setOutputFormat(Lfreemarker/template/Template;Lfreemarker/core/OutputFormat;)V
    .registers 2

    .line 129
    invoke-virtual {p0, p1}, Lfreemarker/template/Template;->setOutputFormat(Lfreemarker/core/OutputFormat;)V

    return-void
.end method

.method public static setPreventStrippings(Lfreemarker/template/Configuration;Z)V
    .registers 2

    .line 187
    invoke-virtual {p0, p1}, Lfreemarker/template/Configuration;->setPreventStrippings(Z)V

    return-void
.end method

.method public static validateAutoEscapingPolicyValue(I)V
    .registers 2

    const/16 v0, 0x15

    if-eq p0, v0, :cond_15

    const/16 v0, 0x16

    if-eq p0, v0, :cond_15

    const/16 v0, 0x14

    if-ne p0, v0, :cond_d

    goto :goto_15

    .line 136
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"auto_escaping\" can only be set to one of these: Configuration.ENABLE_AUTO_ESCAPING_IF_DEFAULT, or Configuration.ENABLE_AUTO_ESCAPING_IF_SUPPORTEDor Configuration.DISABLE_AUTO_ESCAPING"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public static validateNamingConventionValue(I)V
    .registers 2

    const/16 v0, 0xa

    if-eq p0, v0, :cond_15

    const/16 v0, 0xb

    if-eq p0, v0, :cond_15

    const/16 v0, 0xc

    if-ne p0, v0, :cond_d

    goto :goto_15

    .line 147
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"naming_convention\" can only be set to one of these: Configuration.AUTO_DETECT_NAMING_CONVENTION, or Configuration.LEGACY_NAMING_CONVENTIONor Configuration.CAMEL_CASE_NAMING_CONVENTION"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public static valideInterpolationSyntaxValue(I)V
    .registers 2

    const/16 v0, 0x14

    if-eq p0, v0, :cond_15

    const/16 v0, 0x15

    if-eq p0, v0, :cond_15

    const/16 v0, 0x16

    if-ne p0, v0, :cond_d

    goto :goto_15

    .line 168
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"interpolation_syntax\" can only be set to one of these: Configuration.LEGACY_INTERPOLATION_SYNTAX, Configuration.DOLLAR_INTERPOLATION_SYNTAX, or Configuration.SQUARE_BRACKET_INTERPOLATION_SYNTAX"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    :goto_15
    return-void
.end method

.method public static valideTagSyntaxValue(I)V
    .registers 2

    if-eqz p0, :cond_11

    const/4 v0, 0x2

    if-eq p0, v0, :cond_11

    const/4 v0, 0x1

    if-ne p0, v0, :cond_9

    goto :goto_11

    .line 158
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "\"tag_syntax\" can only be set to one of these: Configuration.AUTO_DETECT_TAG_SYNTAX, Configuration.ANGLE_BRACKET_TAG_SYNTAX, or Configuration.SQUARE_BRACKET_TAG_SYNTAX"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    :goto_11
    return-void
.end method
