.class public Lfreemarker/template/Configuration;
.super Lfreemarker/core/Configurable;
.source "Configuration.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Lfreemarker/core/ParserConfiguration;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/template/Configuration$DefaultSoftCacheStorage;,
        Lfreemarker/template/Configuration$LegacyDefaultFileTemplateLoader;
    }
.end annotation


# static fields
.field public static final ANGLE_BRACKET_TAG_SYNTAX:I = 0x1

.field public static final AUTO_DETECT_NAMING_CONVENTION:I = 0xa

.field public static final AUTO_DETECT_TAG_SYNTAX:I = 0x0

.field public static final AUTO_ESCAPING_POLICY_KEY:Ljava/lang/String; = "auto_escaping_policy"

.field public static final AUTO_ESCAPING_POLICY_KEY_CAMEL_CASE:Ljava/lang/String; = "autoEscapingPolicy"

.field public static final AUTO_ESCAPING_POLICY_KEY_SNAKE_CASE:Ljava/lang/String; = "auto_escaping_policy"

.field public static final AUTO_IMPORT_KEY:Ljava/lang/String; = "auto_import"

.field public static final AUTO_IMPORT_KEY_CAMEL_CASE:Ljava/lang/String; = "autoImport"

.field public static final AUTO_IMPORT_KEY_SNAKE_CASE:Ljava/lang/String; = "auto_import"

.field public static final AUTO_INCLUDE_KEY:Ljava/lang/String; = "auto_include"

.field public static final AUTO_INCLUDE_KEY_CAMEL_CASE:Ljava/lang/String; = "autoInclude"

.field public static final AUTO_INCLUDE_KEY_SNAKE_CASE:Ljava/lang/String; = "auto_include"

.field private static final CACHE_LOG:Lfreemarker/log/Logger;

.field public static final CACHE_STORAGE_KEY:Ljava/lang/String; = "cache_storage"

.field public static final CACHE_STORAGE_KEY_CAMEL_CASE:Ljava/lang/String; = "cacheStorage"

.field public static final CACHE_STORAGE_KEY_SNAKE_CASE:Ljava/lang/String; = "cache_storage"

.field public static final CAMEL_CASE_NAMING_CONVENTION:I = 0xc

.field private static final DEFAULT:Ljava/lang/String; = "default"

.field public static final DEFAULT_ENCODING_KEY:Ljava/lang/String; = "default_encoding"

.field public static final DEFAULT_ENCODING_KEY_CAMEL_CASE:Ljava/lang/String; = "defaultEncoding"

.field public static final DEFAULT_ENCODING_KEY_SNAKE_CASE:Ljava/lang/String; = "default_encoding"

.field public static final DEFAULT_INCOMPATIBLE_ENHANCEMENTS:Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final DEFAULT_INCOMPATIBLE_IMPROVEMENTS:Lfreemarker/template/Version;

.field public static final DISABLE_AUTO_ESCAPING_POLICY:I = 0x14

.field public static final DOLLAR_INTERPOLATION_SYNTAX:I = 0x15

.field public static final ENABLE_IF_DEFAULT_AUTO_ESCAPING_POLICY:I = 0x15

.field public static final ENABLE_IF_SUPPORTED_AUTO_ESCAPING_POLICY:I = 0x16

.field public static final FALLBACK_ON_NULL_LOOP_VARIABLE_KEY:Ljava/lang/String; = "fallback_on_null_loop_variable"

.field public static final FALLBACK_ON_NULL_LOOP_VARIABLE_KEY_CAMEL_CASE:Ljava/lang/String; = "fallbackOnNullLoopVariable"

.field public static final FALLBACK_ON_NULL_LOOP_VARIABLE_KEY_SNAKE_CASE:Ljava/lang/String; = "fallback_on_null_loop_variable"

.field private static final FM_24_DETECTED:Z

.field private static final FM_24_DETECTION_CLASS_NAME:Ljava/lang/String; = "freemarker.core._2_4_OrLaterMarker"

.field public static final INCOMPATIBLE_ENHANCEMENTS:Ljava/lang/String; = "incompatible_enhancements"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INCOMPATIBLE_IMPROVEMENTS:Ljava/lang/String; = "incompatible_improvements"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final INCOMPATIBLE_IMPROVEMENTS_KEY:Ljava/lang/String; = "incompatible_improvements"

.field public static final INCOMPATIBLE_IMPROVEMENTS_KEY_CAMEL_CASE:Ljava/lang/String; = "incompatibleImprovements"

.field public static final INCOMPATIBLE_IMPROVEMENTS_KEY_SNAKE_CASE:Ljava/lang/String; = "incompatible_improvements"

.field public static final INTERPOLATION_SYNTAX_KEY:Ljava/lang/String; = "interpolation_syntax"

.field public static final INTERPOLATION_SYNTAX_KEY_CAMEL_CASE:Ljava/lang/String; = "interpolationSyntax"

.field public static final INTERPOLATION_SYNTAX_KEY_SNAKE_CASE:Ljava/lang/String; = "interpolation_syntax"

.field private static final JVM_DEFAULT:Ljava/lang/String; = "JVM default"

.field public static final LEGACY_INTERPOLATION_SYNTAX:I = 0x14

.field public static final LEGACY_NAMING_CONVENTION:I = 0xb

.field public static final LOCALIZED_LOOKUP_KEY:Ljava/lang/String; = "localized_lookup"

.field public static final LOCALIZED_LOOKUP_KEY_CAMEL_CASE:Ljava/lang/String; = "localizedLookup"

.field public static final LOCALIZED_LOOKUP_KEY_SNAKE_CASE:Ljava/lang/String; = "localized_lookup"

.field public static final NAMING_CONVENTION_KEY:Ljava/lang/String; = "naming_convention"

.field public static final NAMING_CONVENTION_KEY_CAMEL_CASE:Ljava/lang/String; = "namingConvention"

.field public static final NAMING_CONVENTION_KEY_SNAKE_CASE:Ljava/lang/String; = "naming_convention"

.field private static final NULL:Ljava/lang/String; = "null"

.field public static final OUTPUT_FORMAT_KEY:Ljava/lang/String; = "output_format"

.field public static final OUTPUT_FORMAT_KEY_CAMEL_CASE:Ljava/lang/String; = "outputFormat"

.field public static final OUTPUT_FORMAT_KEY_SNAKE_CASE:Ljava/lang/String; = "output_format"

.field public static final PARSED_DEFAULT_INCOMPATIBLE_ENHANCEMENTS:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final RECOGNIZE_STANDARD_FILE_EXTENSIONS_KEY:Ljava/lang/String; = "recognize_standard_file_extensions"

.field public static final RECOGNIZE_STANDARD_FILE_EXTENSIONS_KEY_CAMEL_CASE:Ljava/lang/String; = "recognizeStandardFileExtensions"

.field public static final RECOGNIZE_STANDARD_FILE_EXTENSIONS_KEY_SNAKE_CASE:Ljava/lang/String; = "recognize_standard_file_extensions"

.field public static final REGISTERED_CUSTOM_OUTPUT_FORMATS_KEY:Ljava/lang/String; = "registered_custom_output_formats"

.field public static final REGISTERED_CUSTOM_OUTPUT_FORMATS_KEY_CAMEL_CASE:Ljava/lang/String; = "registeredCustomOutputFormats"

.field public static final REGISTERED_CUSTOM_OUTPUT_FORMATS_KEY_SNAKE_CASE:Ljava/lang/String; = "registered_custom_output_formats"

.field private static final SETTING_NAMES_CAMEL_CASE:[Ljava/lang/String;

.field private static final SETTING_NAMES_SNAKE_CASE:[Ljava/lang/String;

.field public static final SQUARE_BRACKET_INTERPOLATION_SYNTAX:I = 0x16

.field public static final SQUARE_BRACKET_TAG_SYNTAX:I = 0x2

.field private static final STANDARD_OUTPUT_FORMATS:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lfreemarker/core/OutputFormat;",
            ">;"
        }
    .end annotation
.end field

.field public static final STRICT_SYNTAX_KEY:Ljava/lang/String; = "strict_syntax"

.field public static final STRICT_SYNTAX_KEY_CAMEL_CASE:Ljava/lang/String; = "strictSyntax"

.field public static final STRICT_SYNTAX_KEY_SNAKE_CASE:Ljava/lang/String; = "strict_syntax"

.field public static final TAB_SIZE_KEY:Ljava/lang/String; = "tab_size"

.field public static final TAB_SIZE_KEY_CAMEL_CASE:Ljava/lang/String; = "tabSize"

.field public static final TAB_SIZE_KEY_SNAKE_CASE:Ljava/lang/String; = "tab_size"

.field public static final TAG_SYNTAX_KEY:Ljava/lang/String; = "tag_syntax"

.field public static final TAG_SYNTAX_KEY_CAMEL_CASE:Ljava/lang/String; = "tagSyntax"

.field public static final TAG_SYNTAX_KEY_SNAKE_CASE:Ljava/lang/String; = "tag_syntax"

.field public static final TEMPLATE_CONFIGURATIONS_KEY:Ljava/lang/String; = "template_configurations"

.field public static final TEMPLATE_CONFIGURATIONS_KEY_CAMEL_CASE:Ljava/lang/String; = "templateConfigurations"

.field public static final TEMPLATE_CONFIGURATIONS_KEY_SNAKE_CASE:Ljava/lang/String; = "template_configurations"

.field public static final TEMPLATE_LOADER_KEY:Ljava/lang/String; = "template_loader"

.field public static final TEMPLATE_LOADER_KEY_CAMEL_CASE:Ljava/lang/String; = "templateLoader"

.field public static final TEMPLATE_LOADER_KEY_SNAKE_CASE:Ljava/lang/String; = "template_loader"

.field public static final TEMPLATE_LOOKUP_STRATEGY_KEY:Ljava/lang/String; = "template_lookup_strategy"

.field public static final TEMPLATE_LOOKUP_STRATEGY_KEY_CAMEL_CASE:Ljava/lang/String; = "templateLookupStrategy"

.field public static final TEMPLATE_LOOKUP_STRATEGY_KEY_SNAKE_CASE:Ljava/lang/String; = "template_lookup_strategy"

.field public static final TEMPLATE_NAME_FORMAT_KEY:Ljava/lang/String; = "template_name_format"

.field public static final TEMPLATE_NAME_FORMAT_KEY_CAMEL_CASE:Ljava/lang/String; = "templateNameFormat"

.field public static final TEMPLATE_NAME_FORMAT_KEY_SNAKE_CASE:Ljava/lang/String; = "template_name_format"

.field public static final TEMPLATE_UPDATE_DELAY_KEY:Ljava/lang/String; = "template_update_delay"

.field public static final TEMPLATE_UPDATE_DELAY_KEY_CAMEL_CASE:Ljava/lang/String; = "templateUpdateDelay"

.field public static final TEMPLATE_UPDATE_DELAY_KEY_SNAKE_CASE:Ljava/lang/String; = "template_update_delay"

.field private static final VERSION:Lfreemarker/template/Version;

.field public static final VERSION_2_3_0:Lfreemarker/template/Version;

.field public static final VERSION_2_3_19:Lfreemarker/template/Version;

.field public static final VERSION_2_3_20:Lfreemarker/template/Version;

.field public static final VERSION_2_3_21:Lfreemarker/template/Version;

.field public static final VERSION_2_3_22:Lfreemarker/template/Version;

.field public static final VERSION_2_3_23:Lfreemarker/template/Version;

.field public static final VERSION_2_3_24:Lfreemarker/template/Version;

.field public static final VERSION_2_3_25:Lfreemarker/template/Version;

.field public static final VERSION_2_3_26:Lfreemarker/template/Version;

.field public static final VERSION_2_3_27:Lfreemarker/template/Version;

.field public static final VERSION_2_3_28:Lfreemarker/template/Version;

.field public static final VERSION_2_3_29:Lfreemarker/template/Version;

.field private static final VERSION_PROPERTIES_PATH:Ljava/lang/String; = "/freemarker/version.properties"

.field public static final WHITESPACE_STRIPPING_KEY:Ljava/lang/String; = "whitespace_stripping"

.field public static final WHITESPACE_STRIPPING_KEY_CAMEL_CASE:Ljava/lang/String; = "whitespaceStripping"

.field public static final WHITESPACE_STRIPPING_KEY_SNAKE_CASE:Ljava/lang/String; = "whitespace_stripping"

.field private static volatile defaultConfig:Lfreemarker/template/Configuration;

.field private static final defaultConfigLock:Ljava/lang/Object;


# instance fields
.field private attemptExceptionReporterExplicitlySet:Z

.field private autoEscapingPolicy:I

.field private cache:Lfreemarker/cache/TemplateCache;

.field private cacheStorageExplicitlySet:Z

.field private defaultEncoding:Ljava/lang/String;

.field private defaultEncodingExplicitlySet:Z

.field private fallbackOnNullLoopVariable:Z

.field private incompatibleImprovements:Lfreemarker/template/Version;

.field private interpolationSyntax:I

.field private localeExplicitlySet:Z

.field private localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

.field private volatile localizedLookup:Z

.field private logTemplateExceptionsExplicitlySet:Z

.field private namingConvention:I

.field private objectWrapperExplicitlySet:Z

.field private outputFormat:Lfreemarker/core/OutputFormat;

.field private outputFormatExplicitlySet:Z

.field private preventStrippings:Z

.field private recognizeStandardFileExtensions:Ljava/lang/Boolean;

.field private registeredCustomOutputFormats:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Lfreemarker/core/OutputFormat;",
            ">;"
        }
    .end annotation
.end field

.field private rewrappableSharedVariables:Ljava/util/HashMap;

.field private sharedVariables:Ljava/util/HashMap;

.field private strictSyntax:Z

.field private tabSize:I

.field private tagSyntax:I

.field private templateExceptionHandlerExplicitlySet:Z

.field private templateLoaderExplicitlySet:Z

.field private templateLookupStrategyExplicitlySet:Z

.field private templateNameFormatExplicitlySet:Z

.field private timeZoneExplicitlySet:Z

.field private whitespaceStripping:Z

.field private wrapUncheckedExceptionsExplicitlySet:Z


# direct methods
.method static constructor <clinit>()V
    .registers 22

    .line 151
    const-string v0, "freemarker.cache"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/template/Configuration;->CACHE_LOG:Lfreemarker/log/Logger;

    const/16 v0, 0x14

    .line 326
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "auto_escaping_policy"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "cache_storage"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "default_encoding"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "fallback_on_null_loop_variable"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const-string v2, "incompatible_improvements"

    const/4 v7, 0x4

    aput-object v2, v1, v7

    const-string v2, "interpolation_syntax"

    const/4 v8, 0x5

    aput-object v2, v1, v8

    const-string v2, "localized_lookup"

    const/4 v9, 0x6

    aput-object v2, v1, v9

    const-string v2, "naming_convention"

    const/4 v10, 0x7

    aput-object v2, v1, v10

    const-string v2, "output_format"

    const/16 v11, 0x8

    aput-object v2, v1, v11

    const-string v2, "recognize_standard_file_extensions"

    const/16 v12, 0x9

    aput-object v2, v1, v12

    const-string v2, "registered_custom_output_formats"

    const/16 v13, 0xa

    aput-object v2, v1, v13

    const-string v2, "strict_syntax"

    const/16 v14, 0xb

    aput-object v2, v1, v14

    const-string v2, "tab_size"

    const/16 v15, 0xc

    aput-object v2, v1, v15

    const-string v2, "tag_syntax"

    const/16 v16, 0xd

    aput-object v2, v1, v16

    const-string v2, "template_configurations"

    const/16 v17, 0xe

    aput-object v2, v1, v17

    const-string v2, "template_loader"

    const/16 v18, 0xf

    aput-object v2, v1, v18

    const-string v2, "template_lookup_strategy"

    const/16 v19, 0x10

    aput-object v2, v1, v19

    const-string v2, "template_name_format"

    const/16 v20, 0x11

    aput-object v2, v1, v20

    const-string v2, "template_update_delay"

    const/16 v21, 0x12

    aput-object v2, v1, v21

    const-string v2, "whitespace_stripping"

    const/16 v15, 0x13

    aput-object v2, v1, v15

    sput-object v1, Lfreemarker/template/Configuration;->SETTING_NAMES_SNAKE_CASE:[Ljava/lang/String;

    .line 350
    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "autoEscapingPolicy"

    aput-object v2, v1, v3

    const-string v2, "cacheStorage"

    aput-object v2, v1, v4

    const-string v2, "defaultEncoding"

    aput-object v2, v1, v5

    const-string v2, "fallbackOnNullLoopVariable"

    aput-object v2, v1, v6

    const-string v2, "incompatibleImprovements"

    aput-object v2, v1, v7

    const-string v2, "interpolationSyntax"

    aput-object v2, v1, v8

    const-string v2, "localizedLookup"

    aput-object v2, v1, v9

    const-string v2, "namingConvention"

    aput-object v2, v1, v10

    const-string v2, "outputFormat"

    aput-object v2, v1, v11

    const-string v2, "recognizeStandardFileExtensions"

    aput-object v2, v1, v12

    const-string v2, "registeredCustomOutputFormats"

    aput-object v2, v1, v13

    const-string v2, "strictSyntax"

    aput-object v2, v1, v14

    const-string v2, "tabSize"

    const/16 v7, 0xc

    aput-object v2, v1, v7

    const-string v2, "tagSyntax"

    aput-object v2, v1, v16

    const-string v2, "templateConfigurations"

    aput-object v2, v1, v17

    const-string v2, "templateLoader"

    aput-object v2, v1, v18

    const-string v2, "templateLookupStrategy"

    aput-object v2, v1, v19

    const-string v2, "templateNameFormat"

    aput-object v2, v1, v20

    const-string v2, "templateUpdateDelay"

    aput-object v2, v1, v21

    const-string v2, "whitespaceStripping"

    aput-object v2, v1, v15

    sput-object v1, Lfreemarker/template/Configuration;->SETTING_NAMES_CAMEL_CASE:[Ljava/lang/String;

    .line 376
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lfreemarker/template/Configuration;->STANDARD_OUTPUT_FORMATS:Ljava/util/Map;

    .line 377
    sget-object v2, Lfreemarker/core/UndefinedOutputFormat;->INSTANCE:Lfreemarker/core/UndefinedOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/UndefinedOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/UndefinedOutputFormat;->INSTANCE:Lfreemarker/core/UndefinedOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    sget-object v2, Lfreemarker/core/HTMLOutputFormat;->INSTANCE:Lfreemarker/core/HTMLOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/HTMLOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/HTMLOutputFormat;->INSTANCE:Lfreemarker/core/HTMLOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    sget-object v2, Lfreemarker/core/XHTMLOutputFormat;->INSTANCE:Lfreemarker/core/XHTMLOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/XHTMLOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/XHTMLOutputFormat;->INSTANCE:Lfreemarker/core/XHTMLOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    sget-object v2, Lfreemarker/core/XMLOutputFormat;->INSTANCE:Lfreemarker/core/XMLOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/XMLOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/XMLOutputFormat;->INSTANCE:Lfreemarker/core/XMLOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    sget-object v2, Lfreemarker/core/RTFOutputFormat;->INSTANCE:Lfreemarker/core/RTFOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/RTFOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/RTFOutputFormat;->INSTANCE:Lfreemarker/core/RTFOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    sget-object v2, Lfreemarker/core/PlainTextOutputFormat;->INSTANCE:Lfreemarker/core/PlainTextOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/PlainTextOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/PlainTextOutputFormat;->INSTANCE:Lfreemarker/core/PlainTextOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    sget-object v2, Lfreemarker/core/CSSOutputFormat;->INSTANCE:Lfreemarker/core/CSSOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/CSSOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/CSSOutputFormat;->INSTANCE:Lfreemarker/core/CSSOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v2, Lfreemarker/core/JavaScriptOutputFormat;->INSTANCE:Lfreemarker/core/JavaScriptOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/JavaScriptOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/JavaScriptOutputFormat;->INSTANCE:Lfreemarker/core/JavaScriptOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    sget-object v2, Lfreemarker/core/JSONOutputFormat;->INSTANCE:Lfreemarker/core/JSONOutputFormat;

    invoke-virtual {v2}, Lfreemarker/core/JSONOutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v7, Lfreemarker/core/JSONOutputFormat;->INSTANCE:Lfreemarker/core/JSONOutputFormat;

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    new-instance v1, Lfreemarker/template/Version;

    invoke-direct {v1, v5, v6, v3}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v1, Lfreemarker/template/Configuration;->VERSION_2_3_0:Lfreemarker/template/Version;

    .line 440
    new-instance v2, Lfreemarker/template/Version;

    invoke-direct {v2, v5, v6, v15}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v2, Lfreemarker/template/Configuration;->VERSION_2_3_19:Lfreemarker/template/Version;

    .line 443
    new-instance v2, Lfreemarker/template/Version;

    invoke-direct {v2, v5, v6, v0}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v2, Lfreemarker/template/Configuration;->VERSION_2_3_20:Lfreemarker/template/Version;

    .line 446
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x15

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_21:Lfreemarker/template/Version;

    .line 449
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x16

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_22:Lfreemarker/template/Version;

    .line 452
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x17

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_23:Lfreemarker/template/Version;

    .line 455
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x18

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_24:Lfreemarker/template/Version;

    .line 458
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x19

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_25:Lfreemarker/template/Version;

    .line 461
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x1a

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_26:Lfreemarker/template/Version;

    .line 464
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x1b

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_27:Lfreemarker/template/Version;

    .line 467
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x1c

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_28:Lfreemarker/template/Version;

    .line 470
    new-instance v0, Lfreemarker/template/Version;

    const/16 v2, 0x1d

    invoke-direct {v0, v5, v6, v2}, Lfreemarker/template/Version;-><init>(III)V

    sput-object v0, Lfreemarker/template/Configuration;->VERSION_2_3_29:Lfreemarker/template/Version;

    .line 473
    sput-object v1, Lfreemarker/template/Configuration;->DEFAULT_INCOMPATIBLE_IMPROVEMENTS:Lfreemarker/template/Version;

    .line 476
    invoke-virtual {v1}, Lfreemarker/template/Version;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/template/Configuration;->DEFAULT_INCOMPATIBLE_ENHANCEMENTS:Ljava/lang/String;

    .line 479
    invoke-virtual {v1}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sput v0, Lfreemarker/template/Configuration;->PARSED_DEFAULT_INCOMPATIBLE_ENHANCEMENTS:I

    .line 488
    :try_start_1b2
    const-class v0, Lfreemarker/template/Configuration;

    const-string v1, "/freemarker/version.properties"

    invoke-static {v0, v1}, Lfreemarker/template/utility/ClassUtil;->loadProperties(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/Properties;

    move-result-object v0

    .line 490
    const-string v1, "version"

    invoke-static {v0, v1}, Lfreemarker/template/Configuration;->getRequiredVersionProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 494
    const-string v2, "buildTimestamp"

    invoke-static {v0, v2}, Lfreemarker/template/Configuration;->getRequiredVersionProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 495
    const-string v5, "Z"

    invoke-virtual {v2, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1ea

    .line 496
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v2, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "+0000"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_1ea
    .catch Ljava/io/IOException; {:try_start_1b2 .. :try_end_1ea} :catch_21a

    .line 499
    :cond_1ea
    :try_start_1ea
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd\'T\'HH:mm:ssZ"

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v5, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2
    :try_end_1f7
    .catch Ljava/text/ParseException; {:try_start_1ea .. :try_end_1f7} :catch_1f8
    .catch Ljava/io/IOException; {:try_start_1ea .. :try_end_1f7} :catch_21a

    goto :goto_1f9

    :catch_1f8
    const/4 v2, 0x0

    .line 505
    :goto_1f9
    :try_start_1f9
    const-string v5, "isGAECompliant"

    invoke-static {v0, v5}, Lfreemarker/template/Configuration;->getRequiredVersionProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .line 507
    new-instance v5, Lfreemarker/template/Version;

    invoke-direct {v5, v1, v0, v2}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/Date;)V

    sput-object v5, Lfreemarker/template/Configuration;->VERSION:Lfreemarker/template/Version;
    :try_end_20a
    .catch Ljava/io/IOException; {:try_start_1f9 .. :try_end_20a} :catch_21a

    .line 518
    :try_start_20a
    const-string v0, "freemarker.core._2_4_OrLaterMarker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_20f
    .catch Ljava/lang/ClassNotFoundException; {:try_start_20a .. :try_end_20f} :catch_210
    .catch Ljava/lang/LinkageError; {:try_start_20a .. :try_end_20f} :catch_20f
    .catchall {:try_start_20a .. :try_end_20f} :catchall_210

    :catch_20f
    move v3, v4

    .line 528
    :catch_210
    :catchall_210
    sput-boolean v3, Lfreemarker/template/Configuration;->FM_24_DETECTED:Z

    .line 531
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lfreemarker/template/Configuration;->defaultConfigLock:Ljava/lang/Object;

    return-void

    :catch_21a
    move-exception v0

    .line 509
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Failed to load and parse /freemarker/version.properties"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 589
    sget-object v0, Lfreemarker/template/Configuration;->DEFAULT_INCOMPATIBLE_IMPROVEMENTS:Lfreemarker/template/Version;

    invoke-direct {p0, v0}, Lfreemarker/template/Configuration;-><init>(Lfreemarker/template/Version;)V

    return-void
.end method

.method public constructor <init>(Lfreemarker/template/Version;)V
    .registers 4

    .line 936
    invoke-direct {p0, p1}, Lfreemarker/core/Configurable;-><init>(Lfreemarker/template/Version;)V

    const/4 v0, 0x1

    .line 535
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->strictSyntax:Z

    .line 536
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->localizedLookup:Z

    .line 537
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->whitespaceStripping:Z

    const/16 v1, 0x15

    .line 538
    iput v1, p0, Lfreemarker/template/Configuration;->autoEscapingPolicy:I

    .line 539
    sget-object v1, Lfreemarker/core/UndefinedOutputFormat;->INSTANCE:Lfreemarker/core/UndefinedOutputFormat;

    iput-object v1, p0, Lfreemarker/template/Configuration;->outputFormat:Lfreemarker/core/OutputFormat;

    .line 542
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/Configuration;->registeredCustomOutputFormats:Ljava/util/Map;

    .line 544
    iput v0, p0, Lfreemarker/template/Configuration;->tagSyntax:I

    const/16 v1, 0x14

    .line 545
    iput v1, p0, Lfreemarker/template/Configuration;->interpolationSyntax:I

    const/16 v1, 0xa

    .line 546
    iput v1, p0, Lfreemarker/template/Configuration;->namingConvention:I

    const/16 v1, 0x8

    .line 547
    iput v1, p0, Lfreemarker/template/Configuration;->tabSize:I

    .line 548
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->fallbackOnNullLoopVariable:Z

    .line 568
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 575
    iput-object v0, p0, Lfreemarker/template/Configuration;->rewrappableSharedVariables:Ljava/util/HashMap;

    .line 577
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/template/Configuration;->defaultEncoding:Ljava/lang/String;

    .line 578
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    .line 941
    invoke-static {}, Lfreemarker/template/Configuration;->checkFreeMarkerVersionClash()V

    .line 943
    const-string v0, "incompatibleImprovements"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 944
    iput-object p1, p0, Lfreemarker/template/Configuration;->incompatibleImprovements:Lfreemarker/template/Version;

    .line 946
    invoke-direct {p0}, Lfreemarker/template/Configuration;->createTemplateCache()V

    .line 947
    invoke-direct {p0}, Lfreemarker/template/Configuration;->loadBuiltInSharedVariables()V

    return-void
.end method

.method private static checkFreeMarkerVersionClash()V
    .registers 3

    .line 951
    sget-boolean v0, Lfreemarker/template/Configuration;->FM_24_DETECTED:Z

    if-nez v0, :cond_5

    return-void

    .line 952
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Clashing FreeMarker versions ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lfreemarker/template/Configuration;->VERSION:Lfreemarker/template/Version;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " and some post-2.3.x) detected: found post-2.3.x class freemarker.core._2_4_OrLaterMarker. You probably have two different freemarker.jar-s in the classpath."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static createDefaultCacheStorage(Lfreemarker/template/Version;)Lfreemarker/cache/CacheStorage;
    .registers 2

    const/4 v0, 0x0

    .line 1050
    invoke-static {p0, v0}, Lfreemarker/template/Configuration;->createDefaultCacheStorage(Lfreemarker/template/Version;Lfreemarker/cache/CacheStorage;)Lfreemarker/cache/CacheStorage;

    move-result-object p0

    return-object p0
.end method

.method static createDefaultCacheStorage(Lfreemarker/template/Version;Lfreemarker/cache/CacheStorage;)Lfreemarker/cache/CacheStorage;
    .registers 2

    .line 1043
    instance-of p0, p1, Lfreemarker/template/Configuration$DefaultSoftCacheStorage;

    if-eqz p0, :cond_5

    return-object p1

    .line 1046
    :cond_5
    new-instance p0, Lfreemarker/template/Configuration$DefaultSoftCacheStorage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lfreemarker/template/Configuration$DefaultSoftCacheStorage;-><init>(Lfreemarker/template/Configuration$1;)V

    return-object p0
.end method

.method static createDefaultTemplateLoader(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLoader;
    .registers 2

    const/4 v0, 0x0

    .line 993
    invoke-static {p0, v0}, Lfreemarker/template/Configuration;->createDefaultTemplateLoader(Lfreemarker/template/Version;Lfreemarker/cache/TemplateLoader;)Lfreemarker/cache/TemplateLoader;

    move-result-object p0

    return-object p0
.end method

.method private static createDefaultTemplateLoader(Lfreemarker/template/Version;Lfreemarker/cache/TemplateLoader;)Lfreemarker/cache/TemplateLoader;
    .registers 4

    .line 998
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result p0

    sget v0, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    const/4 v1, 0x0

    if-ge p0, v0, :cond_1c

    .line 999
    instance-of p0, p1, Lfreemarker/template/Configuration$LegacyDefaultFileTemplateLoader;

    if-eqz p0, :cond_e

    return-object p1

    .line 1003
    :cond_e
    :try_start_e
    new-instance p0, Lfreemarker/template/Configuration$LegacyDefaultFileTemplateLoader;

    invoke-direct {p0}, Lfreemarker/template/Configuration$LegacyDefaultFileTemplateLoader;-><init>()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_14

    return-object p0

    :catch_14
    move-exception p0

    .line 1005
    sget-object p1, Lfreemarker/template/Configuration;->CACHE_LOG:Lfreemarker/log/Logger;

    const-string v0, "Couldn\'t create legacy default TemplateLoader which accesses the current directory. (Use new Configuration(Configuration.VERSION_2_3_21) or higher to avoid this.)"

    invoke-virtual {p1, v0, p0}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1c
    return-object v1
.end method

.method private createTemplateCache()V
    .registers 9

    .line 959
    new-instance v7, Lfreemarker/cache/TemplateCache;

    .line 960
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v1

    .line 961
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v2

    .line 962
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v3

    .line 963
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v7

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lfreemarker/cache/TemplateCache;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;Lfreemarker/template/Configuration;)V

    iput-object v7, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 966
    invoke-virtual {v7}, Lfreemarker/cache/TemplateCache;->clear()V

    .line 967
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lfreemarker/cache/TemplateCache;->setDelay(J)V

    return-void
.end method

.method private doAutoImports(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 3501
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getAutoImportsWithoutFallback()Ljava/util/Map;

    move-result-object v0

    .line 3502
    invoke-virtual {p2}, Lfreemarker/template/Template;->getAutoImportsWithoutFallback()Ljava/util/Map;

    move-result-object p2

    .line 3504
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLazyAutoImports()Ljava/lang/Boolean;

    move-result-object v1

    if-eqz v1, :cond_17

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLazyAutoImports()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1b

    .line 3505
    :cond_17
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLazyImports()Z

    move-result v1

    .line 3507
    :goto_1b
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getAutoImportsWithoutFallback()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_27
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_53

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 3508
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz p2, :cond_41

    .line 3509
    invoke-interface {p2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    :cond_41
    if-eqz v0, :cond_49

    .line 3510
    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_27

    .line 3511
    :cond_49
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p1, v3, v4, v1}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/Environment$Namespace;

    goto :goto_27

    :cond_53
    if-eqz p2, :cond_81

    .line 3515
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5d
    :goto_5d
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_81

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3516
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v0, :cond_77

    .line 3517
    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5d

    .line 3518
    :cond_77
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v1}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/Environment$Namespace;

    goto :goto_5d

    :cond_81
    if-eqz v0, :cond_a7

    .line 3523
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8b
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a7

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 3524
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3525
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0, v2, v1}, Lfreemarker/core/Environment;->importLib(Ljava/lang/String;Ljava/lang/String;Z)Lfreemarker/core/Environment$Namespace;

    goto :goto_8b

    :cond_a7
    return-void
.end method

.method private doAutoIncludes(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;,
            Lfreemarker/template/TemplateNotFoundException;,
            Lfreemarker/template/MalformedTemplateNameException;,
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 3536
    invoke-virtual {p2}, Lfreemarker/template/Template;->getAutoIncludesWithoutFallback()Ljava/util/List;

    move-result-object p2

    .line 3537
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getAutoIncludesWithoutFallback()Ljava/util/List;

    move-result-object v0

    .line 3539
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getAutoIncludesWithoutFallback()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10
    :goto_10
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_38

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz p2, :cond_24

    .line 3540
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    :cond_24
    if-eqz v0, :cond_2c

    .line 3541
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 3542
    :cond_2c
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/Template;

    move-result-object v2

    invoke-virtual {p1, v2}, Lfreemarker/core/Environment;->include(Lfreemarker/template/Template;)V

    goto :goto_10

    :cond_38
    if-eqz p2, :cond_5e

    .line 3547
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3e
    :goto_3e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v0, :cond_52

    .line 3548
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3e

    .line 3549
    :cond_52
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/Template;

    move-result-object v1

    invoke-virtual {p1, v1}, Lfreemarker/core/Environment;->include(Lfreemarker/template/Template;)V

    goto :goto_3e

    :cond_5e
    if-eqz v0, :cond_7c

    .line 3555
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_64
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3556
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/Template;

    move-result-object v0

    invoke-virtual {p1, v0}, Lfreemarker/core/Environment;->include(Lfreemarker/template/Template;)V

    goto :goto_64

    :cond_7c
    return-void
.end method

.method private ensureSentenceIsClosed(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-eqz p1, :cond_33

    .line 2862
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_33

    .line 2866
    :cond_9
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-eq v0, v1, :cond_33

    const/16 v1, 0x21

    if-eq v0, v1, :cond_33

    const/16 v1, 0x3f

    if-ne v0, v1, :cond_20

    goto :goto_33

    .line 2867
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_33
    :goto_33
    return-object p1
.end method

.method private getDefaultAttemptExceptionReporter()Lfreemarker/template/AttemptExceptionReporter;
    .registers 2

    .line 1062
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultAttemptExceptionReporter(Lfreemarker/template/Version;)Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultAttemptExceptionReporter(Lfreemarker/template/Version;)Lfreemarker/template/AttemptExceptionReporter;
    .registers 1

    .line 1084
    sget-object p0, Lfreemarker/template/AttemptExceptionReporter;->LOG_ERROR_REPORTER:Lfreemarker/template/AttemptExceptionReporter;

    return-object p0
.end method

.method private getDefaultCacheStorage()Lfreemarker/cache/CacheStorage;
    .registers 3

    .line 1039
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v1

    invoke-static {v0, v1}, Lfreemarker/template/Configuration;->createDefaultCacheStorage(Lfreemarker/template/Version;Lfreemarker/cache/CacheStorage;)Lfreemarker/cache/CacheStorage;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultConfiguration()Lfreemarker/template/Configuration;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1243
    sget-object v0, Lfreemarker/template/Configuration;->defaultConfig:Lfreemarker/template/Configuration;

    if-nez v0, :cond_17

    .line 1245
    sget-object v1, Lfreemarker/template/Configuration;->defaultConfigLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1246
    :try_start_7
    sget-object v0, Lfreemarker/template/Configuration;->defaultConfig:Lfreemarker/template/Configuration;

    if-nez v0, :cond_12

    .line 1248
    new-instance v0, Lfreemarker/template/Configuration;

    invoke-direct {v0}, Lfreemarker/template/Configuration;-><init>()V

    .line 1249
    sput-object v0, Lfreemarker/template/Configuration;->defaultConfig:Lfreemarker/template/Configuration;

    .line 1251
    :cond_12
    monitor-exit v1

    goto :goto_17

    :catchall_14
    move-exception v0

    monitor-exit v1
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v0

    :cond_17
    :goto_17
    return-object v0
.end method

.method private static getDefaultDefaultEncoding()Ljava/lang/String;
    .registers 1

    .line 2922
    invoke-static {}, Lfreemarker/template/Configuration;->getJVMDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultLocale()Ljava/util/Locale;
    .registers 1

    .line 1757
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultLogTemplateExceptions()Z
    .registers 2

    .line 1066
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultLogTemplateExceptions(Lfreemarker/template/Version;)Z

    move-result v0

    return v0
.end method

.method static getDefaultLogTemplateExceptions(Lfreemarker/template/Version;)Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method private getDefaultObjectWrapper()Lfreemarker/template/ObjectWrapper;
    .registers 2

    .line 1074
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultObjectWrapper(Lfreemarker/template/Version;)Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultObjectWrapper(Lfreemarker/template/Version;)Lfreemarker/template/ObjectWrapper;
    .registers 3

    .line 3615
    invoke-virtual {p0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_21:I

    if-ge v0, v1, :cond_b

    .line 3616
    sget-object p0, Lfreemarker/template/ObjectWrapper;->DEFAULT_WRAPPER:Lfreemarker/template/ObjectWrapper;

    return-object p0

    .line 3618
    :cond_b
    new-instance v0, Lfreemarker/template/DefaultObjectWrapperBuilder;

    invoke-direct {v0, p0}, Lfreemarker/template/DefaultObjectWrapperBuilder;-><init>(Lfreemarker/template/Version;)V

    invoke-virtual {v0}, Lfreemarker/template/DefaultObjectWrapperBuilder;->build()Lfreemarker/template/DefaultObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method private getDefaultTemplateExceptionHandler()Lfreemarker/template/TemplateExceptionHandler;
    .registers 2

    .line 1058
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultTemplateExceptionHandler(Lfreemarker/template/Version;)Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultTemplateExceptionHandler(Lfreemarker/template/Version;)Lfreemarker/template/TemplateExceptionHandler;
    .registers 1

    .line 1079
    sget-object p0, Lfreemarker/template/TemplateExceptionHandler;->DEBUG_HANDLER:Lfreemarker/template/TemplateExceptionHandler;

    return-object p0
.end method

.method private getDefaultTemplateLoader()Lfreemarker/cache/TemplateLoader;
    .registers 3

    .line 989
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v1

    invoke-static {v0, v1}, Lfreemarker/template/Configuration;->createDefaultTemplateLoader(Lfreemarker/template/Version;Lfreemarker/cache/TemplateLoader;)Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;
    .registers 2

    .line 1023
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultTemplateLookupStrategy(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultTemplateLookupStrategy(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateLookupStrategy;
    .registers 1

    .line 1027
    sget-object p0, Lfreemarker/cache/TemplateLookupStrategy;->DEFAULT_2_3_0:Lfreemarker/cache/TemplateLookupStrategy;

    return-object p0
.end method

.method private getDefaultTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;
    .registers 2

    .line 1031
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultTemplateNameFormat(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateNameFormat;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultTemplateNameFormat(Lfreemarker/template/Version;)Lfreemarker/cache/TemplateNameFormat;
    .registers 1

    .line 1035
    sget-object p0, Lfreemarker/cache/TemplateNameFormat;->DEFAULT_2_3_0:Lfreemarker/cache/TemplateNameFormat;

    return-object p0
.end method

.method static getDefaultTimeZone()Ljava/util/TimeZone;
    .registers 1

    .line 1789
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    return-object v0
.end method

.method private getDefaultWrapUncheckedExceptions()Z
    .registers 2

    .line 1070
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-static {v0}, Lfreemarker/template/Configuration;->getDefaultWrapUncheckedExceptions(Lfreemarker/template/Version;)Z

    move-result v0

    return v0
.end method

.method static getDefaultWrapUncheckedExceptions(Lfreemarker/template/Version;)Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method private static getJVMDefaultEncoding()Ljava/lang/String;
    .registers 2

    .line 2926
    const-string v0, "file.encoding"

    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getMarkupOutputFormatForCombined(Ljava/lang/String;)Lfreemarker/core/MarkupOutputFormat;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnregisteredOutputFormatException;
        }
    .end annotation

    .line 2258
    invoke-virtual {p0, p1}, Lfreemarker/template/Configuration;->getOutputFormat(Ljava/lang/String;)Lfreemarker/core/OutputFormat;

    move-result-object v0

    .line 2259
    instance-of v1, v0, Lfreemarker/core/MarkupOutputFormat;

    if-eqz v1, :cond_b

    .line 2263
    check-cast v0, Lfreemarker/core/MarkupOutputFormat;

    return-object v0

    .line 2260
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\" output format can\'t be used in ...{...} expression, because it\'s not a markup format."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getRequiredVersionProperty(Ljava/util/Properties;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 3680
    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_7

    return-object p0

    .line 3682
    :cond_7
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Version file is corrupt: \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\" property is missing."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getVersion()Lfreemarker/template/Version;
    .registers 1

    .line 3604
    sget-object v0, Lfreemarker/template/Configuration;->VERSION:Lfreemarker/template/Version;

    return-object v0
.end method

.method public static getVersionNumber()Ljava/lang/String;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3568
    sget-object v0, Lfreemarker/template/Configuration;->VERSION:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private isKnownNonConfusingLookupStrategy(Lfreemarker/cache/TemplateLookupStrategy;)Z
    .registers 3

    .line 2854
    sget-object v0, Lfreemarker/cache/TemplateLookupStrategy;->DEFAULT_2_3_0:Lfreemarker/cache/TemplateLookupStrategy;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x1

    goto :goto_7

    :cond_6
    const/4 p1, 0x0

    :goto_7
    return p1
.end method

.method private loadBuiltInSharedVariables()V
    .registers 4

    .line 1114
    iget-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/template/utility/CaptureOutput;

    invoke-direct {v1}, Lfreemarker/template/utility/CaptureOutput;-><init>()V

    const-string v2, "capture_output"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    iget-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    const-string v1, "compress"

    sget-object v2, Lfreemarker/template/utility/StandardCompress;->INSTANCE:Lfreemarker/template/utility/StandardCompress;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    iget-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/template/utility/HtmlEscape;

    invoke-direct {v1}, Lfreemarker/template/utility/HtmlEscape;-><init>()V

    const-string v2, "html_escape"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    iget-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/template/utility/NormalizeNewlines;

    invoke-direct {v1}, Lfreemarker/template/utility/NormalizeNewlines;-><init>()V

    const-string v2, "normalize_newlines"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    iget-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    new-instance v1, Lfreemarker/template/utility/XmlEscape;

    invoke-direct {v1}, Lfreemarker/template/utility/XmlEscape;-><init>()V

    const-string v2, "xml_escape"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private recreateTemplateCache()V
    .registers 8

    .line 983
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 984
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v5

    .line 985
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;

    move-result-object v6

    move-object v1, p0

    .line 983
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/Configuration;->recreateTemplateCacheWith(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;)V

    return-void
.end method

.method private recreateTemplateCacheWith(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;)V
    .registers 15

    .line 974
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 975
    new-instance v8, Lfreemarker/cache/TemplateCache;

    move-object v1, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p0

    invoke-direct/range {v1 .. v7}, Lfreemarker/cache/TemplateCache;-><init>(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;Lfreemarker/template/Configuration;)V

    iput-object v8, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 977
    invoke-virtual {v8}, Lfreemarker/cache/TemplateCache;->clear()V

    .line 978
    iget-object p1, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getDelay()J

    move-result-wide p2

    invoke-virtual {p1, p2, p3}, Lfreemarker/cache/TemplateCache;->setDelay(J)V

    .line 979
    iget-object p1, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    iget-boolean p2, p0, Lfreemarker/template/Configuration;->localizedLookup:Z

    invoke-virtual {p1, p2}, Lfreemarker/cache/TemplateCache;->setLocalizedLookup(Z)V

    return-void
.end method

.method private removeInitialSlash(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2858
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_d
    return-object p1
.end method

.method private rightTrim(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 3455
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_4
    if-lez v0, :cond_15

    add-int/lit8 v1, v0, -0x1

    .line 3456
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-eqz v1, :cond_15

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_15
    const/4 v1, 0x0

    .line 3459
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static setDefaultConfiguration(Lfreemarker/template/Configuration;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1266
    sget-object v0, Lfreemarker/template/Configuration;->defaultConfigLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1267
    :try_start_3
    sput-object p0, Lfreemarker/template/Configuration;->defaultConfig:Lfreemarker/template/Configuration;

    .line 1268
    monitor-exit v0

    return-void

    :catchall_7
    move-exception p0

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw p0
.end method

.method private setSharedVariablesFromRewrappableSharedVariables()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3068
    iget-object v0, p0, Lfreemarker/template/Configuration;->rewrappableSharedVariables:Ljava/util/HashMap;

    if-nez v0, :cond_5

    return-void

    .line 3069
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 3070
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3071
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3072
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3075
    instance-of v3, v1, Lfreemarker/template/TemplateModel;

    if-eqz v3, :cond_2a

    .line 3076
    check-cast v1, Lfreemarker/template/TemplateModel;

    goto :goto_32

    .line 3078
    :cond_2a
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v3

    invoke-interface {v3, v1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    .line 3080
    :goto_32
    iget-object v3, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_38
    return-void
.end method


# virtual methods
.method public clearEncodingMap()V
    .registers 2

    .line 1223
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    return-void
.end method

.method public clearSharedVariables()V
    .registers 2

    .line 3131
    iget-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 3132
    invoke-direct {p0}, Lfreemarker/template/Configuration;->loadBuiltInSharedVariables()V

    return-void
.end method

.method public clearTemplateCache()V
    .registers 2

    .line 3142
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->clear()V

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .registers 8

    .line 1100
    :try_start_0
    invoke-super {p0}, Lfreemarker/core/Configurable;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/template/Configuration;

    .line 1101
    new-instance v1, Ljava/util/HashMap;

    iget-object v2, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    .line 1102
    new-instance v1, Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v2, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-direct {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, v0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    .line 1103
    iget-object v1, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1104
    invoke-virtual {v1}, Lfreemarker/cache/TemplateCache;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v1, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v1}, Lfreemarker/cache/TemplateCache;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v1, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1105
    invoke-virtual {v1}, Lfreemarker/cache/TemplateCache;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v4

    iget-object v1, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v1}, Lfreemarker/cache/TemplateCache;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v5

    iget-object v1, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1106
    invoke-virtual {v1}, Lfreemarker/cache/TemplateCache;->getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;

    move-result-object v6

    move-object v1, v0

    .line 1103
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/Configuration;->recreateTemplateCacheWith(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;)V
    :try_end_3a
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_3a} :catch_3b

    return-object v0

    :catch_3b
    move-exception v0

    .line 1109
    new-instance v1, Lfreemarker/core/BugException;

    const-string v2, "Cloning failed"

    invoke-direct {v1, v2, v0}, Lfreemarker/core/BugException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected doAutoImportsAndIncludes(Lfreemarker/core/Environment;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 3495
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getMainTemplate()Lfreemarker/template/Template;

    move-result-object v0

    .line 3496
    invoke-direct {p0, p1, v0}, Lfreemarker/template/Configuration;->doAutoImports(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    .line 3497
    invoke-direct {p0, p1, v0}, Lfreemarker/template/Configuration;->doAutoIncludes(Lfreemarker/core/Environment;Lfreemarker/template/Template;)V

    return-void
.end method

.method public getAutoEscapingPolicy()I
    .registers 2

    .line 2114
    iget v0, p0, Lfreemarker/template/Configuration;->autoEscapingPolicy:I

    return v0
.end method

.method public getCacheStorage()Lfreemarker/cache/CacheStorage;
    .registers 2

    .line 1521
    monitor-enter p0

    .line 1522
    :try_start_1
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    if-nez v0, :cond_8

    .line 1523
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 1525
    :cond_8
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_e
    move-exception v0

    .line 1526
    monitor-exit p0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_e

    throw v0
.end method

.method protected getCorrectedNameForUnknownSetting(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 3483
    const-string v0, "encoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "charset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "default_charset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_29

    .line 3487
    :cond_19
    const-string v0, "defaultCharset"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 3488
    const-string p1, "defaultEncoding"

    return-object p1

    .line 3490
    :cond_24
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->getCorrectedNameForUnknownSetting(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3485
    :cond_29
    :goto_29
    const-string p1, "default_encoding"

    return-object p1
.end method

.method public getDefaultEncoding()Ljava/lang/String;
    .registers 2

    .line 2896
    iget-object v0, p0, Lfreemarker/template/Configuration;->defaultEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getEncoding(Ljava/util/Locale;)Ljava/lang/String;
    .registers 5

    .line 2939
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2940
    iget-object p1, p0, Lfreemarker/template/Configuration;->defaultEncoding:Ljava/lang/String;

    return-object p1

    .line 2943
    :cond_b
    const-string v0, "locale"

    invoke-static {v0, p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2944
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_63

    .line 2946
    invoke-virtual {p1}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4c

    .line 2947
    new-instance v0, Ljava/util/Locale;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2948
    iget-object v1, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 2950
    iget-object v1, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    :cond_4c
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_63

    .line 2955
    iget-object v1, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_63
    if-eqz v0, :cond_66

    goto :goto_68

    .line 2958
    :cond_66
    iget-object v0, p0, Lfreemarker/template/Configuration;->defaultEncoding:Ljava/lang/String;

    :goto_68
    return-object v0
.end method

.method public getFallbackOnNullLoopVariable()Z
    .registers 2

    .line 2593
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->fallbackOnNullLoopVariable:Z

    return v0
.end method

.method public getIncompatibleEnhancements()Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2020
    iget-object v0, p0, Lfreemarker/template/Configuration;->incompatibleImprovements:Lfreemarker/template/Version;

    invoke-virtual {v0}, Lfreemarker/template/Version;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncompatibleImprovements()Lfreemarker/template/Version;
    .registers 2

    .line 2003
    iget-object v0, p0, Lfreemarker/template/Configuration;->incompatibleImprovements:Lfreemarker/template/Version;

    return-object v0
.end method

.method public getInterpolationSyntax()I
    .registers 2

    .line 2485
    iget v0, p0, Lfreemarker/template/Configuration;->interpolationSyntax:I

    return v0
.end method

.method public getLocalizedLookup()Z
    .registers 2

    .line 3223
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getLocalizedLookup()Z

    move-result v0

    return v0
.end method

.method public getNamingConvention()I
    .registers 2

    .line 2550
    iget v0, p0, Lfreemarker/template/Configuration;->namingConvention:I

    return v0
.end method

.method public getOutputFormat()Lfreemarker/core/OutputFormat;
    .registers 2

    .line 2162
    iget-object v0, p0, Lfreemarker/template/Configuration;->outputFormat:Lfreemarker/core/OutputFormat;

    return-object v0
.end method

.method public getOutputFormat(Ljava/lang/String;)Lfreemarker/core/OutputFormat;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/UnregisteredOutputFormatException;
        }
    .end annotation

    .line 2208
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_b8

    .line 2211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v2, 0x7d

    const/4 v3, 0x0

    if-ne v0, v2, :cond_4f

    const/16 v0, 0x7b

    .line 2213
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3a

    .line 2218
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lfreemarker/template/Configuration;->getMarkupOutputFormatForCombined(Ljava/lang/String;)Lfreemarker/core/MarkupOutputFormat;

    move-result-object v2

    add-int/2addr v0, v1

    .line 2220
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v1

    invoke-virtual {p1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 2219
    invoke-direct {p0, v0}, Lfreemarker/template/Configuration;->getMarkupOutputFormatForCombined(Ljava/lang/String;)Lfreemarker/core/MarkupOutputFormat;

    move-result-object v0

    .line 2222
    new-instance v1, Lfreemarker/core/CombinedMarkupOutputFormat;

    invoke-direct {v1, p1, v2, v0}, Lfreemarker/core/CombinedMarkupOutputFormat;-><init>(Ljava/lang/String;Lfreemarker/core/MarkupOutputFormat;Lfreemarker/core/MarkupOutputFormat;)V

    return-object v1

    .line 2215
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing opening \'{\' in: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2224
    :cond_4f
    iget-object v0, p0, Lfreemarker/template/Configuration;->registeredCustomOutputFormats:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/OutputFormat;

    if-eqz v0, :cond_5a

    return-object v0

    .line 2229
    :cond_5a
    sget-object v0, Lfreemarker/template/Configuration;->STANDARD_OUTPUT_FORMATS:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/OutputFormat;

    if-nez v2, :cond_b7

    .line 2231
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Unregistered output format name, "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2233
    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2234
    const-string p1, ". The output formats registered in the Configuration are: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2236
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 2237
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2238
    iget-object v0, p0, Lfreemarker/template/Configuration;->registeredCustomOutputFormats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 2241
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_90
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ad

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v1, :cond_a0

    move v1, v3

    goto :goto_a5

    .line 2245
    :cond_a0
    const-string v4, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2247
    :goto_a5
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_90

    .line 2250
    :cond_ad
    new-instance p1, Lfreemarker/core/UnregisteredOutputFormatException;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/core/UnregisteredOutputFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_b7
    return-object v2

    .line 2209
    :cond_b8
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "0-length format name"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParsedIncompatibleEnhancements()I
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2028
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    return v0
.end method

.method getPreventStrippings()Z
    .registers 2

    .line 2621
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->preventStrippings:Z

    return v0
.end method

.method public getRecognizeStandardFileExtensions()Z
    .registers 3

    .line 2414
    iget-object v0, p0, Lfreemarker/template/Configuration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    if-nez v0, :cond_12

    iget-object v0, p0, Lfreemarker/template/Configuration;->incompatibleImprovements:Lfreemarker/template/Version;

    .line 2415
    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_24:I

    if-lt v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_16

    :cond_10
    const/4 v0, 0x0

    goto :goto_16

    .line 2416
    :cond_12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :goto_16
    return v0
.end method

.method public getRegisteredCustomOutputFormats()Ljava/util/Collection;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "+",
            "Lfreemarker/core/OutputFormat;",
            ">;"
        }
    .end annotation

    .line 2349
    iget-object v0, p0, Lfreemarker/template/Configuration;->registeredCustomOutputFormats:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getSettingNames(Z)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3476
    new-instance v0, Lfreemarker/core/_UnmodifiableCompositeSet;

    .line 3477
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->getSettingNames(Z)Ljava/util/Set;

    move-result-object v1

    new-instance v2, Lfreemarker/core/_SortedArraySet;

    if-eqz p1, :cond_d

    sget-object p1, Lfreemarker/template/Configuration;->SETTING_NAMES_CAMEL_CASE:[Ljava/lang/String;

    goto :goto_f

    :cond_d
    sget-object p1, Lfreemarker/template/Configuration;->SETTING_NAMES_SNAKE_CASE:[Ljava/lang/String;

    :goto_f
    invoke-direct {v2, p1}, Lfreemarker/core/_SortedArraySet;-><init>([Ljava/lang/Object;)V

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_UnmodifiableCompositeSet;-><init>(Ljava/util/Set;Ljava/util/Set;)V

    return-object v0
.end method

.method public getSharedVariable(Ljava/lang/String;)Lfreemarker/template/TemplateModel;
    .registers 3

    .line 3124
    iget-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/template/TemplateModel;

    return-object p1
.end method

.method public getSharedVariableNames()Ljava/util/Set;
    .registers 3

    .line 3008
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getStrictSyntaxMode()Z
    .registers 2

    .line 1920
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->strictSyntax:Z

    return v0
.end method

.method public getSupportedBuiltInDirectiveNames()Ljava/util/Set;
    .registers 2

    .line 3653
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getNamingConvention()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->getSupportedBuiltInDirectiveNames(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedBuiltInDirectiveNames(I)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_7

    .line 3669
    sget-object p1, Lfreemarker/core/_CoreAPI;->ALL_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;

    return-object p1

    :cond_7
    const/16 v0, 0xb

    if-ne p1, v0, :cond_e

    .line 3671
    sget-object p1, Lfreemarker/core/_CoreAPI;->LEGACY_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;

    return-object p1

    :cond_e
    const/16 v0, 0xc

    if-ne p1, v0, :cond_15

    .line 3673
    sget-object p1, Lfreemarker/core/_CoreAPI;->CAMEL_CASE_BUILT_IN_DIRECTIVE_NAMES:Ljava/util/Set;

    return-object p1

    .line 3675
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported naming convention constant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSupportedBuiltInNames()Ljava/util/Set;
    .registers 2

    .line 3628
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getNamingConvention()I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->getSupportedBuiltInNames(I)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedBuiltInNames(I)Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3644
    invoke-static {p1}, Lfreemarker/core/_CoreAPI;->getSupportedBuiltInNames(I)Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public getTabSize()I
    .registers 2

    .line 2584
    iget v0, p0, Lfreemarker/template/Configuration;->tabSize:I

    return v0
.end method

.method public getTagSyntax()I
    .registers 2

    .line 2457
    iget v0, p0, Lfreemarker/template/Configuration;->tagSyntax:I

    return v0
.end method

.method public getTemplate(Ljava/lang/String;)Lfreemarker/template/Template;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateNotFoundException;,
            Lfreemarker/template/MalformedTemplateNameException;,
            Lfreemarker/core/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 2647
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/Template;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateNotFoundException;,
            Lfreemarker/template/MalformedTemplateNameException;,
            Lfreemarker/core/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 2665
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/Template;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateNotFoundException;,
            Lfreemarker/template/MalformedTemplateNameException;,
            Lfreemarker/core/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 2656
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateNotFoundException;,
            Lfreemarker/template/MalformedTemplateNameException;,
            Lfreemarker/core/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_6

    .line 2792
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getLocale()Ljava/util/Locale;

    move-result-object p2

    :cond_6
    move-object v2, p2

    if-nez p4, :cond_d

    .line 2795
    invoke-virtual {p0, v2}, Lfreemarker/template/Configuration;->getEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p4

    :cond_d
    move-object v4, p4

    .line 2798
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    move-object v1, p1

    move-object v3, p3

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/TemplateCache;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;

    move-result-object p2

    .line 2799
    invoke-virtual {p2}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->getTemplate()Lfreemarker/template/Template;

    move-result-object p4

    if-nez p4, :cond_12d

    if-eqz p6, :cond_21

    const/4 p1, 0x0

    return-object p1

    .line 2805
    :cond_21
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object p4

    if-nez p4, :cond_42

    .line 2808
    new-instance p4, Ljava/lang/StringBuilder;

    const-string p5, "Don\'t know where to load template "

    invoke-direct {p4, p5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string p5, " from because the \"template_loader\" FreeMarker setting wasn\'t set (Configuration.setTemplateLoader), so it\'s null."

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    goto/16 :goto_120

    .line 2812
    :cond_42
    invoke-virtual {p2}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->getMissingTemplateNormalizedName()Ljava/lang/String;

    move-result-object p5

    .line 2813
    invoke-virtual {p2}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->getMissingTemplateReason()Ljava/lang/String;

    move-result-object p6

    .line 2814
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v0

    .line 2815
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Template not found for name "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    if-eqz p5, :cond_87

    if-eqz p1, :cond_87

    .line 2817
    invoke-direct {p0, p1}, Lfreemarker/template/Configuration;->removeInitialSlash(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_87

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, " (normalized: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2818
    invoke-static {p5}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v3, ")"

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_88

    :cond_87
    move-object p5, v2

    :goto_88
    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    if-eqz p3, :cond_a2

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, " and custom lookup condition "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2821
    invoke-static {p3}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a3

    :cond_a2
    move-object v1, v2

    :goto_a3
    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v1, "."

    invoke-virtual {p5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    if-eqz p6, :cond_c3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\nReason given: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2824
    invoke-direct {p0, p6}, Lfreemarker/template/Configuration;->ensureSentenceIsClosed(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c4

    :cond_c3
    move-object v3, v2

    :goto_c4
    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v3, "\nThe name was interpreted by this TemplateLoader: "

    invoke-virtual {p5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    .line 2827
    invoke-static {p4}, Lfreemarker/template/utility/StringUtil;->tryToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    .line 2828
    invoke-direct {p0, v0}, Lfreemarker/template/Configuration;->isKnownNonConfusingLookupStrategy(Lfreemarker/cache/TemplateLookupStrategy;)Z

    move-result p5

    if-nez p5, :cond_fa

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v1, "\n(Before that, the name was possibly changed by this lookup strategy: "

    invoke-direct {p5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2830
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->tryToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v0, ".)"

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    goto :goto_fb

    :cond_fa
    move-object p5, v2

    :goto_fb
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    iget-boolean p5, p0, Lfreemarker/template/Configuration;->templateLoaderExplicitlySet:Z

    if-nez p5, :cond_106

    const-string p5, "\nWarning: The \"template_loader\" FreeMarker setting wasn\'t set (Configuration.setTemplateLoader), and using the default value is most certainly not intended and dangerous, and can be the cause of this error."

    goto :goto_107

    :cond_106
    move-object p5, v2

    :goto_107
    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    if-nez p6, :cond_118

    const/16 p5, 0x5c

    .line 2838
    invoke-virtual {p1, p5}, Ljava/lang/String;->indexOf(I)I

    move-result p5

    const/4 p6, -0x1

    if-eq p5, p6, :cond_118

    const-string v2, "\nWarning: The name contains backslash (\"\\\") instead of slash (\"/\"); template names should use slash only."

    :cond_118
    invoke-virtual {p4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 2844
    :goto_120
    invoke-virtual {p2}, Lfreemarker/cache/TemplateCache$MaybeMissingTemplate;->getMissingTemplateNormalizedName()Ljava/lang/String;

    move-result-object p2

    .line 2845
    new-instance p5, Lfreemarker/template/TemplateNotFoundException;

    if-eqz p2, :cond_129

    move-object p1, p2

    :cond_129
    invoke-direct {p5, p1, p3, p4}, Lfreemarker/template/TemplateNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)V

    throw p5

    :cond_12d
    return-object p4
.end method

.method public getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)Lfreemarker/template/Template;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateNotFoundException;,
            Lfreemarker/template/MalformedTemplateNameException;,
            Lfreemarker/core/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 2674
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)Lfreemarker/template/Template;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateNotFoundException;,
            Lfreemarker/template/MalformedTemplateNameException;,
            Lfreemarker/core/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 2683
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;ZZ)Lfreemarker/template/Template;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateNotFoundException;,
            Lfreemarker/template/MalformedTemplateNameException;,
            Lfreemarker/core/ParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    .line 2694
    invoke-virtual/range {v0 .. v6}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;ZZ)Lfreemarker/template/Template;

    move-result-object p1

    return-object p1
.end method

.method public getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;
    .registers 2

    .line 1461
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1464
    :cond_6
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateLoader()Lfreemarker/cache/TemplateLoader;
    .registers 2

    .line 1329
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1332
    :cond_6
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;
    .registers 2

    .line 1378
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1381
    :cond_6
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;
    .registers 2

    .line 1426
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 1429
    :cond_6
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v0

    return-object v0
.end method

.method public getTemplateUpdateDelayMilliseconds()J
    .registers 3

    .line 1669
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getDelay()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWhitespaceStripping()Z
    .registers 2

    .line 2046
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->whitespaceStripping:Z

    return v0
.end method

.method public isAttemptExceptionReporterExplicitlySet()Z
    .registers 2

    .line 1849
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->attemptExceptionReporterExplicitlySet:Z

    return v0
.end method

.method public isCacheStorageExplicitlySet()Z
    .registers 2

    .line 1511
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->cacheStorageExplicitlySet:Z

    return v0
.end method

.method public isDefaultEncodingExplicitlySet()Z
    .registers 2

    .line 2918
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->defaultEncodingExplicitlySet:Z

    return v0
.end method

.method public isLocaleExplicitlySet()Z
    .registers 2

    .line 1753
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->localeExplicitlySet:Z

    return v0
.end method

.method public isLogTemplateExceptionsExplicitlySet()Z
    .registers 2

    .line 1883
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->logTemplateExceptionsExplicitlySet:Z

    return v0
.end method

.method public isObjectWrapperExplicitlySet()Z
    .registers 2

    .line 1725
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->objectWrapperExplicitlySet:Z

    return v0
.end method

.method public isOutputFormatExplicitlySet()Z
    .registers 2

    .line 2171
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->outputFormatExplicitlySet:Z

    return v0
.end method

.method public isRecognizeStandardFileExtensionsExplicitlySet()Z
    .registers 2

    .line 2405
    iget-object v0, p0, Lfreemarker/template/Configuration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public isTemplateExceptionHandlerExplicitlySet()Z
    .registers 2

    .line 1819
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->templateExceptionHandlerExplicitlySet:Z

    return v0
.end method

.method public isTemplateLoaderExplicitlySet()Z
    .registers 2

    .line 1322
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->templateLoaderExplicitlySet:Z

    return v0
.end method

.method public isTemplateLookupStrategyExplicitlySet()Z
    .registers 2

    .line 1371
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->templateLookupStrategyExplicitlySet:Z

    return v0
.end method

.method public isTemplateNameFormatExplicitlySet()Z
    .registers 2

    .line 1419
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->templateNameFormatExplicitlySet:Z

    return v0
.end method

.method public isTimeZoneExplicitlySet()Z
    .registers 2

    .line 1785
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->timeZoneExplicitlySet:Z

    return v0
.end method

.method public isWrapUncheckedExceptionsExplicitlySet()Z
    .registers 2

    .line 1913
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->wrapUncheckedExceptionsExplicitlySet:Z

    return v0
.end method

.method public loadBuiltInEncodingMap()V
    .registers 7

    .line 1175
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 1176
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ar"

    const-string v2, "ISO-8859-6"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1177
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "be"

    const-string v2, "ISO-8859-5"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "bg"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ca"

    const-string v3, "ISO-8859-1"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "cs"

    const-string v4, "ISO-8859-2"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "da"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "de"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "el"

    const-string v5, "ISO-8859-7"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "en"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "es"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "et"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "fi"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "fr"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "hr"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "hu"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "is"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "it"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "iw"

    const-string v5, "ISO-8859-8"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ja"

    const-string v5, "Shift_JIS"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ko"

    const-string v5, "EUC-KR"

    invoke-interface {v0, v1, v5}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "lt"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "lv"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "mk"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "nl"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "no"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1201
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "pl"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "pt"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1203
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ro"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "ru"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sh"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sk"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sl"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sq"

    invoke-interface {v0, v1, v4}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sr"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "sv"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "tr"

    const-string v3, "ISO-8859-9"

    invoke-interface {v0, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "uk"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "zh"

    const-string v2, "GB2312"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "zh_TW"

    const-string v2, "Big5"

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeTemplateFromCache(Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3152
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    .line 3153
    invoke-virtual {p0, v2}, Lfreemarker/template/Configuration;->getEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/Configuration;->removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public removeTemplateFromCache(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3173
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getLocale()Ljava/util/Locale;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/Configuration;->removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3163
    invoke-virtual {p0, p2}, Lfreemarker/template/Configuration;->getEncoding(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/Configuration;->removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3214
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lfreemarker/cache/TemplateCache;->removeTemplate(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 3183
    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/Configuration;->removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/String;Z)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    .line 3195
    invoke-virtual/range {v0 .. v5}, Lfreemarker/template/Configuration;->removeTemplateFromCache(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/Object;Ljava/lang/String;Z)V

    return-void
.end method

.method public setAllSharedVariables(Lfreemarker/template/TemplateHashModelEx;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3104
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->keys()Lfreemarker/template/TemplateCollectionModel;

    move-result-object v0

    invoke-interface {v0}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object v0

    .line 3105
    invoke-interface {p1}, Lfreemarker/template/TemplateHashModelEx;->values()Lfreemarker/template/TemplateCollectionModel;

    move-result-object p1

    invoke-interface {p1}, Lfreemarker/template/TemplateCollectionModel;->iterator()Lfreemarker/template/TemplateModelIterator;

    move-result-object p1

    .line 3106
    :goto_10
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    .line 3107
    invoke-interface {v0}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v1

    check-cast v1, Lfreemarker/template/TemplateScalarModel;

    invoke-interface {v1}, Lfreemarker/template/TemplateScalarModel;->getAsString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lfreemarker/template/TemplateModelIterator;->next()Lfreemarker/template/TemplateModel;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lfreemarker/template/Configuration;->setSharedVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    goto :goto_10

    :cond_28
    return-void
.end method

.method public setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V
    .registers 2

    .line 1824
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V

    const/4 p1, 0x1

    .line 1825
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->attemptExceptionReporterExplicitlySet:Z

    return-void
.end method

.method public setAutoEscapingPolicy(I)V
    .registers 3

    .line 2099
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->validateAutoEscapingPolicyValue(I)V

    .line 2101
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getAutoEscapingPolicy()I

    move-result v0

    .line 2102
    iput p1, p0, Lfreemarker/template/Configuration;->autoEscapingPolicy:I

    if-eq v0, p1, :cond_e

    .line 2104
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->clearTemplateCache()V

    :cond_e
    return-void
.end method

.method public setCacheStorage(Lfreemarker/cache/CacheStorage;)V
    .registers 9

    .line 1481
    monitor-enter p0

    .line 1482
    :try_start_1
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v0

    if-eq v0, p1, :cond_24

    .line 1483
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1484
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v5

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1485
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;

    move-result-object v6

    move-object v1, p0

    move-object v3, p1

    .line 1483
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/Configuration;->recreateTemplateCacheWith(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;)V

    :cond_24
    const/4 p1, 0x1

    .line 1487
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->cacheStorageExplicitlySet:Z

    .line 1488
    monitor-exit p0

    return-void

    :catchall_29
    move-exception p1

    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_29

    throw p1
.end method

.method public setClassForTemplateLoading(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 4

    .line 1607
    new-instance v0, Lfreemarker/cache/ClassTemplateLoader;

    invoke-direct {v0, p1, p2}, Lfreemarker/cache/ClassTemplateLoader;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateLoader(Lfreemarker/cache/TemplateLoader;)V

    return-void
.end method

.method public setClassLoaderForTemplateLoading(Ljava/lang/ClassLoader;Ljava/lang/String;)V
    .registers 4

    .line 1625
    new-instance v0, Lfreemarker/cache/ClassTemplateLoader;

    invoke-direct {v0, p1, p2}, Lfreemarker/cache/ClassTemplateLoader;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateLoader(Lfreemarker/cache/TemplateLoader;)V

    return-void
.end method

.method public setDefaultEncoding(Ljava/lang/String;)V
    .registers 2

    .line 2886
    iput-object p1, p0, Lfreemarker/template/Configuration;->defaultEncoding:Ljava/lang/String;

    const/4 p1, 0x1

    .line 2887
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->defaultEncodingExplicitlySet:Z

    return-void
.end method

.method public setDirectoryForTemplateLoading(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    .line 1547
    instance-of v1, v0, Lfreemarker/cache/FileTemplateLoader;

    if-eqz v1, :cond_1b

    .line 1548
    check-cast v0, Lfreemarker/cache/FileTemplateLoader;

    iget-object v0, v0, Lfreemarker/cache/FileTemplateLoader;->baseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v0

    .line 1549
    invoke-virtual {p1}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    return-void

    .line 1552
    :cond_1b
    new-instance v0, Lfreemarker/cache/FileTemplateLoader;

    invoke-direct {v0, p1}, Lfreemarker/cache/FileTemplateLoader;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateLoader(Lfreemarker/cache/TemplateLoader;)V

    return-void
.end method

.method public setEncoding(Ljava/util/Locale;Ljava/lang/String;)V
    .registers 4

    .line 2972
    iget-object v0, p0, Lfreemarker/template/Configuration;->localeToCharsetMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setFallbackOnNullLoopVariable(Z)V
    .registers 2

    .line 2612
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->fallbackOnNullLoopVariable:Z

    return-void
.end method

.method public setIncompatibleEnhancements(Ljava/lang/String;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2012
    new-instance v0, Lfreemarker/template/Version;

    invoke-direct {v0, p1}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setIncompatibleImprovements(Lfreemarker/template/Version;)V

    return-void
.end method

.method public setIncompatibleImprovements(Lfreemarker/template/Version;)V
    .registers 3

    .line 1943
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->checkVersionNotNullAndSupported(Lfreemarker/template/Version;)V

    .line 1945
    iget-object v0, p0, Lfreemarker/template/Configuration;->incompatibleImprovements:Lfreemarker/template/Version;

    invoke-virtual {v0, p1}, Lfreemarker/template/Version;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    .line 1946
    iput-object p1, p0, Lfreemarker/template/Configuration;->incompatibleImprovements:Lfreemarker/template/Version;

    .line 1948
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->templateLoaderExplicitlySet:Z

    const/4 v0, 0x1

    if-nez p1, :cond_17

    .line 1949
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->templateLoaderExplicitlySet:Z

    .line 1950
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetTemplateLoader()V

    .line 1953
    :cond_17
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->templateLookupStrategyExplicitlySet:Z

    if-nez p1, :cond_20

    .line 1954
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->templateLookupStrategyExplicitlySet:Z

    .line 1955
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetTemplateLookupStrategy()V

    .line 1958
    :cond_20
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->templateNameFormatExplicitlySet:Z

    if-nez p1, :cond_29

    .line 1959
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->templateNameFormatExplicitlySet:Z

    .line 1960
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetTemplateNameFormat()V

    .line 1963
    :cond_29
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->cacheStorageExplicitlySet:Z

    if-nez p1, :cond_32

    .line 1964
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->cacheStorageExplicitlySet:Z

    .line 1965
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetCacheStorage()V

    .line 1968
    :cond_32
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->templateExceptionHandlerExplicitlySet:Z

    if-nez p1, :cond_3b

    .line 1969
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->templateExceptionHandlerExplicitlySet:Z

    .line 1970
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetTemplateExceptionHandler()V

    .line 1973
    :cond_3b
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->attemptExceptionReporterExplicitlySet:Z

    if-nez p1, :cond_44

    .line 1974
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->attemptExceptionReporterExplicitlySet:Z

    .line 1975
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetAttemptExceptionReporter()V

    .line 1978
    :cond_44
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->logTemplateExceptionsExplicitlySet:Z

    if-nez p1, :cond_4d

    .line 1979
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->logTemplateExceptionsExplicitlySet:Z

    .line 1980
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetLogTemplateExceptions()V

    .line 1983
    :cond_4d
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->wrapUncheckedExceptionsExplicitlySet:Z

    if-nez p1, :cond_56

    .line 1984
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->wrapUncheckedExceptionsExplicitlySet:Z

    .line 1985
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetWrapUncheckedExceptions()V

    .line 1988
    :cond_56
    iget-boolean p1, p0, Lfreemarker/template/Configuration;->objectWrapperExplicitlySet:Z

    if-nez p1, :cond_5f

    .line 1989
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->objectWrapperExplicitlySet:Z

    .line 1990
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetObjectWrapper()V

    .line 1993
    :cond_5f
    invoke-direct {p0}, Lfreemarker/template/Configuration;->recreateTemplateCache()V

    :cond_62
    return-void
.end method

.method public setInterpolationSyntax(I)V
    .registers 2

    .line 2475
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->valideInterpolationSyntaxValue(I)V

    .line 2476
    iput p1, p0, Lfreemarker/template/Configuration;->interpolationSyntax:I

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .registers 2

    .line 1730
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setLocale(Ljava/util/Locale;)V

    const/4 p1, 0x1

    .line 1731
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->localeExplicitlySet:Z

    return-void
.end method

.method public setLocalizedLookup(Z)V
    .registers 3

    .line 3247
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->localizedLookup:Z

    .line 3248
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0, p1}, Lfreemarker/cache/TemplateCache;->setLocalizedLookup(Z)V

    return-void
.end method

.method public setLogTemplateExceptions(Z)V
    .registers 2

    .line 1859
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setLogTemplateExceptions(Z)V

    const/4 p1, 0x1

    .line 1860
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->logTemplateExceptionsExplicitlySet:Z

    return-void
.end method

.method public setNamingConvention(I)V
    .registers 2

    .line 2540
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->validateNamingConventionValue(I)V

    .line 2541
    iput p1, p0, Lfreemarker/template/Configuration;->namingConvention:I

    return-void
.end method

.method public setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V
    .registers 4

    .line 1691
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    .line 1692
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    const/4 v1, 0x1

    .line 1693
    iput-boolean v1, p0, Lfreemarker/template/Configuration;->objectWrapperExplicitlySet:Z

    if-eq p1, v0, :cond_19

    .line 1696
    :try_start_c
    invoke-direct {p0}, Lfreemarker/template/Configuration;->setSharedVariablesFromRewrappableSharedVariables()V
    :try_end_f
    .catch Lfreemarker/template/TemplateModelException; {:try_start_c .. :try_end_f} :catch_10

    goto :goto_19

    :catch_10
    move-exception p1

    .line 1698
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Failed to re-wrap earliearly set shared variables with the newly set object wrapper"

    invoke-direct {v0, v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_19
    :goto_19
    return-void
.end method

.method public setOutputFormat(Lfreemarker/core/OutputFormat;)V
    .registers 4

    if-eqz p1, :cond_11

    .line 2148
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getOutputFormat()Lfreemarker/core/OutputFormat;

    move-result-object v0

    .line 2149
    iput-object p1, p0, Lfreemarker/template/Configuration;->outputFormat:Lfreemarker/core/OutputFormat;

    const/4 v1, 0x1

    .line 2150
    iput-boolean v1, p0, Lfreemarker/template/Configuration;->outputFormatExplicitlySet:Z

    if-eq v0, p1, :cond_10

    .line 2152
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->clearTemplateCache()V

    :cond_10
    return-void

    .line 2144
    :cond_11
    new-instance p1, Lfreemarker/template/utility/NullArgumentException;

    const-class v0, Lfreemarker/core/UndefinedOutputFormat;

    .line 2146
    const-string v0, "You may meant: UndefinedOutputFormat.INSTANCE"

    const-string v1, "outputFormat"

    invoke-direct {p1, v1, v0}, Lfreemarker/template/utility/NullArgumentException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method setPreventStrippings(Z)V
    .registers 2

    .line 2631
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->preventStrippings:Z

    return-void
.end method

.method public setRecognizeStandardFileExtensions(Z)V
    .registers 4

    .line 2378
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getRecognizeStandardFileExtensions()Z

    move-result v0

    .line 2379
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/template/Configuration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    if-eq v0, p1, :cond_f

    .line 2381
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->clearTemplateCache()V

    :cond_f
    return-void
.end method

.method public setRegisteredCustomOutputFormats(Ljava/util/Collection;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lfreemarker/core/OutputFormat;",
            ">;)V"
        }
    .end annotation

    .line 2295
    invoke-static {p1}, Lfreemarker/template/utility/NullArgumentException;->check(Ljava/lang/Object;)V

    .line 2296
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2297
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 2298
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_16
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_13e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfreemarker/core/OutputFormat;

    .line 2299
    invoke-virtual {v1}, Lfreemarker/core/OutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2300
    sget-object v3, Lfreemarker/core/UndefinedOutputFormat;->INSTANCE:Lfreemarker/core/UndefinedOutputFormat;

    invoke-virtual {v3}, Lfreemarker/core/UndefinedOutputFormat;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "\" output format can\'t be redefined"

    const-string v5, "The \""

    if-nez v3, :cond_127

    .line 2304
    sget-object v3, Lfreemarker/core/PlainTextOutputFormat;->INSTANCE:Lfreemarker/core/PlainTextOutputFormat;

    invoke-virtual {v3}, Lfreemarker/core/PlainTextOutputFormat;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_110

    .line 2308
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_108

    const/4 v3, 0x0

    .line 2311
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-eqz v3, :cond_f3

    const/16 v3, 0x2b

    .line 2315
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_de

    const/16 v3, 0x7b

    .line 2319
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_c9

    const/16 v3, 0x7d

    .line 2323
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-ne v3, v4, :cond_b4

    .line 2328
    invoke-virtual {v1}, Lfreemarker/core/OutputFormat;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lfreemarker/core/OutputFormat;

    if-eqz v2, :cond_16

    if-ne v2, v1, :cond_8f

    .line 2331
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Duplicate output format in the collection: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2334
    :cond_8f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Clashing output format names between "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " and "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2324
    :cond_b4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The output format name can\'t contain \"}\" character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2320
    :cond_c9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The output format name can\'t contain \"{\" character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2316
    :cond_de
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The output format name can\'t contain \"+\" character: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2312
    :cond_f3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "The output format name must start with letter or digit: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2309
    :cond_108
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The output format name can\'t be 0 long"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2305
    :cond_110
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2301
    :cond_127
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2338
    :cond_13e
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/template/Configuration;->registeredCustomOutputFormats:Ljava/util/Map;

    .line 2340
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->clearTemplateCache()V

    return-void
.end method

.method public setServletContextForTemplateLoading(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 8

    .line 1571
    :try_start_0
    const-string v0, "freemarker.cache.WebappTemplateLoader"

    invoke-static {v0}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1574
    const-string v1, "javax.servlet.ServletContext"

    invoke-static {v1}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez p2, :cond_19

    .line 1579
    new-array p2, v3, [Ljava/lang/Class;

    aput-object v1, p2, v2

    .line 1580
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    goto :goto_27

    :cond_19
    const/4 v4, 0x2

    .line 1582
    new-array v4, v4, [Ljava/lang/Class;

    aput-object v1, v4, v2

    const-class v1, Ljava/lang/String;

    aput-object v1, v4, v3

    .line 1583
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    move-object p2, v4

    .line 1588
    :goto_27
    invoke-virtual {v0, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    .line 1589
    invoke-virtual {p2, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lfreemarker/cache/TemplateLoader;

    .line 1586
    invoke-virtual {p0, p1}, Lfreemarker/template/Configuration;->setTemplateLoader(Lfreemarker/cache/TemplateLoader;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    return-void

    :catch_35
    move-exception p1

    .line 1591
    new-instance p2, Lfreemarker/core/BugException;

    invoke-direct {p2, p1}, Lfreemarker/core/BugException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public setSetting(Ljava/lang/String;Ljava/lang/String;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 3255
    :try_start_0
    const-string v0, "TemplateUpdateInterval"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_4d9

    const-string v1, "default_encoding"

    const-string v2, "template_update_delay"

    if-eqz v0, :cond_e

    move-object p1, v2

    goto :goto_17

    .line 3257
    :cond_e
    :try_start_e
    const-string v0, "DefaultEncoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    move-object p1, v1

    .line 3261
    :cond_17
    :goto_17
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4c5

    const-string v0, "defaultEncoding"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    goto/16 :goto_4c5

    .line 3267
    :cond_27
    const-string v0, "localized_lookup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4bd

    const-string v0, "localizedLookup"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_39

    goto/16 :goto_4bd

    .line 3269
    :cond_39
    const-string v0, "strict_syntax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b5

    const-string v0, "strictSyntax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4b

    goto/16 :goto_4b5

    .line 3271
    :cond_4b
    const-string v0, "whitespace_stripping"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4ad

    const-string v0, "whitespaceStripping"

    .line 3272
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5d

    goto/16 :goto_4ad

    .line 3274
    :cond_5d
    const-string v0, "auto_escaping_policy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v1, 0x14

    const/16 v3, 0x16

    const/16 v4, 0x15

    if-nez v0, :cond_472

    const-string v0, "autoEscapingPolicy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    goto/16 :goto_472

    .line 3284
    :cond_75
    const-string v0, "output_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_7b} :catch_4d9

    const-string v5, "default"

    const/4 v6, 0x1

    if-nez v0, :cond_44b

    :try_start_80
    const-string v0, "outputFormat"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8a

    goto/16 :goto_44b

    .line 3294
    :cond_8a
    const-string v0, "registered_custom_output_formats"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f3

    const-string v0, "registeredCustomOutputFormats"

    .line 3295
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9c

    goto/16 :goto_3f3

    .line 3306
    :cond_9c
    const-string v0, "recognize_standard_file_extensions"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3df

    const-string v0, "recognizeStandardFileExtensions"

    .line 3307
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ae

    goto/16 :goto_3df

    .line 3313
    :cond_ae
    const-string v0, "cache_storage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v7, 0x0

    if-nez v0, :cond_35a

    const-string v0, "cacheStorage"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c1

    goto/16 :goto_35a

    .line 3347
    :cond_c1
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x2

    if-nez v0, :cond_2ec

    const-string v0, "templateUpdateDelay"

    .line 3348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d2

    goto/16 :goto_2ec

    .line 3368
    :cond_d2
    const-string v0, "tag_syntax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_d8
    .catch Ljava/lang/Exception; {:try_start_80 .. :try_end_d8} :catch_4d9

    const-string v8, "squareBracket"

    const-string v9, "square_bracket"

    const-string v10, "autoDetect"

    const-string v11, "auto_detect"

    if-nez v0, :cond_2ad

    :try_start_e2
    const-string v0, "tagSyntax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    goto/16 :goto_2ad

    .line 3378
    :cond_ec
    const-string v0, "interpolation_syntax"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_f2} :catch_4d9

    const-string v2, "legacy"

    if-nez v0, :cond_27e

    :try_start_f6
    const-string v0, "interpolationSyntax"

    .line 3379
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_100

    goto/16 :goto_27e

    .line 3389
    :cond_100
    const-string v0, "naming_convention"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_240

    const-string v0, "namingConvention"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_112

    goto/16 :goto_240

    .line 3399
    :cond_112
    const-string v0, "tab_size"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_237

    const-string v0, "tabSize"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_124

    goto/16 :goto_237

    .line 3401
    :cond_124
    const-string v0, "incompatible_improvements"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22d

    const-string v0, "incompatibleImprovements"

    .line 3402
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_136

    goto/16 :goto_22d

    .line 3404
    :cond_136
    const-string v0, "incompatible_enhancements"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_143

    .line 3405
    invoke-virtual {p0, p2}, Lfreemarker/template/Configuration;->setIncompatibleEnhancements(Ljava/lang/String;)V

    goto/16 :goto_4d8

    .line 3406
    :cond_143
    const-string v0, "template_loader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_211

    const-string v0, "templateLoader"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_155

    goto/16 :goto_211

    .line 3413
    :cond_155
    const-string v0, "template_lookup_strategy"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f5

    const-string v0, "templateLookupStrategy"

    .line 3414
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_167

    goto/16 :goto_1f5

    .line 3421
    :cond_167
    const-string v0, "template_name_format"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c7

    const-string v0, "templateNameFormat"

    .line 3422
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_178

    goto :goto_1c7

    .line 3432
    :cond_178
    const-string v0, "template_configurations"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a8

    const-string v0, "templateConfigurations"

    .line 3433
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_189

    goto :goto_1a8

    .line 3440
    :cond_189
    const-string v0, "fallback_on_null_loop_variable"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19f

    const-string v0, "fallbackOnNullLoopVariable"

    .line 3441
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_f6 .. :try_end_197} :catch_4d9

    if-eqz v0, :cond_19a

    goto :goto_19f

    .line 3450
    :cond_19a
    invoke-super {p0, p1, p2}, Lfreemarker/core/Configurable;->setSetting(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4d8

    .line 3442
    :cond_19f
    :goto_19f
    :try_start_19f
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setFallbackOnNullLoopVariable(Z)V

    goto/16 :goto_4d8

    .line 3434
    :cond_1a8
    :goto_1a8
    const-string v0, "null"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b6

    const/4 v0, 0x0

    .line 3435
    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateConfigurations(Lfreemarker/cache/TemplateConfigurationFactory;)V

    goto/16 :goto_4d8

    .line 3437
    :cond_1b6
    const-class v0, Lfreemarker/cache/TemplateConfigurationFactory;

    .line 3438
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 3437
    invoke-static {p2, v0, v7, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/TemplateConfigurationFactory;

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateConfigurations(Lfreemarker/cache/TemplateConfigurationFactory;)V

    goto/16 :goto_4d8

    .line 3423
    :cond_1c7
    :goto_1c7
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d2

    .line 3424
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetTemplateNameFormat()V

    goto/16 :goto_4d8

    .line 3425
    :cond_1d2
    const-string v0, "default_2_3_0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e1

    .line 3426
    sget-object v0, Lfreemarker/cache/TemplateNameFormat;->DEFAULT_2_3_0:Lfreemarker/cache/TemplateNameFormat;

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateNameFormat(Lfreemarker/cache/TemplateNameFormat;)V

    goto/16 :goto_4d8

    .line 3427
    :cond_1e1
    const-string v0, "default_2_4_0"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f0

    .line 3428
    sget-object v0, Lfreemarker/cache/TemplateNameFormat;->DEFAULT_2_4_0:Lfreemarker/cache/TemplateNameFormat;

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateNameFormat(Lfreemarker/cache/TemplateNameFormat;)V

    goto/16 :goto_4d8

    .line 3430
    :cond_1f0
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 3415
    :cond_1f5
    :goto_1f5
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_200

    .line 3416
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetTemplateLookupStrategy()V

    goto/16 :goto_4d8

    .line 3418
    :cond_200
    const-class v0, Lfreemarker/cache/TemplateLookupStrategy;

    .line 3419
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 3418
    invoke-static {p2, v0, v7, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/TemplateLookupStrategy;

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateLookupStrategy(Lfreemarker/cache/TemplateLookupStrategy;)V

    goto/16 :goto_4d8

    .line 3407
    :cond_211
    :goto_211
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21c

    .line 3408
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetTemplateLoader()V

    goto/16 :goto_4d8

    .line 3410
    :cond_21c
    const-class v0, Lfreemarker/cache/TemplateLoader;

    .line 3411
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 3410
    invoke-static {p2, v0, v6, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/TemplateLoader;

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateLoader(Lfreemarker/cache/TemplateLoader;)V

    goto/16 :goto_4d8

    .line 3403
    :cond_22d
    :goto_22d
    new-instance v0, Lfreemarker/template/Version;

    invoke-direct {v0, p2}, Lfreemarker/template/Version;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setIncompatibleImprovements(Lfreemarker/template/Version;)V

    goto/16 :goto_4d8

    .line 3400
    :cond_237
    :goto_237
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTabSize(I)V

    goto/16 :goto_4d8

    .line 3390
    :cond_240
    :goto_240
    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_277

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24d

    goto :goto_277

    .line 3392
    :cond_24d
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25a

    const/16 v0, 0xb

    .line 3393
    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setNamingConvention(I)V

    goto/16 :goto_4d8

    .line 3394
    :cond_25a
    const-string v0, "camel_case"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_270

    const-string v0, "camelCase"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26b

    goto :goto_270

    .line 3397
    :cond_26b
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    :cond_270
    :goto_270
    const/16 v0, 0xc

    .line 3395
    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setNamingConvention(I)V

    goto/16 :goto_4d8

    :cond_277
    :goto_277
    const/16 v0, 0xa

    .line 3391
    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setNamingConvention(I)V

    goto/16 :goto_4d8

    .line 3380
    :cond_27e
    :goto_27e
    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_289

    .line 3381
    invoke-virtual {p0, v1}, Lfreemarker/template/Configuration;->setInterpolationSyntax(I)V

    goto/16 :goto_4d8

    .line 3382
    :cond_289
    const-string v0, "dollar"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_296

    .line 3383
    invoke-virtual {p0, v4}, Lfreemarker/template/Configuration;->setInterpolationSyntax(I)V

    goto/16 :goto_4d8

    .line 3384
    :cond_296
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a8

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a3

    goto :goto_2a8

    .line 3387
    :cond_2a3
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 3385
    :cond_2a8
    :goto_2a8
    invoke-virtual {p0, v3}, Lfreemarker/template/Configuration;->setInterpolationSyntax(I)V

    goto/16 :goto_4d8

    .line 3369
    :cond_2ad
    :goto_2ad
    invoke-virtual {v11, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e7

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2ba

    goto :goto_2e7

    .line 3371
    :cond_2ba
    const-string v0, "angle_bracket"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2e2

    const-string v0, "angleBracket"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2cb

    goto :goto_2e2

    .line 3373
    :cond_2cb
    invoke-virtual {v9, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dd

    invoke-virtual {v8, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d8

    goto :goto_2dd

    .line 3376
    :cond_2d8
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 3374
    :cond_2dd
    :goto_2dd
    invoke-virtual {p0, v2}, Lfreemarker/template/Configuration;->setTagSyntax(I)V

    goto/16 :goto_4d8

    .line 3372
    :cond_2e2
    :goto_2e2
    invoke-virtual {p0, v6}, Lfreemarker/template/Configuration;->setTagSyntax(I)V

    goto/16 :goto_4d8

    .line 3370
    :cond_2e7
    :goto_2e7
    invoke-virtual {p0, v7}, Lfreemarker/template/Configuration;->setTagSyntax(I)V

    goto/16 :goto_4d8

    .line 3351
    :cond_2ec
    :goto_2ec
    const-string v0, "ms"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_304

    .line 3353
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/Configuration;->rightTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x1

    goto :goto_34f

    .line 3354
    :cond_304
    const-string v0, "s"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    const-wide/16 v1, 0x3e8

    if-eqz v0, :cond_31c

    .line 3356
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/Configuration;->rightTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_34f

    .line 3357
    :cond_31c
    const-string v0, "m"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_335

    .line 3359
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/Configuration;->rightTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0xea60

    goto :goto_34f

    .line 3360
    :cond_335
    const-string v0, "h"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_34e

    .line 3362
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v6

    invoke-virtual {p2, v7, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lfreemarker/template/Configuration;->rightTrim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/32 v1, 0x36ee80

    goto :goto_34f

    :cond_34e
    move-object v0, p2

    .line 3367
    :goto_34f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    int-to-long v3, v0

    mul-long/2addr v3, v1

    invoke-virtual {p0, v3, v4}, Lfreemarker/template/Configuration;->setTemplateUpdateDelayMilliseconds(J)V

    goto/16 :goto_4d8

    .line 3314
    :cond_35a
    :goto_35a
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_363

    .line 3315
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetCacheStorage()V

    :cond_363
    const/16 v0, 0x2e

    .line 3316
    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3ce

    const v0, 0x7fffffff

    .line 3320
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 3319
    invoke-static {p2, v0}, Lfreemarker/template/utility/StringUtil;->parseNameValuePairList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 3321
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, v7

    .line 3322
    :goto_380
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3ba

    .line 3323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 3324
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_392
    .catch Ljava/lang/Exception; {:try_start_19f .. :try_end_392} :catch_4d9

    .line 3327
    :try_start_392
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_39c
    .catch Ljava/lang/NumberFormatException; {:try_start_392 .. :try_end_39c} :catch_3b5
    .catch Ljava/lang/Exception; {:try_start_392 .. :try_end_39c} :catch_4d9

    .line 3331
    :try_start_39c
    const-string v4, "soft"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3a6

    move v7, v2

    goto :goto_380

    .line 3333
    :cond_3a6
    const-string v1, "strong"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3b0

    move v1, v2

    goto :goto_380

    .line 3336
    :cond_3b0
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 3329
    :catch_3b5
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    :cond_3ba
    if-nez v7, :cond_3c4

    if-eqz v1, :cond_3bf

    goto :goto_3c4

    .line 3340
    :cond_3bf
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 3342
    :cond_3c4
    :goto_3c4
    new-instance v0, Lfreemarker/cache/MruCacheStorage;

    invoke-direct {v0, v1, v7}, Lfreemarker/cache/MruCacheStorage;-><init>(II)V

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setCacheStorage(Lfreemarker/cache/CacheStorage;)V

    goto/16 :goto_4d8

    .line 3344
    :cond_3ce
    const-class v0, Lfreemarker/cache/CacheStorage;

    .line 3345
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 3344
    invoke-static {p2, v0, v7, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/cache/CacheStorage;

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setCacheStorage(Lfreemarker/cache/CacheStorage;)V

    goto/16 :goto_4d8

    .line 3308
    :cond_3df
    :goto_3df
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3ea

    .line 3309
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetRecognizeStandardFileExtensions()V

    goto/16 :goto_4d8

    .line 3311
    :cond_3ea
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setRecognizeStandardFileExtensions(Z)V

    goto/16 :goto_4d8

    .line 3296
    :cond_3f3
    :goto_3f3
    const-class v0, Ljava/util/List;

    .line 3297
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 3296
    invoke-static {p2, v0, v6, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 3298
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_403
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_446

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 3299
    instance-of v2, v2, Lfreemarker/core/OutputFormat;

    if-eqz v2, :cond_412

    goto :goto_403

    .line 3300
    :cond_412
    new-instance v0, Lfreemarker/core/_MiscTemplateException;

    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getEnvironment()Lfreemarker/core/Environment;

    move-result-object v1

    const-string v2, "Invalid value for setting "

    new-instance v3, Lfreemarker/core/_DelayedJQuote;

    invoke-direct {v3, p1}, Lfreemarker/core/_DelayedJQuote;-><init>(Ljava/lang/Object;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ": List items must be "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lfreemarker/core/OutputFormat;

    .line 3302
    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instances, in: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v2, v3, v4, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Environment;[Ljava/lang/Object;)V

    throw v0

    .line 3305
    :cond_446
    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setRegisteredCustomOutputFormats(Ljava/util/Collection;)V

    goto/16 :goto_4d8

    .line 3285
    :cond_44b
    :goto_44b
    invoke-virtual {p2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_456

    .line 3286
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->unsetOutputFormat()V

    goto/16 :goto_4d8

    .line 3288
    :cond_456
    sget-object v0, Lfreemarker/template/Configuration;->STANDARD_OUTPUT_FORMATS:Ljava/util/Map;

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/OutputFormat;

    if-eqz v0, :cond_461

    goto :goto_46d

    .line 3289
    :cond_461
    const-class v0, Lfreemarker/core/OutputFormat;

    .line 3292
    invoke-static {}, Lfreemarker/core/_SettingEvaluationEnvironment;->getCurrent()Lfreemarker/core/_SettingEvaluationEnvironment;

    move-result-object v1

    .line 3291
    invoke-static {p2, v0, v6, v1}, Lfreemarker/core/_ObjectBuilderSettingEvaluator;->eval(Ljava/lang/String;Ljava/lang/Class;ZLfreemarker/core/_SettingEvaluationEnvironment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfreemarker/core/OutputFormat;

    .line 3289
    :goto_46d
    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setOutputFormat(Lfreemarker/core/OutputFormat;)V

    goto/16 :goto_4d8

    .line 3275
    :cond_472
    :goto_472
    const-string v0, "enable_if_default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a9

    const-string v0, "enableIfDefault"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_483

    goto :goto_4a9

    .line 3277
    :cond_483
    const-string v0, "enable_if_supported"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a5

    const-string v0, "enableIfSupported"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_494

    goto :goto_4a5

    .line 3279
    :cond_494
    const-string v0, "disable"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a0

    .line 3280
    invoke-virtual {p0, v1}, Lfreemarker/template/Configuration;->setAutoEscapingPolicy(I)V

    goto :goto_4d8

    .line 3282
    :cond_4a0
    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->invalidSettingValueException(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/TemplateException;

    move-result-object v0

    throw v0

    .line 3278
    :cond_4a5
    :goto_4a5
    invoke-virtual {p0, v3}, Lfreemarker/template/Configuration;->setAutoEscapingPolicy(I)V

    goto :goto_4d8

    .line 3276
    :cond_4a9
    :goto_4a9
    invoke-virtual {p0, v4}, Lfreemarker/template/Configuration;->setAutoEscapingPolicy(I)V

    goto :goto_4d8

    .line 3273
    :cond_4ad
    :goto_4ad
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setWhitespaceStripping(Z)V

    goto :goto_4d8

    .line 3270
    :cond_4b5
    :goto_4b5
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setStrictSyntaxMode(Z)V

    goto :goto_4d8

    .line 3268
    :cond_4bd
    :goto_4bd
    invoke-static {p2}, Lfreemarker/template/utility/StringUtil;->getYesNo(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setLocalizedLookup(Z)V

    goto :goto_4d8

    .line 3262
    :cond_4c5
    :goto_4c5
    const-string v0, "JVM default"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4d5

    .line 3263
    invoke-static {}, Lfreemarker/template/Configuration;->getJVMDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setDefaultEncoding(Ljava/lang/String;)V

    goto :goto_4d8

    .line 3265
    :cond_4d5
    invoke-virtual {p0, p2}, Lfreemarker/template/Configuration;->setDefaultEncoding(Ljava/lang/String;)V
    :try_end_4d8
    .catch Ljava/lang/Exception; {:try_start_39c .. :try_end_4d8} :catch_4d9

    :goto_4d8
    return-void

    :catch_4d9
    move-exception v0

    .line 3447
    invoke-virtual {p0, p1, p2, v0}, Lfreemarker/template/Configuration;->settingValueAssignmentException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)Lfreemarker/template/TemplateException;

    move-result-object p1

    throw p1
.end method

.method public setSharedVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V
    .registers 4

    .line 2995
    iget-object v0, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_f

    .line 2996
    iget-object p2, p0, Lfreemarker/template/Configuration;->rewrappableSharedVariables:Ljava/util/HashMap;

    if-eqz p2, :cond_f

    .line 2997
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_f
    return-void
.end method

.method public setSharedVariable(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3027
    invoke-virtual {p0}, Lfreemarker/template/Configuration;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-interface {v0, p2}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lfreemarker/template/Configuration;->setSharedVariable(Ljava/lang/String;Lfreemarker/template/TemplateModel;)V

    return-void
.end method

.method public setSharedVariables(Ljava/util/Map;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3053
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lfreemarker/template/Configuration;->rewrappableSharedVariables:Ljava/util/HashMap;

    .line 3054
    iget-object p1, p0, Lfreemarker/template/Configuration;->sharedVariables:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 3055
    invoke-direct {p0}, Lfreemarker/template/Configuration;->setSharedVariablesFromRewrappableSharedVariables()V

    return-void
.end method

.method public setSharedVaribles(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateModelException;
        }
    .end annotation

    .line 3064
    invoke-virtual {p0, p1}, Lfreemarker/template/Configuration;->setSharedVariables(Ljava/util/Map;)V

    return-void
.end method

.method public setStrictSyntaxMode(Z)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1686
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->strictSyntax:Z

    return-void
.end method

.method public setTabSize(I)V
    .registers 5

    const/4 v0, 0x1

    if-lt p1, v0, :cond_1f

    const/16 v0, 0x100

    if-gt p1, v0, :cond_a

    .line 2575
    iput p1, p0, Lfreemarker/template/Configuration;->tabSize:I

    return-void

    .line 2573
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\"tabSize\" can\'t be more than 256, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2569
    :cond_1f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\"tabSize\" must be at least 1, but was "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setTagSyntax(I)V
    .registers 2

    .line 2449
    invoke-static {p1}, Lfreemarker/template/_TemplateAPI;->valideTagSyntaxValue(I)V

    .line 2450
    iput p1, p0, Lfreemarker/template/Configuration;->tagSyntax:I

    return-void
.end method

.method public setTemplateConfigurations(Lfreemarker/cache/TemplateConfigurationFactory;)V
    .registers 9

    .line 1447
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;

    move-result-object v0

    if-eq v0, p1, :cond_2a

    if-eqz p1, :cond_d

    .line 1449
    invoke-virtual {p1, p0}, Lfreemarker/cache/TemplateConfigurationFactory;->setConfiguration(Lfreemarker/template/Configuration;)V

    .line 1451
    :cond_d
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1452
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v5

    move-object v1, p0

    move-object v6, p1

    .line 1451
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/Configuration;->recreateTemplateCacheWith(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;)V

    :cond_2a
    return-void
.end method

.method public setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V
    .registers 2

    .line 1794
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    const/4 p1, 0x1

    .line 1795
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->templateExceptionHandlerExplicitlySet:Z

    return-void
.end method

.method public setTemplateLoader(Lfreemarker/cache/TemplateLoader;)V
    .registers 9

    .line 1292
    monitor-enter p0

    .line 1293
    :try_start_1
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    if-eq v0, p1, :cond_26

    .line 1294
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1295
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v5

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1296
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;

    move-result-object v6

    move-object v1, p0

    move-object v2, p1

    .line 1294
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/Configuration;->recreateTemplateCacheWith(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;)V

    :cond_26
    const/4 p1, 0x1

    .line 1298
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->templateLoaderExplicitlySet:Z

    .line 1299
    monitor-exit p0

    return-void

    :catchall_2b
    move-exception p1

    monitor-exit p0
    :try_end_2d
    .catchall {:try_start_1 .. :try_end_2d} :catchall_2b

    throw p1
.end method

.method public setTemplateLookupStrategy(Lfreemarker/cache/TemplateLookupStrategy;)V
    .registers 9

    .line 1342
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v0

    if-eq v0, p1, :cond_25

    .line 1343
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1344
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v5

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1345
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;

    move-result-object v6

    move-object v1, p0

    move-object v4, p1

    .line 1343
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/Configuration;->recreateTemplateCacheWith(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;)V

    :cond_25
    const/4 p1, 0x1

    .line 1347
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->templateLookupStrategyExplicitlySet:Z

    return-void
.end method

.method public setTemplateNameFormat(Lfreemarker/cache/TemplateNameFormat;)V
    .registers 9

    .line 1391
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v0

    if-eq v0, p1, :cond_25

    .line 1392
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v2

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v3

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1393
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v4

    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    .line 1394
    invoke-virtual {v0}, Lfreemarker/cache/TemplateCache;->getTemplateConfigurations()Lfreemarker/cache/TemplateConfigurationFactory;

    move-result-object v6

    move-object v1, p0

    move-object v5, p1

    .line 1392
    invoke-direct/range {v1 .. v6}, Lfreemarker/template/Configuration;->recreateTemplateCacheWith(Lfreemarker/cache/TemplateLoader;Lfreemarker/cache/CacheStorage;Lfreemarker/cache/TemplateLookupStrategy;Lfreemarker/cache/TemplateNameFormat;Lfreemarker/cache/TemplateConfigurationFactory;)V

    :cond_25
    const/4 p1, 0x1

    .line 1396
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->templateNameFormatExplicitlySet:Z

    return-void
.end method

.method public setTemplateUpdateDelay(I)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1642
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    const-wide/16 v1, 0x3e8

    int-to-long v3, p1

    mul-long/2addr v3, v1

    invoke-virtual {v0, v3, v4}, Lfreemarker/cache/TemplateCache;->setDelay(J)V

    return-void
.end method

.method public setTemplateUpdateDelayMilliseconds(J)V
    .registers 4

    .line 1660
    iget-object v0, p0, Lfreemarker/template/Configuration;->cache:Lfreemarker/cache/TemplateCache;

    invoke-virtual {v0, p1, p2}, Lfreemarker/cache/TemplateCache;->setDelay(J)V

    return-void
.end method

.method public setTimeZone(Ljava/util/TimeZone;)V
    .registers 2

    .line 1762
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 p1, 0x1

    .line 1763
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->timeZoneExplicitlySet:Z

    return-void
.end method

.method public setWhitespaceStripping(Z)V
    .registers 2

    .line 2036
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->whitespaceStripping:Z

    return-void
.end method

.method public setWrapUncheckedExceptions(Z)V
    .registers 2

    .line 1893
    invoke-super {p0, p1}, Lfreemarker/core/Configurable;->setWrapUncheckedExceptions(Z)V

    const/4 p1, 0x1

    .line 1894
    iput-boolean p1, p0, Lfreemarker/template/Configuration;->wrapUncheckedExceptionsExplicitlySet:Z

    return-void
.end method

.method public unsetAttemptExceptionReporter()V
    .registers 2

    .line 1836
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->attemptExceptionReporterExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1837
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultAttemptExceptionReporter()Lfreemarker/template/AttemptExceptionReporter;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setAttemptExceptionReporter(Lfreemarker/template/AttemptExceptionReporter;)V

    const/4 v0, 0x0

    .line 1838
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->attemptExceptionReporterExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetCacheStorage()V
    .registers 2

    .line 1499
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->cacheStorageExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1500
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultCacheStorage()Lfreemarker/cache/CacheStorage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setCacheStorage(Lfreemarker/cache/CacheStorage;)V

    const/4 v0, 0x0

    .line 1501
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->cacheStorageExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetDefaultEncoding()V
    .registers 2

    .line 2905
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->defaultEncodingExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 2906
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultDefaultEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setDefaultEncoding(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 2907
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->defaultEncodingExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetLocale()V
    .registers 2

    .line 1740
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->localeExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1741
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setLocale(Ljava/util/Locale;)V

    const/4 v0, 0x0

    .line 1742
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->localeExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetLogTemplateExceptions()V
    .registers 2

    .line 1871
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->logTemplateExceptionsExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1872
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultLogTemplateExceptions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setLogTemplateExceptions(Z)V

    const/4 v0, 0x0

    .line 1873
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->logTemplateExceptionsExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetObjectWrapper()V
    .registers 2

    .line 1713
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->objectWrapperExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1714
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setObjectWrapper(Lfreemarker/template/ObjectWrapper;)V

    const/4 v0, 0x0

    .line 1715
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->objectWrapperExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetOutputFormat()V
    .registers 2

    .line 2182
    sget-object v0, Lfreemarker/core/UndefinedOutputFormat;->INSTANCE:Lfreemarker/core/UndefinedOutputFormat;

    iput-object v0, p0, Lfreemarker/template/Configuration;->outputFormat:Lfreemarker/core/OutputFormat;

    const/4 v0, 0x0

    .line 2183
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->outputFormatExplicitlySet:Z

    return-void
.end method

.method public unsetRecognizeStandardFileExtensions()V
    .registers 2

    .line 2393
    iget-object v0, p0, Lfreemarker/template/Configuration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    .line 2394
    iput-object v0, p0, Lfreemarker/template/Configuration;->recognizeStandardFileExtensions:Ljava/lang/Boolean;

    :cond_7
    return-void
.end method

.method public unsetTemplateExceptionHandler()V
    .registers 2

    .line 1806
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->templateExceptionHandlerExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1807
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateExceptionHandler()Lfreemarker/template/TemplateExceptionHandler;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateExceptionHandler(Lfreemarker/template/TemplateExceptionHandler;)V

    const/4 v0, 0x0

    .line 1808
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->templateExceptionHandlerExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetTemplateLoader()V
    .registers 2

    .line 1310
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->templateLoaderExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1311
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateLoader()Lfreemarker/cache/TemplateLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateLoader(Lfreemarker/cache/TemplateLoader;)V

    const/4 v0, 0x0

    .line 1312
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->templateLoaderExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetTemplateLookupStrategy()V
    .registers 2

    .line 1358
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->templateLookupStrategyExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1359
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateLookupStrategy()Lfreemarker/cache/TemplateLookupStrategy;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateLookupStrategy(Lfreemarker/cache/TemplateLookupStrategy;)V

    const/4 v0, 0x0

    .line 1360
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->templateLookupStrategyExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetTemplateNameFormat()V
    .registers 2

    .line 1407
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->templateNameFormatExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1408
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultTemplateNameFormat()Lfreemarker/cache/TemplateNameFormat;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTemplateNameFormat(Lfreemarker/cache/TemplateNameFormat;)V

    const/4 v0, 0x0

    .line 1409
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->templateNameFormatExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetTimeZone()V
    .registers 2

    .line 1772
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->timeZoneExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1773
    invoke-static {}, Lfreemarker/template/Configuration;->getDefaultTimeZone()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setTimeZone(Ljava/util/TimeZone;)V

    const/4 v0, 0x0

    .line 1774
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->timeZoneExplicitlySet:Z

    :cond_e
    return-void
.end method

.method public unsetWrapUncheckedExceptions()V
    .registers 2

    .line 1901
    iget-boolean v0, p0, Lfreemarker/template/Configuration;->wrapUncheckedExceptionsExplicitlySet:Z

    if-eqz v0, :cond_e

    .line 1902
    invoke-direct {p0}, Lfreemarker/template/Configuration;->getDefaultWrapUncheckedExceptions()Z

    move-result v0

    invoke-virtual {p0, v0}, Lfreemarker/template/Configuration;->setWrapUncheckedExceptions(Z)V

    const/4 v0, 0x0

    .line 1903
    iput-boolean v0, p0, Lfreemarker/template/Configuration;->wrapUncheckedExceptionsExplicitlySet:Z

    :cond_e
    return-void
.end method
