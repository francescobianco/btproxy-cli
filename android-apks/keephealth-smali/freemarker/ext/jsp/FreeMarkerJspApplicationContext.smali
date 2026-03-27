.class Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;
.super Ljava/lang/Object;
.source "FreeMarkerJspApplicationContext.java"

# interfaces
.implements Ljavax/servlet/jsp/JspApplicationContext;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;
    }
.end annotation


# static fields
.field private static final LOG:Lfreemarker/log/Logger;

.field private static final expressionFactoryImpl:Ljavax/el/ExpressionFactory;


# instance fields
.field private final additionalResolvers:Ljavax/el/CompositeELResolver;

.field private final elResolver:Ljavax/el/CompositeELResolver;

.field private final listeners:Ljava/util/LinkedList;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    const-string v0, "freemarker.jsp"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->LOG:Lfreemarker/log/Logger;

    .line 50
    invoke-static {}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->findExpressionFactoryImplementation()Ljavax/el/ExpressionFactory;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->expressionFactoryImpl:Ljavax/el/ExpressionFactory;

    return-void
.end method

.method constructor <init>()V
    .registers 4

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->listeners:Ljava/util/LinkedList;

    .line 53
    new-instance v0, Ljavax/el/CompositeELResolver;

    invoke-direct {v0}, Ljavax/el/CompositeELResolver;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->elResolver:Ljavax/el/CompositeELResolver;

    .line 54
    new-instance v1, Ljavax/el/CompositeELResolver;

    invoke-direct {v1}, Ljavax/el/CompositeELResolver;-><init>()V

    iput-object v1, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->additionalResolvers:Ljavax/el/CompositeELResolver;

    .line 56
    new-instance v2, Ljavax/servlet/jsp/el/ImplicitObjectELResolver;

    invoke-direct {v2}, Ljavax/servlet/jsp/el/ImplicitObjectELResolver;-><init>()V

    invoke-virtual {v0, v2}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 57
    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 58
    new-instance v1, Ljavax/el/MapELResolver;

    invoke-direct {v1}, Ljavax/el/MapELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 59
    new-instance v1, Ljavax/el/ResourceBundleELResolver;

    invoke-direct {v1}, Ljavax/el/ResourceBundleELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 60
    new-instance v1, Ljavax/el/ListELResolver;

    invoke-direct {v1}, Ljavax/el/ListELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 61
    new-instance v1, Ljavax/el/ArrayELResolver;

    invoke-direct {v1}, Ljavax/el/ArrayELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 62
    new-instance v1, Ljavax/el/BeanELResolver;

    invoke-direct {v1}, Ljavax/el/BeanELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    .line 63
    new-instance v1, Ljavax/servlet/jsp/el/ScopedAttributeELResolver;

    invoke-direct {v1}, Ljavax/servlet/jsp/el/ScopedAttributeELResolver;-><init>()V

    invoke-virtual {v0, v1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    return-void
.end method

.method static synthetic access$000(Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;)Ljavax/el/CompositeELResolver;
    .registers 1

    .line 48
    iget-object p0, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->elResolver:Ljavax/el/CompositeELResolver;

    return-object p0
.end method

.method static synthetic access$200()Ljavax/el/ExpressionFactory;
    .registers 1

    .line 48
    sget-object v0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->expressionFactoryImpl:Ljavax/el/ExpressionFactory;

    return-object v0
.end method

.method private static findExpressionFactoryImplementation()Ljavax/el/ExpressionFactory;
    .registers 4

    .line 73
    const-string v0, "com.sun"

    invoke-static {v0}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->tryExpressionFactoryImplementation(Ljava/lang/String;)Ljavax/el/ExpressionFactory;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 75
    const-string v0, "org.apache"

    invoke-static {v0}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->tryExpressionFactoryImplementation(Ljava/lang/String;)Ljavax/el/ExpressionFactory;

    move-result-object v0

    if-nez v0, :cond_2a

    .line 77
    sget-object v1, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->LOG:Lfreemarker/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Could not find any implementation for "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v3, Ljavax/el/ExpressionFactory;

    .line 78
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 77
    invoke-virtual {v1, v2}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    :cond_2a
    return-object v0
.end method

.method private static tryExpressionFactoryImplementation(Ljava/lang/String;)Ljavax/el/ExpressionFactory;
    .registers 5

    const-string v0, "Using "

    const-string v1, "Class "

    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v2, ".el.ExpressionFactoryImpl"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 87
    :try_start_17
    invoke-static {p0}, Lfreemarker/template/utility/ClassUtil;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 88
    const-class v3, Ljavax/el/ExpressionFactory;

    invoke-virtual {v3, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_4c

    .line 89
    sget-object v1, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->LOG:Lfreemarker/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " as implementation of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v3, Ljavax/el/ExpressionFactory;

    .line 90
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 89
    invoke-virtual {v1, v0}, Lfreemarker/log/Logger;->info(Ljava/lang/String;)V

    .line 91
    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/el/ExpressionFactory;

    return-object v0

    .line 93
    :cond_4c
    sget-object v0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->LOG:Lfreemarker/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not implement "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljavax/el/ExpressionFactory;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V
    :try_end_6e
    .catch Ljava/lang/ClassNotFoundException; {:try_start_17 .. :try_end_6e} :catch_84
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_6e} :catch_6f

    goto :goto_84

    :catch_6f
    move-exception v0

    .line 97
    sget-object v1, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->LOG:Lfreemarker/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Failed to instantiate "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Lfreemarker/log/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    :catch_84
    :goto_84
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addELContextListener(Ljavax/el/ELContextListener;)V
    .registers 4

    .line 67
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->listeners:Ljava/util/LinkedList;

    monitor-enter v0

    .line 68
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 69
    monitor-exit v0

    return-void

    :catchall_a
    move-exception p1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw p1
.end method

.method public addELResolver(Ljavax/el/ELResolver;)V
    .registers 3

    .line 103
    iget-object v0, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->additionalResolvers:Ljavax/el/CompositeELResolver;

    invoke-virtual {v0, p1}, Ljavax/el/CompositeELResolver;->add(Ljavax/el/ELResolver;)V

    return-void
.end method

.method createNewELContext(Lfreemarker/ext/jsp/FreeMarkerPageContext;)Ljavax/el/ELContext;
    .registers 6

    .line 111
    new-instance v0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;

    invoke-direct {v0, p0, p1}, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext$FreeMarkerELContext;-><init>(Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;Lfreemarker/ext/jsp/FreeMarkerPageContext;)V

    .line 112
    new-instance p1, Ljavax/el/ELContextEvent;

    invoke-direct {p1, v0}, Ljavax/el/ELContextEvent;-><init>(Ljavax/el/ELContext;)V

    .line 113
    iget-object v1, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->listeners:Ljava/util/LinkedList;

    monitor-enter v1

    .line 114
    :try_start_d
    iget-object v2, p0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->listeners:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 115
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/el/ELContextListener;

    .line 116
    invoke-interface {v3, p1}, Ljavax/el/ELContextListener;->contextCreated(Ljavax/el/ELContextEvent;)V

    goto :goto_13

    .line 118
    :cond_23
    monitor-exit v1

    return-object v0

    :catchall_25
    move-exception p1

    monitor-exit v1
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_25

    throw p1
.end method

.method public getExpressionFactory()Ljavax/el/ExpressionFactory;
    .registers 2

    .line 107
    sget-object v0, Lfreemarker/ext/jsp/FreeMarkerJspApplicationContext;->expressionFactoryImpl:Ljavax/el/ExpressionFactory;

    return-object v0
.end method
