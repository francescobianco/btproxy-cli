.class final Lfreemarker/core/BuiltinVariable;
.super Lfreemarker/core/Expression;
.source "BuiltinVariable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/core/BuiltinVariable$VarsHash;
    }
.end annotation


# static fields
.field static final AUTO_ESC:Ljava/lang/String; = "auto_esc"

.field static final AUTO_ESC_CC:Ljava/lang/String; = "autoEsc"

.field static final CALLER_TEMPLATE_NAME:Ljava/lang/String; = "caller_template_name"

.field static final CALLER_TEMPLATE_NAME_CC:Ljava/lang/String; = "callerTemplateName"

.field static final CURRENT_NODE:Ljava/lang/String; = "current_node"

.field static final CURRENT_NODE_CC:Ljava/lang/String; = "currentNode"

.field static final CURRENT_TEMPLATE_NAME:Ljava/lang/String; = "current_template_name"

.field static final CURRENT_TEMPLATE_NAME_CC:Ljava/lang/String; = "currentTemplateName"

.field static final DATA_MODEL:Ljava/lang/String; = "data_model"

.field static final DATA_MODEL_CC:Ljava/lang/String; = "dataModel"

.field static final ERROR:Ljava/lang/String; = "error"

.field static final GET_OPTIONAL_TEMPLATE:Ljava/lang/String; = "get_optional_template"

.field static final GET_OPTIONAL_TEMPLATE_CC:Ljava/lang/String; = "getOptionalTemplate"

.field static final GLOBALS:Ljava/lang/String; = "globals"

.field static final INCOMPATIBLE_IMPROVEMENTS:Ljava/lang/String; = "incompatible_improvements"

.field static final INCOMPATIBLE_IMPROVEMENTS_CC:Ljava/lang/String; = "incompatibleImprovements"

.field static final LANG:Ljava/lang/String; = "lang"

.field static final LOCALE:Ljava/lang/String; = "locale"

.field static final LOCALE_OBJECT:Ljava/lang/String; = "locale_object"

.field static final LOCALE_OBJECT_CC:Ljava/lang/String; = "localeObject"

.field static final LOCALS:Ljava/lang/String; = "locals"

.field static final MAIN:Ljava/lang/String; = "main"

.field static final MAIN_TEMPLATE_NAME:Ljava/lang/String; = "main_template_name"

.field static final MAIN_TEMPLATE_NAME_CC:Ljava/lang/String; = "mainTemplateName"

.field static final NAMESPACE:Ljava/lang/String; = "namespace"

.field static final NODE:Ljava/lang/String; = "node"

.field static final NOW:Ljava/lang/String; = "now"

.field static final OUTPUT_ENCODING:Ljava/lang/String; = "output_encoding"

.field static final OUTPUT_ENCODING_CC:Ljava/lang/String; = "outputEncoding"

.field static final OUTPUT_FORMAT:Ljava/lang/String; = "output_format"

.field static final OUTPUT_FORMAT_CC:Ljava/lang/String; = "outputFormat"

.field static final PASS:Ljava/lang/String; = "pass"

.field static final SPEC_VAR_NAMES:[Ljava/lang/String;

.field static final TEMPLATE_NAME:Ljava/lang/String; = "template_name"

.field static final TEMPLATE_NAME_CC:Ljava/lang/String; = "templateName"

.field static final URL_ESCAPING_CHARSET:Ljava/lang/String; = "url_escaping_charset"

.field static final URL_ESCAPING_CHARSET_CC:Ljava/lang/String; = "urlEscapingCharset"

.field static final VARS:Ljava/lang/String; = "vars"

.field static final VERSION:Ljava/lang/String; = "version"


# instance fields
.field private final name:Ljava/lang/String;

.field private final parseTimeValue:Lfreemarker/template/TemplateModel;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0x26

    .line 81
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "autoEsc"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "auto_esc"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "callerTemplateName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "caller_template_name"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "currentNode"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "currentTemplateName"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "current_node"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "current_template_name"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "dataModel"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "data_model"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "error"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "getOptionalTemplate"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "get_optional_template"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "globals"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "incompatibleImprovements"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "incompatible_improvements"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "lang"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "locale"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "localeObject"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "locale_object"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "locals"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "main"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "mainTemplateName"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "main_template_name"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "namespace"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "node"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "now"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "outputEncoding"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "outputFormat"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "output_encoding"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "output_format"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "pass"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "templateName"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "template_name"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "urlEscapingCharset"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "url_escaping_charset"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "vars"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "version"

    aput-object v2, v0, v1

    sput-object v0, Lfreemarker/core/BuiltinVariable;->SPEC_VAR_NAMES:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lfreemarker/core/Token;Lfreemarker/core/FMParserTokenManager;Lfreemarker/template/TemplateModel;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/core/ParseException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Lfreemarker/core/Expression;-><init>()V

    .line 128
    iget-object v0, p1, Lfreemarker/core/Token;->image:Ljava/lang/String;

    .line 129
    iput-object p3, p0, Lfreemarker/core/BuiltinVariable;->parseTimeValue:Lfreemarker/template/TemplateModel;

    .line 130
    sget-object p3, Lfreemarker/core/BuiltinVariable;->SPEC_VAR_NAMES:[Ljava/lang/String;

    invoke-static {p3, v0}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p3

    if-gez p3, :cond_a6

    .line 131
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v1, "Unknown special variable name: "

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 133
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget p2, p2, Lfreemarker/core/FMParserTokenManager;->namingConvention:I

    const/16 v1, 0xa

    const/16 v3, 0xb

    if-eq p2, v1, :cond_2c

    goto :goto_2d

    :cond_2c
    move p2, v3

    .line 144
    :goto_2d
    const-string v1, "auto_escape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_5d

    const-string v1, "auto_escaping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5d

    const-string v1, "autoesc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_47

    goto :goto_5d

    .line 146
    :cond_47
    const-string v1, "autoEscape"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5a

    const-string v1, "autoEscaping"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    goto :goto_5a

    :cond_58
    move-object v0, v4

    goto :goto_5f

    .line 147
    :cond_5a
    :goto_5a
    const-string v0, "autoEsc"

    goto :goto_5f

    .line 145
    :cond_5d
    :goto_5d
    const-string v0, "auto_esc"

    :goto_5f
    if-eqz v0, :cond_71

    .line 152
    const-string v1, " You may meant: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-static {v0}, Lfreemarker/template/utility/StringUtil;->jQuote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    :cond_71
    const-string v0, "\nThe allowed special variable names are: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v2, v0

    .line 159
    :goto_79
    sget-object v5, Lfreemarker/core/BuiltinVariable;->SPEC_VAR_NAMES:[Ljava/lang/String;

    array-length v6, v5

    if-ge v2, v6, :cond_9c

    .line 160
    aget-object v5, v5, v2

    .line 161
    invoke-static {v5}, Lfreemarker/core/_CoreStringUtils;->getIdentifierNamingConvention(Ljava/lang/String;)I

    move-result v6

    const/16 v7, 0xc

    if-ne p2, v7, :cond_8b

    if-eq v6, v3, :cond_99

    goto :goto_8d

    :cond_8b
    if-eq v6, v7, :cond_99

    :goto_8d
    if-eqz v1, :cond_91

    move v1, v0

    goto :goto_96

    .line 168
    :cond_91
    const-string v6, ", "

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    :goto_96
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    add-int/lit8 v2, v2, 0x1

    goto :goto_79

    .line 173
    :cond_9c
    new-instance p2, Lfreemarker/core/ParseException;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, v4, p1}, Lfreemarker/core/ParseException;-><init>(Ljava/lang/String;Lfreemarker/template/Template;Lfreemarker/core/Token;)V

    throw p2

    .line 176
    :cond_a6
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lfreemarker/core/BuiltinVariable;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method _eval(Lfreemarker/core/Environment;)Lfreemarker/template/TemplateModel;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lfreemarker/template/TemplateException;
        }
    .end annotation

    .line 181
    iget-object v0, p0, Lfreemarker/core/BuiltinVariable;->parseTimeValue:Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_5

    return-object v0

    .line 184
    :cond_5
    iget-object v0, p0, Lfreemarker/core/BuiltinVariable;->name:Ljava/lang/String;

    const-string v1, "namespace"

    if-ne v0, v1, :cond_10

    .line 185
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCurrentNamespace()Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    return-object p1

    .line 187
    :cond_10
    const-string v1, "main"

    if-ne v0, v1, :cond_19

    .line 188
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getMainNamespace()Lfreemarker/core/Environment$Namespace;

    move-result-object p1

    return-object p1

    .line 190
    :cond_19
    const-string v1, "globals"

    if-ne v0, v1, :cond_22

    .line 191
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getGlobalVariables()Lfreemarker/template/TemplateHashModel;

    move-result-object p1

    return-object p1

    .line 193
    :cond_22
    const-string v1, "locals"

    const/4 v2, 0x0

    if-ne v0, v1, :cond_33

    .line 194
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCurrentMacroContext()Lfreemarker/core/Macro$Context;

    move-result-object p1

    if-nez p1, :cond_2e

    goto :goto_32

    .line 195
    :cond_2e
    invoke-virtual {p1}, Lfreemarker/core/Macro$Context;->getLocals()Lfreemarker/core/Environment$Namespace;

    move-result-object v2

    :goto_32
    return-object v2

    .line 197
    :cond_33
    const-string v1, "data_model"

    if-eq v0, v1, :cond_1cc

    const-string v1, "dataModel"

    if-ne v0, v1, :cond_3d

    goto/16 :goto_1cc

    .line 200
    :cond_3d
    const-string v1, "vars"

    if-ne v0, v1, :cond_47

    .line 201
    new-instance v0, Lfreemarker/core/BuiltinVariable$VarsHash;

    invoke-direct {v0, p1}, Lfreemarker/core/BuiltinVariable$VarsHash;-><init>(Lfreemarker/core/Environment;)V

    return-object v0

    .line 203
    :cond_47
    const-string v1, "locale"

    if-ne v0, v1, :cond_59

    .line 204
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 206
    :cond_59
    const-string v1, "locale_object"

    if-eq v0, v1, :cond_1bf

    const-string v1, "localeObject"

    if-ne v0, v1, :cond_63

    goto/16 :goto_1bf

    .line 209
    :cond_63
    const-string v1, "lang"

    if-ne v0, v1, :cond_75

    .line 210
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 212
    :cond_75
    const-string v1, "current_node"

    if-eq v0, v1, :cond_1ba

    const-string v1, "node"

    if-eq v0, v1, :cond_1ba

    const-string v1, "currentNode"

    if-ne v0, v1, :cond_83

    goto/16 :goto_1ba

    .line 215
    :cond_83
    const-string v1, "template_name"

    if-eq v0, v1, :cond_18e

    const-string v1, "templateName"

    if-ne v0, v1, :cond_8d

    goto/16 :goto_18e

    .line 223
    :cond_8d
    const-string v1, "main_template_name"

    if-eq v0, v1, :cond_181

    const-string v1, "mainTemplateName"

    if-ne v0, v1, :cond_97

    goto/16 :goto_181

    .line 226
    :cond_97
    const-string v1, "current_template_name"

    if-eq v0, v1, :cond_174

    const-string v1, "currentTemplateName"

    if-ne v0, v1, :cond_a1

    goto/16 :goto_174

    .line 229
    :cond_a1
    const-string v1, "pass"

    if-ne v0, v1, :cond_a8

    .line 230
    sget-object p1, Lfreemarker/core/Macro;->DO_NOTHING_MACRO:Lfreemarker/core/Macro;

    return-object p1

    .line 232
    :cond_a8
    const-string v1, "output_encoding"

    if-eq v0, v1, :cond_16b

    const-string v1, "outputEncoding"

    if-ne v0, v1, :cond_b2

    goto/16 :goto_16b

    .line 236
    :cond_b2
    const-string v1, "url_escaping_charset"

    if-eq v0, v1, :cond_162

    const-string v1, "urlEscapingCharset"

    if-ne v0, v1, :cond_bc

    goto/16 :goto_162

    .line 240
    :cond_bc
    const-string v1, "error"

    if-ne v0, v1, :cond_ca

    .line 241
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCurrentRecoveredErrorMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 243
    :cond_ca
    const-string v1, "now"

    if-ne v0, v1, :cond_da

    .line 244
    new-instance p1, Lfreemarker/template/SimpleDate;

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    const/4 v1, 0x3

    invoke-direct {p1, v0, v1}, Lfreemarker/template/SimpleDate;-><init>(Ljava/util/Date;I)V

    return-object p1

    .line 246
    :cond_da
    const-string v1, "version"

    if-ne v0, v1, :cond_e8

    .line 247
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-static {}, Lfreemarker/template/Configuration;->getVersionNumber()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 249
    :cond_e8
    const-string v1, "incompatible_improvements"

    if-eq v0, v1, :cond_150

    const-string v1, "incompatibleImprovements"

    if-ne v0, v1, :cond_f1

    goto :goto_150

    .line 252
    :cond_f1
    const-string v1, "get_optional_template"

    if-ne v0, v1, :cond_f8

    .line 253
    sget-object p1, Lfreemarker/core/GetOptionalTemplateMethod;->INSTANCE:Lfreemarker/core/GetOptionalTemplateMethod;

    return-object p1

    .line 255
    :cond_f8
    const-string v1, "getOptionalTemplate"

    if-ne v0, v1, :cond_ff

    .line 256
    sget-object p1, Lfreemarker/core/GetOptionalTemplateMethod;->INSTANCE_CC:Lfreemarker/core/GetOptionalTemplateMethod;

    return-object p1

    .line 258
    :cond_ff
    const-string v1, "caller_template_name"

    if-eq v0, v1, :cond_116

    const-string v1, "callerTemplateName"

    if-ne v0, v1, :cond_108

    goto :goto_116

    .line 270
    :cond_108
    new-instance p1, Lfreemarker/core/_MiscTemplateException;

    const-string v0, "Invalid special variable: "

    iget-object v1, p0, Lfreemarker/core/BuiltinVariable;->name:Ljava/lang/String;

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lfreemarker/core/_MiscTemplateException;-><init>(Lfreemarker/core/Expression;[Ljava/lang/Object;)V

    throw p1

    .line 259
    :cond_116
    :goto_116
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCurrentMacroContext()Lfreemarker/core/Macro$Context;

    move-result-object v0

    if-eqz v0, :cond_133

    .line 265
    iget-object p1, v0, Lfreemarker/core/Macro$Context;->callPlace:Lfreemarker/core/TemplateObject;

    if-eqz p1, :cond_128

    .line 266
    invoke-virtual {p1}, Lfreemarker/core/TemplateObject;->getTemplate()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object v2

    :cond_128
    if-eqz v2, :cond_130

    .line 267
    new-instance p1, Lfreemarker/template/SimpleScalar;

    invoke-direct {p1, v2}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    goto :goto_132

    :cond_130
    sget-object p1, Lfreemarker/template/TemplateScalarModel;->EMPTY_STRING:Lfreemarker/template/TemplateModel;

    :goto_132
    return-object p1

    .line 261
    :cond_133
    new-instance v0, Lfreemarker/template/TemplateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Can\'t get ."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/core/BuiltinVariable;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " here, as there\'s no macro or function (that\'s implemented in the template) call in context."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lfreemarker/template/TemplateException;-><init>(Ljava/lang/String;Lfreemarker/core/Environment;)V

    throw v0

    .line 250
    :cond_150
    :goto_150
    new-instance v0, Lfreemarker/template/SimpleScalar;

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Version;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 237
    :cond_162
    :goto_162
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getURLEscapingCharset()Ljava/lang/String;

    move-result-object p1

    .line 238
    invoke-static {p1}, Lfreemarker/template/SimpleScalar;->newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;

    move-result-object p1

    return-object p1

    .line 233
    :cond_16b
    :goto_16b
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getOutputEncoding()Ljava/lang/String;

    move-result-object p1

    .line 234
    invoke-static {p1}, Lfreemarker/template/SimpleScalar;->newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;

    move-result-object p1

    return-object p1

    .line 227
    :cond_174
    :goto_174
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCurrentTemplate()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/SimpleScalar;->newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;

    move-result-object p1

    return-object p1

    .line 224
    :cond_181
    :goto_181
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getMainTemplate()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lfreemarker/template/SimpleScalar;->newInstanceOrNull(Ljava/lang/String;)Lfreemarker/template/SimpleScalar;

    move-result-object p1

    return-object p1

    .line 219
    :cond_18e
    :goto_18e
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getConfiguration()Lfreemarker/template/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Configuration;->getIncompatibleImprovements()Lfreemarker/template/Version;

    move-result-object v0

    invoke-virtual {v0}, Lfreemarker/template/Version;->intValue()I

    move-result v0

    sget v1, Lfreemarker/template/_TemplateAPI;->VERSION_INT_2_3_23:I

    if-lt v0, v1, :cond_1ac

    new-instance v0, Lfreemarker/template/SimpleScalar;

    .line 220
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getTemplate230()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    goto :goto_1b9

    :cond_1ac
    new-instance v0, Lfreemarker/template/SimpleScalar;

    .line 221
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getTemplate()Lfreemarker/template/Template;

    move-result-object p1

    invoke-virtual {p1}, Lfreemarker/template/Template;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    :goto_1b9
    return-object v0

    .line 213
    :cond_1ba
    :goto_1ba
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getCurrentVisitorNode()Lfreemarker/template/TemplateNodeModel;

    move-result-object p1

    return-object p1

    .line 207
    :cond_1bf
    :goto_1bf
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getObjectWrapper()Lfreemarker/template/ObjectWrapper;

    move-result-object v0

    invoke-virtual {p1}, Lfreemarker/core/Environment;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-interface {v0, p1}, Lfreemarker/template/ObjectWrapper;->wrap(Ljava/lang/Object;)Lfreemarker/template/TemplateModel;

    move-result-object p1

    return-object p1

    .line 198
    :cond_1cc
    :goto_1cc
    invoke-virtual {p1}, Lfreemarker/core/Environment;->getDataModel()Lfreemarker/template/TemplateHashModel;

    move-result-object p1

    return-object p1
.end method

.method protected deepCloneWithIdentifierReplaced_inner(Ljava/lang/String;Lfreemarker/core/Expression;Lfreemarker/core/Expression$ReplacemenetState;)Lfreemarker/core/Expression;
    .registers 4

    return-object p0
.end method

.method public getCanonicalForm()Ljava/lang/String;
    .registers 3

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/core/BuiltinVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getNodeTypeSymbol()Ljava/lang/String;
    .registers 2

    .line 286
    invoke-virtual {p0}, Lfreemarker/core/BuiltinVariable;->getCanonicalForm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getParameterCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method getParameterRole(I)Lfreemarker/core/ParameterRole;
    .registers 2

    .line 329
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method getParameterValue(I)Ljava/lang/Object;
    .registers 2

    .line 324
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method isLiteral()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lfreemarker/core/BuiltinVariable;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
