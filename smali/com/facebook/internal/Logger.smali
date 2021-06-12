.class public Lcom/facebook/internal/Logger;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LOG_TAG_BASE:Ljava/lang/String; = "FacebookSDK."

.field private static final stringsToReplace:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final behavior:Lcom/facebook/LoggingBehavior;

.field private contents:Ljava/lang/StringBuilder;

.field private priority:I

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 43
    iput v0, p0, Lcom/facebook/internal/Logger;->priority:I

    const-string v0, "tag"

    .line 105
    invoke-static {p2, v0}, Lcom/facebook/internal/Validate;->notNullOrEmpty(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iput-object p1, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;

    .line 108
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "FacebookSDK."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/facebook/internal/Logger;->tag:Ljava/lang/String;

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 82
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 83
    invoke-static {p3}, Lcom/facebook/internal/Logger;->replaceStrings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "FacebookSDK."

    .line 84
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FacebookSDK."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 87
    :cond_0
    invoke-static {p1, p2, p3}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    .line 91
    sget-object p1, Lcom/facebook/LoggingBehavior;->DEVELOPER_ERRORS:Lcom/facebook/LoggingBehavior;

    if-ne p0, p1, :cond_1

    .line 92
    new-instance p0, Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method

.method public static varargs log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 75
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 76
    invoke-static {p3, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 77
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x3

    .line 58
    invoke-static {p0, v0, p1, p2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs log(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 63
    invoke-static {p0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x3

    .line 65
    invoke-static {p0, p3, p1, p2}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static declared-synchronized registerAccessToken(Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/facebook/internal/Logger;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/facebook/LoggingBehavior;->INCLUDE_ACCESS_TOKENS:Lcom/facebook/LoggingBehavior;

    invoke-static {v1}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "ACCESS_TOKEN_REMOVED"

    .line 53
    invoke-static {p0, v1}, Lcom/facebook/internal/Logger;->registerStringToReplace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 51
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized registerStringToReplace(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-class v0, Lcom/facebook/internal/Logger;

    monitor-enter v0

    .line 48
    :try_start_0
    sget-object v1, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;

    invoke-virtual {v1, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 47
    monitor-exit v0

    throw p0
.end method

.method private static declared-synchronized replaceStrings(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/facebook/internal/Logger;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/facebook/internal/Logger;->stringsToReplace:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 101
    :cond_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 97
    monitor-exit v0

    throw p0
.end method

.method private shouldLog()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;

    invoke-static {v0}, Lcom/facebook/FacebookSdk;->isLoggingBehaviorEnabled(Lcom/facebook/LoggingBehavior;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public append(Ljava/lang/String;)V
    .locals 1

    .line 145
    invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public varargs append(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    .line 151
    invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public append(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/facebook/internal/Logger;->shouldLog()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method

.method public appendKeyValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "  %s:\t%s\n"

    const/4 v1, 0x2

    .line 157
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {p0, v0, v1}, Lcom/facebook/internal/Logger;->append(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getContents()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/internal/Logger;->replaceStrings(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    .line 113
    iget v0, p0, Lcom/facebook/internal/Logger;->priority:I

    return v0
.end method

.method public log()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/facebook/internal/Logger;->logString(Ljava/lang/String;)V

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/internal/Logger;->contents:Ljava/lang/StringBuilder;

    return-void
.end method

.method public logString(Ljava/lang/String;)V
    .locals 3

    .line 135
    iget-object v0, p0, Lcom/facebook/internal/Logger;->behavior:Lcom/facebook/LoggingBehavior;

    iget v1, p0, Lcom/facebook/internal/Logger;->priority:I

    iget-object v2, p0, Lcom/facebook/internal/Logger;->tag:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/internal/Logger;->log(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPriority(I)V
    .locals 7

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "value"

    const/4 v2, 0x6

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v3, v5

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v2

    .line 117
    invoke-static {v0, v1, v3}, Lcom/facebook/internal/Validate;->oneOf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    iput p1, p0, Lcom/facebook/internal/Logger;->priority:I

    return-void
.end method
