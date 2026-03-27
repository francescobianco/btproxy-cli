.class public Lfreemarker/ext/jsp/EventForwarding;
.super Ljava/lang/Object;
.source "EventForwarding.java"

# interfaces
.implements Ljavax/servlet/ServletContextAttributeListener;
.implements Ljavax/servlet/ServletContextListener;
.implements Ljavax/servlet/http/HttpSessionListener;
.implements Ljavax/servlet/http/HttpSessionAttributeListener;


# static fields
.field private static final ATTR_NAME:Ljava/lang/String;

.field private static final LOG:Lfreemarker/log/Logger;


# instance fields
.field private final httpSessionAttributeListeners:Ljava/util/List;

.field private final httpSessionListeners:Ljava/util/List;

.field private final servletContextAttributeListeners:Ljava/util/List;

.field private final servletContextListeners:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 50
    const-string v0, "freemarker.jsp"

    invoke-static {v0}, Lfreemarker/log/Logger;->getLogger(Ljava/lang/String;)Lfreemarker/log/Logger;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/EventForwarding;->LOG:Lfreemarker/log/Logger;

    .line 52
    const-class v0, Lfreemarker/ext/jsp/EventForwarding;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lfreemarker/ext/jsp/EventForwarding;->ATTR_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextListeners:Ljava/util/List;

    .line 56
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionListeners:Ljava/util/List;

    return-void
.end method

.method private addListener(Ljava/util/EventListener;)V
    .registers 5

    .line 67
    instance-of v0, p1, Ljavax/servlet/ServletContextAttributeListener;

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 68
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/jsp/EventForwarding;->addListener(Ljava/util/List;Ljava/util/EventListener;)V

    move v0, v1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    .line 71
    :goto_d
    instance-of v2, p1, Ljavax/servlet/ServletContextListener;

    if-eqz v2, :cond_17

    .line 72
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/jsp/EventForwarding;->addListener(Ljava/util/List;Ljava/util/EventListener;)V

    move v0, v1

    .line 75
    :cond_17
    instance-of v2, p1, Ljavax/servlet/http/HttpSessionAttributeListener;

    if-eqz v2, :cond_21

    .line 76
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/jsp/EventForwarding;->addListener(Ljava/util/List;Ljava/util/EventListener;)V

    move v0, v1

    .line 79
    :cond_21
    instance-of v2, p1, Ljavax/servlet/http/HttpSessionListener;

    if-eqz v2, :cond_2b

    .line 80
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionListeners:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lfreemarker/ext/jsp/EventForwarding;->addListener(Ljava/util/List;Ljava/util/EventListener;)V

    goto :goto_2c

    :cond_2b
    move v1, v0

    :goto_2c
    if-nez v1, :cond_50

    .line 84
    sget-object v0, Lfreemarker/ext/jsp/EventForwarding;->LOG:Lfreemarker/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Listener of class "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "wasn\'t registered as it doesn\'t implement any of the recognized listener interfaces."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {v0, p1}, Lfreemarker/log/Logger;->warn(Ljava/lang/String;)V

    :cond_50
    return-void
.end method

.method private addListener(Ljava/util/List;Ljava/util/EventListener;)V
    .registers 3

    .line 95
    monitor-enter p1

    .line 96
    :try_start_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    monitor-exit p1

    return-void

    :catchall_6
    move-exception p2

    monitor-exit p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_6

    throw p2
.end method

.method static getInstance(Ljavax/servlet/ServletContext;)Lfreemarker/ext/jsp/EventForwarding;
    .registers 2

    .line 92
    sget-object v0, Lfreemarker/ext/jsp/EventForwarding;->ATTR_NAME:Ljava/lang/String;

    invoke-interface {p0, v0}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lfreemarker/ext/jsp/EventForwarding;

    return-object p0
.end method


# virtual methods
.method addListeners(Ljava/util/List;)V
    .registers 3

    .line 60
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 61
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/EventListener;

    invoke-direct {p0, v0}, Lfreemarker/ext/jsp/EventForwarding;->addListener(Ljava/util/EventListener;)V

    goto :goto_4

    :cond_14
    return-void
.end method

.method public attributeAdded(Ljavax/servlet/ServletContextAttributeEvent;)V
    .registers 6

    .line 101
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    monitor-enter v0

    .line 102
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 104
    iget-object v3, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletContextAttributeListener;

    invoke-interface {v3, p1}, Ljavax/servlet/ServletContextAttributeListener;->attributeAdded(Ljavax/servlet/ServletContextAttributeEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 106
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public attributeAdded(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .registers 6

    .line 166
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    monitor-enter v0

    .line 167
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 169
    iget-object v3, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpSessionAttributeListener;

    invoke-interface {v3, p1}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeAdded(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 171
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V
    .registers 6

    .line 110
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    monitor-enter v0

    .line 111
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 113
    iget-object v3, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletContextAttributeListener;

    invoke-interface {v3, p1}, Ljavax/servlet/ServletContextAttributeListener;->attributeRemoved(Ljavax/servlet/ServletContextAttributeEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 115
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .registers 6

    .line 175
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    monitor-enter v0

    .line 176
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 178
    iget-object v3, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpSessionAttributeListener;

    invoke-interface {v3, p1}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeRemoved(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 180
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public attributeReplaced(Ljavax/servlet/ServletContextAttributeEvent;)V
    .registers 6

    .line 119
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    monitor-enter v0

    .line 120
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 122
    iget-object v3, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextAttributeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletContextAttributeListener;

    invoke-interface {v3, p1}, Ljavax/servlet/ServletContextAttributeListener;->attributeReplaced(Ljavax/servlet/ServletContextAttributeEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 124
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public attributeReplaced(Ljavax/servlet/http/HttpSessionBindingEvent;)V
    .registers 6

    .line 184
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    monitor-enter v0

    .line 185
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 187
    iget-object v3, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionAttributeListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpSessionAttributeListener;

    invoke-interface {v3, p1}, Ljavax/servlet/http/HttpSessionAttributeListener;->attributeReplaced(Ljavax/servlet/http/HttpSessionBindingEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 189
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public contextDestroyed(Ljavax/servlet/ServletContextEvent;)V
    .registers 5

    .line 139
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextListeners:Ljava/util/List;

    monitor-enter v0

    .line 140
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 142
    iget-object v2, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/ServletContextListener;

    invoke-interface {v2, p1}, Ljavax/servlet/ServletContextListener;->contextDestroyed(Ljavax/servlet/ServletContextEvent;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 144
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method

.method public contextInitialized(Ljavax/servlet/ServletContextEvent;)V
    .registers 6

    .line 128
    invoke-virtual {p1}, Ljavax/servlet/ServletContextEvent;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    sget-object v1, Lfreemarker/ext/jsp/EventForwarding;->ATTR_NAME:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljavax/servlet/ServletContext;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 130
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextListeners:Ljava/util/List;

    monitor-enter v0

    .line 131
    :try_start_c
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_23

    .line 133
    iget-object v3, p0, Lfreemarker/ext/jsp/EventForwarding;->servletContextListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/ServletContextListener;

    invoke-interface {v3, p1}, Ljavax/servlet/ServletContextListener;->contextInitialized(Ljavax/servlet/ServletContextEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 135
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p1

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_c .. :try_end_27} :catchall_25

    throw p1
.end method

.method public sessionCreated(Ljavax/servlet/http/HttpSessionEvent;)V
    .registers 6

    .line 148
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionListeners:Ljava/util/List;

    monitor-enter v0

    .line 149
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_1a

    .line 151
    iget-object v3, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/HttpSessionListener;

    invoke-interface {v3, p1}, Ljavax/servlet/http/HttpSessionListener;->sessionCreated(Ljavax/servlet/http/HttpSessionEvent;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 153
    :cond_1a
    monitor-exit v0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw p1
.end method

.method public sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V
    .registers 5

    .line 157
    iget-object v0, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionListeners:Ljava/util/List;

    monitor-enter v0

    .line 158
    :try_start_3
    iget-object v1, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_b
    if-ltz v1, :cond_1b

    .line 160
    iget-object v2, p0, Lfreemarker/ext/jsp/EventForwarding;->httpSessionListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/http/HttpSessionListener;

    invoke-interface {v2, p1}, Ljavax/servlet/http/HttpSessionListener;->sessionDestroyed(Ljavax/servlet/http/HttpSessionEvent;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 162
    :cond_1b
    monitor-exit v0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw p1
.end method
