.class public Lfreemarker/ext/dom/Transform;
.super Ljava/lang/Object;
.source "Transform.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private cfg:Lfreemarker/template/Configuration;

.field private encoding:Ljava/lang/String;

.field private ftlFile:Ljava/io/File;

.field private inputFile:Ljava/io/File;

.field private locale:Ljava/util/Locale;

.field private outputFile:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/Locale;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_b

    .line 78
    const-string p5, "file.encoding"

    invoke-static {p5}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    :cond_b
    if-nez p4, :cond_11

    .line 81
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    .line 83
    :cond_11
    iput-object p5, p0, Lfreemarker/ext/dom/Transform;->encoding:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lfreemarker/ext/dom/Transform;->locale:Ljava/util/Locale;

    .line 85
    iput-object p1, p0, Lfreemarker/ext/dom/Transform;->inputFile:Ljava/io/File;

    .line 86
    iput-object p2, p0, Lfreemarker/ext/dom/Transform;->ftlFile:Ljava/io/File;

    .line 87
    iput-object p3, p0, Lfreemarker/ext/dom/Transform;->outputFile:Ljava/io/File;

    .line 88
    invoke-virtual {p2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    .line 89
    new-instance p2, Lfreemarker/template/Configuration;

    invoke-direct {p2}, Lfreemarker/template/Configuration;-><init>()V

    iput-object p2, p0, Lfreemarker/ext/dom/Transform;->cfg:Lfreemarker/template/Configuration;

    .line 90
    invoke-virtual {p2, p1}, Lfreemarker/template/Configuration;->setDirectoryForTemplateLoading(Ljava/io/File;)V

    return-void
.end method

.method static localeFromString(Ljava/lang/String;)Ljava/util/Locale;
    .registers 5

    .line 188
    const-string v0, ""

    if-nez p0, :cond_5

    move-object p0, v0

    .line 190
    :cond_5
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, "_-,"

    invoke-direct {v1, p0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p0

    if-eqz p0, :cond_34

    .line 192
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p0

    .line 193
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 194
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 195
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v3

    if-eqz v3, :cond_2a

    .line 196
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    :cond_2a
    move-object v1, v0

    move-object v0, v2

    goto :goto_2e

    :cond_2d
    move-object v1, v0

    .line 199
    :goto_2e
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p0, v0, v1}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 201
    :cond_34
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public static main([Ljava/lang/String;)V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 54
    :try_start_0
    invoke-static {p0}, Lfreemarker/ext/dom/Transform;->transformFromArgs([Ljava/lang/String;)Lfreemarker/ext/dom/Transform;

    move-result-object p0

    .line 55
    invoke-virtual {p0}, Lfreemarker/ext/dom/Transform;->transform()V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_7} :catch_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8

    goto :goto_1a

    :catch_8
    move-exception p0

    .line 60
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1a

    :catch_d
    move-exception p0

    .line 57
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lfreemarker/ext/dom/Transform;->usage()V

    :goto_1a
    return-void
.end method

.method static transformFromArgs([Ljava/lang/String;)Lfreemarker/ext/dom/Transform;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, v1

    move-object v3, v2

    move-object v4, v3

    move-object v5, v4

    move-object v11, v5

    .line 116
    :goto_7
    array-length v6, p0

    if-ge v0, v6, :cond_96

    add-int/lit8 v6, v0, 0x1

    .line 117
    aget-object v7, p0, v0

    .line 118
    array-length v8, p0

    if-ge v6, v8, :cond_8e

    add-int/lit8 v0, v0, 0x2

    .line 121
    aget-object v6, p0, v6

    .line 122
    const-string v8, "-in"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    if-nez v2, :cond_21

    move-object v2, v6

    goto :goto_7

    .line 124
    :cond_21
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The input file should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 127
    :cond_29
    const-string v8, "-ftl"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3d

    if-nez v3, :cond_35

    move-object v3, v6

    goto :goto_7

    .line 129
    :cond_35
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The ftl file should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 132
    :cond_3d
    const-string v8, "-out"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_51

    if-nez v4, :cond_49

    move-object v4, v6

    goto :goto_7

    .line 134
    :cond_49
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The output file should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 137
    :cond_51
    const-string v8, "-locale"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_65

    if-nez v5, :cond_5d

    move-object v5, v6

    goto :goto_7

    .line 139
    :cond_5d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The locale should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 142
    :cond_65
    const-string v8, "-encoding"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_79

    if-nez v11, :cond_71

    move-object v11, v6

    goto :goto_7

    .line 144
    :cond_71
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "The encoding should only be specified once"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_79
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown input argument: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 119
    :cond_8e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_96
    if-eqz v2, :cond_170

    if-eqz v3, :cond_168

    .line 157
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v7

    .line 158
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v8

    .line 159
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_153

    .line 162
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_13e

    .line 165
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_129

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_129

    .line 168
    invoke-virtual {v8}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_114

    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result p0

    if-eqz p0, :cond_114

    if-eqz v4, :cond_101

    .line 173
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    .line 175
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_ec

    invoke-virtual {p0}, Ljava/io/File;->canWrite()Z

    move-result v0

    if-eqz v0, :cond_ec

    goto :goto_101

    .line 176
    :cond_ec
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "The output directory must exist and be writable: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_101
    :goto_101
    move-object v9, v1

    .line 180
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    if-eqz v5, :cond_10c

    .line 182
    invoke-static {v5}, Lfreemarker/ext/dom/Transform;->localeFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    :cond_10c
    move-object v10, p0

    .line 184
    new-instance p0, Lfreemarker/ext/dom/Transform;

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lfreemarker/ext/dom/Transform;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;Ljava/util/Locale;Ljava/lang/String;)V

    return-object p0

    .line 169
    :cond_114
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FTL file must be a readable file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 166
    :cond_129
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input file must be a readable file: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 163
    :cond_13e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FTL file does not exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 160
    :cond_153
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Input file does not exist: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 155
    :cond_168
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No ftl file specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 152
    :cond_170
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "No input file specified."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static usage()V
    .registers 2

    .line 206
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Usage: java freemarker.ext.dom.Transform -in <xmlfile> -ftl <ftlfile> [-out <outfile>] [-locale <locale>] [-encoding <encoding>]"

    .line 207
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 209
    invoke-static {}, Lfreemarker/core/Environment;->getCurrentEnvironment()Lfreemarker/core/Environment;

    move-result-object v0

    if-nez v0, :cond_11

    const/4 v0, -0x1

    .line 210
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    :cond_11
    return-void
.end method


# virtual methods
.method transform()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lfreemarker/ext/dom/Transform;->ftlFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 98
    iget-object v1, p0, Lfreemarker/ext/dom/Transform;->cfg:Lfreemarker/template/Configuration;

    iget-object v2, p0, Lfreemarker/ext/dom/Transform;->locale:Ljava/util/Locale;

    invoke-virtual {v1, v0, v2}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/util/Locale;)Lfreemarker/template/Template;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lfreemarker/ext/dom/Transform;->inputFile:Ljava/io/File;

    invoke-static {v1}, Lfreemarker/ext/dom/NodeModel;->parse(Ljava/io/File;)Lfreemarker/ext/dom/NodeModel;

    move-result-object v1

    .line 100
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    .line 101
    iget-object v3, p0, Lfreemarker/ext/dom/Transform;->outputFile:Ljava/io/File;

    if-eqz v3, :cond_21

    .line 102
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lfreemarker/ext/dom/Transform;->outputFile:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 104
    :cond_21
    new-instance v3, Ljava/io/OutputStreamWriter;

    iget-object v4, p0, Lfreemarker/ext/dom/Transform;->encoding:Ljava/lang/String;

    invoke-direct {v3, v2, v4}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 106
    :try_start_29
    invoke-virtual {v0, v2, v3, v2, v1}, Lfreemarker/template/Template;->process(Ljava/lang/Object;Ljava/io/Writer;Lfreemarker/template/ObjectWrapper;Lfreemarker/template/TemplateNodeModel;)V
    :try_end_2c
    .catchall {:try_start_29 .. :try_end_2c} :catchall_34

    .line 108
    iget-object v0, p0, Lfreemarker/ext/dom/Transform;->outputFile:Ljava/io/File;

    if-eqz v0, :cond_33

    .line 109
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    :cond_33
    return-void

    :catchall_34
    move-exception v0

    .line 108
    iget-object v1, p0, Lfreemarker/ext/dom/Transform;->outputFile:Ljava/io/File;

    if-eqz v1, :cond_3c

    .line 109
    invoke-virtual {v3}, Ljava/io/Writer;->close()V

    .line 110
    :cond_3c
    throw v0
.end method
