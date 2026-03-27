.class public Lfreemarker/ext/ant/FreemarkerXmlTask;
.super Lorg/apache/tools/ant/taskdefs/MatchingTask;
.source "FreemarkerXmlTask.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private baseDir:Ljava/io/File;

.field private builder:Ljavax/xml/parsers/DocumentBuilder;

.field private final builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

.field private cfg:Lfreemarker/template/Configuration;

.field private destDir:Ljava/io/File;

.field private encoding:Ljava/lang/String;

.field private extension:Ljava/lang/String;

.field private incremental:Z

.field private models:Ljava/lang/String;

.field private final modelsMap:Ljava/util/Map;

.field private parsedTemplate:Lfreemarker/template/Template;

.field private prepareEnvironment:Lfreemarker/ext/ant/JythonAntTask;

.field private prepareModel:Lfreemarker/ext/ant/JythonAntTask;

.field private projectAttribute:Ljava/lang/String;

.field private projectFile:Ljava/io/File;

.field private projectFileLastModified:J

.field private projectNode:Lfreemarker/template/TemplateNodeModel;

.field private projectTemplate:Lfreemarker/template/TemplateModel;

.field private propertiesTemplate:Lfreemarker/template/TemplateModel;

.field private templateDir:Ljava/io/File;

.field private templateEncoding:Ljava/lang/String;

.field private templateFileLastModified:J

.field private templateName:Ljava/lang/String;

.field private userPropertiesTemplate:Lfreemarker/template/TemplateModel;

.field private validation:Z


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 295
    invoke-direct {p0}, Lorg/apache/tools/ant/taskdefs/MatchingTask;-><init>()V

    .line 241
    new-instance v0, Lfreemarker/template/Configuration;

    invoke-direct {v0}, Lfreemarker/template/Configuration;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->cfg:Lfreemarker/template/Configuration;

    const-wide/16 v0, 0x0

    .line 260
    iput-wide v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateFileLastModified:J

    const/4 v2, 0x0

    .line 263
    iput-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectAttribute:Ljava/lang/String;

    .line 265
    iput-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFile:Ljava/io/File;

    .line 275
    iput-wide v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFileLastModified:J

    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->incremental:Z

    .line 281
    const-string v1, ".html"

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->extension:Ljava/lang/String;

    .line 283
    const-string v1, "file.encoding"

    const-string v2, "utf-8"

    invoke-static {v1, v2}, Lfreemarker/template/utility/SecurityUtilities;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->encoding:Ljava/lang/String;

    .line 284
    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateEncoding:Ljava/lang/String;

    const/4 v1, 0x0

    .line 285
    iput-boolean v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->validation:Z

    .line 287
    const-string v1, ""

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->models:Ljava/lang/String;

    .line 288
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->modelsMap:Ljava/util/Map;

    .line 296
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    .line 297
    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    return-void
.end method

.method private ensureDirectoryFor(Ljava/io/File;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 596
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 597
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_33

    .line 598
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p1

    if-eqz p1, :cond_16

    goto :goto_33

    .line 599
    :cond_16
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to create directory: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw p1

    :cond_33
    :goto_33
    return-void
.end method

.method private generateModels()V
    .registers 5

    .line 563
    new-instance v0, Ljava/util/StringTokenizer;

    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->models:Ljava/lang/String;

    const-string v2, ",; "

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    :goto_9
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_4e

    .line 565
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3d

    .line 569
    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2d

    const/16 v2, 0x2e

    .line 573
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-ne v2, v3, :cond_26

    move-object v2, v1

    goto :goto_39

    :cond_26
    add-int/lit8 v2, v2, 0x1

    .line 578
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_39

    :cond_2d
    const/4 v3, 0x0

    .line 581
    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    .line 582
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    move-object v2, v3

    .line 585
    :goto_39
    :try_start_39
    iget-object v3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->modelsMap:Ljava/util/Map;

    invoke-static {v1}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_46} :catch_47

    goto :goto_9

    :catch_47
    move-exception v0

    .line 587
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4e
    return-void
.end method

.method private process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    const-string v0, "Output: "

    const-string v1, "Input:  "

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 476
    :try_start_6
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_b
    .catch Lorg/xml/sax/SAXParseException; {:try_start_6 .. :try_end_b} :catch_168
    .catchall {:try_start_6 .. :try_end_b} :catchall_139

    .line 478
    :try_start_b
    new-instance p1, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x2e

    .line 480
    invoke-virtual {p2, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    .line 479
    invoke-virtual {p2, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->extension:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p1, p3, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2d
    .catch Lorg/xml/sax/SAXParseException; {:try_start_b .. :try_end_2d} :catch_136
    .catchall {:try_start_b .. :try_end_2d} :catchall_139

    .line 483
    :try_start_2d
    iget-boolean p3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->incremental:Z

    if-eqz p3, :cond_51

    .line 484
    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long p3, v5, v7

    if-gtz p3, :cond_51

    iget-wide v5, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateFileLastModified:J

    .line 485
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long p3, v5, v7

    if-gtz p3, :cond_51

    iget-wide v5, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFileLastModified:J

    .line 486
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long p3, v5, v7

    if-lez p3, :cond_125

    .line 487
    :cond_51
    invoke-direct {p0, p1}, Lfreemarker/ext/ant/FreemarkerXmlTask;->ensureDirectoryFor(Ljava/io/File;)V

    .line 490
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x2

    invoke-virtual {p0, p2, p3}, Lfreemarker/ext/ant/FreemarkerXmlTask;->log(Ljava/lang/String;I)V

    .line 492
    iget-object p2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectTemplate:Lfreemarker/template/TemplateModel;

    if-nez p2, :cond_88

    iget-object p2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFile:Ljava/io/File;

    if-eqz p2, :cond_88

    .line 493
    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {v1, p2}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 494
    new-instance v1, Lfreemarker/ext/xml/NodeListModel;

    iget-object v3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->builder:Ljavax/xml/parsers/DocumentBuilder;

    iget-object v5, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFile:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-direct {v1, v3}, Lfreemarker/ext/xml/NodeListModel;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectTemplate:Lfreemarker/template/TemplateModel;

    .line 495
    invoke-static {p2}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object p2

    iput-object p2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectNode:Lfreemarker/template/TemplateNodeModel;

    .line 499
    :cond_88
    iget-object p2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->builder:Ljavax/xml/parsers/DocumentBuilder;

    invoke-virtual {p2, v4}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object p2

    .line 501
    new-instance v1, Lfreemarker/ext/xml/NodeListModel;

    invoke-direct {v1, p2}, Lfreemarker/ext/xml/NodeListModel;-><init>(Ljava/lang/Object;)V

    .line 502
    invoke-static {p2}, Lfreemarker/ext/dom/NodeModel;->wrap(Lorg/w3c/dom/Node;)Lfreemarker/ext/dom/NodeModel;

    move-result-object v3

    .line 503
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 504
    const-string v6, "document"

    invoke-virtual {v5, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 505
    invoke-virtual {p0, v5}, Lfreemarker/ext/ant/FreemarkerXmlTask;->insertDefaults(Ljava/util/Map;)V

    .line 509
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    iget-object v8, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->encoding:Ljava/lang/String;

    invoke-direct {v6, v7, v8}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_b5
    .catch Lorg/xml/sax/SAXParseException; {:try_start_2d .. :try_end_b5} :catch_136
    .catchall {:try_start_2d .. :try_end_b5} :catchall_133

    .line 511
    :try_start_b5
    iget-object v6, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->parsedTemplate:Lfreemarker/template/Template;

    if-eqz v6, :cond_126

    .line 514
    iget-object v6, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->prepareModel:Lfreemarker/ext/ant/JythonAntTask;
    :try_end_bb
    .catchall {:try_start_b5 .. :try_end_bb} :catchall_12e

    const-string v7, "project"

    const-string v8, "doc"

    if-eqz v6, :cond_e0

    .line 515
    :try_start_c1
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 516
    const-string v9, "model"

    invoke-interface {v6, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 517
    invoke-interface {v6, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    iget-object v9, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectNode:Lfreemarker/template/TemplateNodeModel;

    if-eqz v9, :cond_db

    .line 519
    check-cast v9, Lfreemarker/ext/dom/NodeModel;

    invoke-virtual {v9}, Lfreemarker/ext/dom/NodeModel;->getNode()Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v6, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 521
    :cond_db
    iget-object v9, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->prepareModel:Lfreemarker/ext/ant/JythonAntTask;

    invoke-virtual {v9, v6}, Lfreemarker/ext/ant/JythonAntTask;->execute(Ljava/util/Map;)V

    .line 523
    :cond_e0
    iget-object v6, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->parsedTemplate:Lfreemarker/template/Template;

    invoke-virtual {v6, v5, v1}, Lfreemarker/template/Template;->createProcessingEnvironment(Ljava/lang/Object;Ljava/io/Writer;)Lfreemarker/core/Environment;

    move-result-object v5

    .line 524
    invoke-virtual {v5, v3}, Lfreemarker/core/Environment;->setCurrentVisitorNode(Lfreemarker/template/TemplateNodeModel;)V

    .line 525
    iget-object v3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->prepareEnvironment:Lfreemarker/ext/ant/JythonAntTask;

    if-eqz v3, :cond_10c

    .line 526
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 527
    const-string v6, "env"

    invoke-interface {v3, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    invoke-interface {v3, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    iget-object p2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectNode:Lfreemarker/template/TemplateNodeModel;

    if-eqz p2, :cond_107

    .line 530
    check-cast p2, Lfreemarker/ext/dom/NodeModel;

    invoke-virtual {p2}, Lfreemarker/ext/dom/NodeModel;->getNode()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-interface {v3, v7, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 532
    :cond_107
    iget-object p2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->prepareEnvironment:Lfreemarker/ext/ant/JythonAntTask;

    invoke-virtual {p2, v3}, Lfreemarker/ext/ant/JythonAntTask;->execute(Ljava/util/Map;)V

    .line 534
    :cond_10c
    invoke-virtual {v5}, Lfreemarker/core/Environment;->process()V

    .line 535
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_112
    .catchall {:try_start_c1 .. :try_end_112} :catchall_12e

    .line 537
    :try_start_112
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 540
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lfreemarker/ext/ant/FreemarkerXmlTask;->log(Ljava/lang/String;I)V
    :try_end_125
    .catch Lorg/xml/sax/SAXParseException; {:try_start_112 .. :try_end_125} :catch_136
    .catchall {:try_start_112 .. :try_end_125} :catchall_133

    :cond_125
    return-void

    .line 512
    :cond_126
    :try_start_126
    new-instance p2, Lorg/apache/tools/ant/BuildException;

    const-string p3, "No template file specified in build script or in XML file"

    invoke-direct {p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_12e
    .catchall {:try_start_126 .. :try_end_12e} :catchall_12e

    :catchall_12e
    move-exception p2

    .line 537
    :try_start_12f
    invoke-virtual {v1}, Ljava/io/Writer;->close()V

    .line 538
    throw p2
    :try_end_133
    .catch Lorg/xml/sax/SAXParseException; {:try_start_12f .. :try_end_133} :catch_136
    .catchall {:try_start_12f .. :try_end_133} :catchall_133

    :catchall_133
    move-exception p2

    move-object v3, p1

    goto :goto_13a

    :catch_136
    move-exception p1

    move-object v3, v4

    goto :goto_169

    :catchall_139
    move-exception p2

    :goto_13a
    if-eqz v3, :cond_15b

    .line 553
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result p1

    if-nez p1, :cond_15b

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_15b

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Failed to delete "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p3}, Lfreemarker/ext/ant/FreemarkerXmlTask;->log(Ljava/lang/String;I)V

    .line 557
    :cond_15b
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 558
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p1

    :catch_168
    move-exception p1

    .line 545
    :goto_169
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object p2

    if-eqz p2, :cond_174

    .line 546
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getException()Ljava/lang/Exception;

    move-result-object p2

    goto :goto_175

    :cond_174
    move-object p2, p1

    .line 547
    :goto_175
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "XML parsing error in "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, v2}, Lfreemarker/ext/ant/FreemarkerXmlTask;->log(Ljava/lang/String;I)V

    .line 548
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Line number "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lfreemarker/ext/ant/FreemarkerXmlTask;->log(Ljava/lang/String;)V

    .line 549
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Column number "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfreemarker/ext/ant/FreemarkerXmlTask;->log(Ljava/lang/String;)V

    .line 550
    new-instance p1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw p1
.end method

.method private static wrapMap(Ljava/util/Map;)Lfreemarker/template/TemplateModel;
    .registers 5

    .line 606
    new-instance v0, Lfreemarker/template/SimpleHash;

    invoke-direct {v0}, Lfreemarker/template/SimpleHash;-><init>()V

    .line 607
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 608
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 609
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lfreemarker/template/SimpleScalar;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Lfreemarker/template/SimpleScalar;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2, v3}, Lfreemarker/template/SimpleHash;->put(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_d

    :cond_32
    return-object v0
.end method


# virtual methods
.method public addConfiguredJython(Lfreemarker/ext/ant/JythonAntTask;)V
    .registers 2

    .line 456
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->prepareEnvironment:Lfreemarker/ext/ant/JythonAntTask;

    return-void
.end method

.method public addConfiguredPrepareEnvironment(Lfreemarker/ext/ant/JythonAntTask;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->prepareEnvironment:Lfreemarker/ext/ant/JythonAntTask;

    return-void
.end method

.method public addConfiguredPrepareModel(Lfreemarker/ext/ant/JythonAntTask;)V
    .registers 2

    .line 460
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->prepareModel:Lfreemarker/ext/ant/JythonAntTask;

    return-void
.end method

.method public execute()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->baseDir:Ljava/io/File;

    if-nez v0, :cond_e

    .line 378
    invoke-virtual {p0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->baseDir:Ljava/io/File;

    .line 380
    :cond_e
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->destDir:Ljava/io/File;

    if-eqz v0, :cond_13d

    .line 387
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateDir:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_4f

    .line 388
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    if-eqz v0, :cond_44

    .line 389
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v2

    if-nez v2, :cond_37

    .line 391
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->getProject()Lorg/apache/tools/ant/Project;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/tools/ant/Project;->getBaseDir()Ljava/io/File;

    move-result-object v2

    iget-object v3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 393
    :cond_37
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateDir:Ljava/io/File;

    .line 394
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    goto :goto_49

    .line 396
    :cond_44
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->baseDir:Ljava/io/File;

    iput-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateDir:Ljava/io/File;

    move-object v0, v1

    .line 398
    :goto_49
    iget-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateDir:Ljava/io/File;

    invoke-virtual {p0, v2}, Lfreemarker/ext/ant/FreemarkerXmlTask;->setTemplateDir(Ljava/io/File;)V

    goto :goto_73

    .line 399
    :cond_4f
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    if-eqz v0, :cond_72

    .line 400
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isAbsolute()Z

    move-result v0

    if-nez v0, :cond_6a

    .line 403
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateDir:Ljava/io/File;

    iget-object v3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_73

    .line 401
    :cond_6a
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    const-string v1, "Do not specify an absolute location for the template as well as a templateDir"

    invoke-direct {v0, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    move-object v0, v1

    :goto_73
    if-eqz v0, :cond_7b

    .line 406
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    iput-wide v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateFileLastModified:J

    .line 410
    :cond_7b
    :try_start_7b
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    if-eqz v0, :cond_89

    .line 411
    iget-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->cfg:Lfreemarker/template/Configuration;

    iget-object v3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateEncoding:Ljava/lang/String;

    invoke-virtual {v2, v0, v3}, Lfreemarker/template/Configuration;->getTemplate(Ljava/lang/String;Ljava/lang/String;)Lfreemarker/template/Template;

    move-result-object v0

    iput-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->parsedTemplate:Lfreemarker/template/Template;
    :try_end_89
    .catch Ljava/io/IOException; {:try_start_7b .. :try_end_89} :catch_132

    .line 417
    :cond_89
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Transforming into: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->destDir:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lfreemarker/ext/ant/FreemarkerXmlTask;->log(Ljava/lang/String;I)V

    .line 420
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectAttribute:Ljava/lang/String;

    if-eqz v0, :cond_e0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_e0

    .line 421
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->baseDir:Ljava/io/File;

    iget-object v4, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectAttribute:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFile:Ljava/io/File;

    .line 422
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_c6

    .line 423
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    iput-wide v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFileLastModified:J

    goto :goto_e0

    .line 425
    :cond_c6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Project file is defined, but could not be located: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFile:Ljava/io/File;

    .line 426
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 425
    invoke-virtual {p0, v0, v2}, Lfreemarker/ext/ant/FreemarkerXmlTask;->log(Ljava/lang/String;I)V

    .line 427
    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectFile:Ljava/io/File;

    .line 431
    :cond_e0
    :goto_e0
    invoke-direct {p0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->generateModels()V

    .line 434
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->baseDir:Ljava/io/File;

    invoke-virtual {p0, v0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->getDirectoryScanner(Ljava/io/File;)Lorg/apache/tools/ant/DirectoryScanner;

    move-result-object v0

    .line 436
    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/ext/ant/FreemarkerXmlTask;->wrapMap(Ljava/util/Map;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->propertiesTemplate:Lfreemarker/template/TemplateModel;

    .line 437
    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->project:Lorg/apache/tools/ant/Project;

    invoke-virtual {v1}, Lorg/apache/tools/ant/Project;->getUserProperties()Ljava/util/Hashtable;

    move-result-object v1

    invoke-static {v1}, Lfreemarker/ext/ant/FreemarkerXmlTask;->wrapMap(Ljava/util/Map;)Lfreemarker/template/TemplateModel;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->userPropertiesTemplate:Lfreemarker/template/TemplateModel;

    .line 439
    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    iget-boolean v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->validation:Z

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setValidating(Z)V

    .line 441
    :try_start_108
    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->builderFactory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    iput-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->builder:Ljavax/xml/parsers/DocumentBuilder;
    :try_end_110
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_108 .. :try_end_110} :catch_125

    .line 447
    invoke-virtual {v0}, Lorg/apache/tools/ant/DirectoryScanner;->getIncludedFiles()[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 450
    :goto_115
    array-length v2, v0

    if-ge v1, v2, :cond_124

    .line 451
    iget-object v2, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->baseDir:Ljava/io/File;

    aget-object v3, v0, v1

    iget-object v4, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->destDir:Ljava/io/File;

    invoke-direct {p0, v2, v3, v4}, Lfreemarker/ext/ant/FreemarkerXmlTask;->process(Ljava/io/File;Ljava/lang/String;Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_115

    :cond_124
    return-void

    :catch_125
    move-exception v0

    .line 443
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    const-string v2, "Could not create document builder"

    invoke-virtual {p0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/apache/tools/ant/Location;)V

    throw v1

    :catch_132
    move-exception v0

    .line 414
    new-instance v1, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 382
    :cond_13d
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-virtual {p0}, Lfreemarker/ext/ant/FreemarkerXmlTask;->getLocation()Lorg/apache/tools/ant/Location;

    move-result-object v1

    const-string v2, "destdir attribute must be set!"

    invoke-direct {v0, v2, v1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/String;Lorg/apache/tools/ant/Location;)V

    throw v0
.end method

.method protected insertDefaults(Ljava/util/Map;)V
    .registers 5

    .line 615
    const-string v0, "properties"

    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->propertiesTemplate:Lfreemarker/template/TemplateModel;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 616
    const-string v0, "userProperties"

    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->userPropertiesTemplate:Lfreemarker/template/TemplateModel;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 617
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectTemplate:Lfreemarker/template/TemplateModel;

    if-eqz v0, :cond_1e

    .line 618
    const-string v1, "project"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    const-string v0, "project_node"

    iget-object v1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectNode:Lfreemarker/template/TemplateNodeModel;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    :cond_1e
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->modelsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 622
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->modelsMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_30
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 623
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 624
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_30

    :cond_48
    return-void
.end method

.method public setBasedir(Ljava/io/File;)V
    .registers 2

    .line 304
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->baseDir:Ljava/io/File;

    return-void
.end method

.method public setDestdir(Ljava/io/File;)V
    .registers 2

    .line 313
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->destDir:Ljava/io/File;

    return-void
.end method

.method public setEncoding(Ljava/lang/String;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->encoding:Ljava/lang/String;

    return-void
.end method

.method public setExtension(Ljava/lang/String;)V
    .registers 2

    .line 320
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->extension:Ljava/lang/String;

    return-void
.end method

.method public setIncremental(Ljava/lang/String;)V
    .registers 3

    .line 347
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "no"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    iput-boolean p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->incremental:Z

    return-void
.end method

.method public setModels(Ljava/lang/String;)V
    .registers 2

    .line 369
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->models:Ljava/lang/String;

    return-void
.end method

.method public setProjectfile(Ljava/lang/String;)V
    .registers 2

    .line 340
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->projectAttribute:Ljava/lang/String;

    return-void
.end method

.method public setTemplate(Ljava/lang/String;)V
    .registers 2

    .line 324
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateName:Ljava/lang/String;

    return-void
.end method

.method public setTemplateDir(Ljava/io/File;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/tools/ant/BuildException;
        }
    .end annotation

    .line 328
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateDir:Ljava/io/File;

    .line 330
    :try_start_2
    iget-object v0, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->cfg:Lfreemarker/template/Configuration;

    invoke-virtual {v0, p1}, Lfreemarker/template/Configuration;->setDirectoryForTemplateLoading(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7} :catch_8

    return-void

    :catch_8
    move-exception p1

    .line 332
    new-instance v0, Lorg/apache/tools/ant/BuildException;

    invoke-direct {v0, p1}, Lorg/apache/tools/ant/BuildException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public setTemplateEncoding(Ljava/lang/String;)V
    .registers 2

    .line 358
    iput-object p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->templateEncoding:Ljava/lang/String;

    return-void
.end method

.method public setValidation(Z)V
    .registers 2

    .line 365
    iput-boolean p1, p0, Lfreemarker/ext/ant/FreemarkerXmlTask;->validation:Z

    return-void
.end method
