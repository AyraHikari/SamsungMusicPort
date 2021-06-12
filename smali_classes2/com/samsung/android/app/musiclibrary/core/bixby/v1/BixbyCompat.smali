.class public final Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;,
        Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$CommandExecutorType;
    }
.end annotation


# static fields
.field private static final RULE_EXECUTION_EXTEND_SEC:I = 0xa

.field private static final TAG:Ljava/lang/String; = "BixbyCompat"

.field private static sInstance:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;


# instance fields
.field private final mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

.field private final mCommandExecutors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

.field private mCurrentScreenState:Ljava/lang/String;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mInitialCommandExecutor:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mLockScreenCommandExecutors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;",
            ">;"
        }
    .end annotation
.end field

.field private mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field

.field private final mStateConvertible:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/BixbyApi;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    .line 105
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    .line 106
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mInitialCommandExecutor:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 107
    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mStateConvertible:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;

    .line 109
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyStartStateListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$StartStateListener;)V

    .line 110
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/bixby/BixbyApi;->b()V

    .line 111
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;

    invoke-direct {p2, p0, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$BixbyInterimStateListener;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$InterimStateListener;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 30
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/sdk/bixby/BixbyApi;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p0
.end method

.method static synthetic access$402(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object p1
.end method

.method static synthetic access$500(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mStateConvertible:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mInitialCommandExecutor:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;)Ljava/lang/String;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCurrentScreenState:Ljava/lang/String;

    return-object p0
.end method

.method public static declared-synchronized createInstance(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;)V
    .locals 4
    .param p0    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-class v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    monitor-enter v0

    const/4 v1, 0x1

    .line 90
    :try_start_0
    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->setEnabled(Z)V

    .line 91
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createInstance() - appName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/StateConvertible;)V

    sput-object v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sInstance:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    .line 89
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getInstance()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;
    .locals 2

    const-class v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;

    monitor-enter v0

    .line 98
    :try_start_0
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->sInstance:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public varargs addCommandExecutor(ILcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V
    .locals 3
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 129
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_1

    .line 131
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 132
    invoke-interface {v0, p2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    :cond_1
    invoke-static {v1, p3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 136
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCommandExecutor() - type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", key: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", executors: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public varargs addLockScreenCommandExecutor([Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V
    .locals 3
    .param p1    # [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 175
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addLockScreenCommandExecutor() - executors: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    return-void
.end method

.method public clearNextCommand()V
    .locals 3

    .line 218
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clearNextCommand() - mNextCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 219
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-void
.end method

.method public executeCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z
    .locals 6
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 230
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "executeCommand() - command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    const/4 v1, 0x2

    .line 234
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 236
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 237
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a()Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_0

    .line 240
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 241
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 242
    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    .line 248
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    .line 249
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 251
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 252
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_1

    .line 255
    :cond_5
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 256
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 257
    invoke-interface {v4, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z

    move-result v4

    if-eqz v4, :cond_6

    return v1

    .line 263
    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    const/4 v2, 0x0

    .line 264
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_b

    .line 266
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;

    .line 267
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;->a()Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    .line 270
    :cond_9
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 271
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 272
    invoke-interface {v5, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z

    move-result v5

    if-eqz v5, :cond_a

    return v1

    .line 278
    :cond_b
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mLockScreenCommandExecutors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 280
    invoke-interface {v3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;->execute(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)Z

    move-result v3

    if-eqz v3, :cond_c

    return v1

    :cond_d
    return v2
.end method

.method public getNextCommand()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
    .locals 3
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 209
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNextCommand() - mNextCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    if-nez v2, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 210
    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 209
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-object v0
.end method

.method public varargs removeCommandExecutor(ILcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V
    .locals 4
    .param p2    # Lcom/samsung/android/app/musiclibrary/ui/CommandExecutorManagerImpl;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 150
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCommandExecutors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-nez v0, :cond_0

    return-void

    .line 155
    :cond_0
    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    return-void

    .line 160
    :cond_1
    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p3, v2

    .line 161
    invoke-interface {v0, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 163
    :cond_2
    sget-object p3, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCommandExecutor() - type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", key: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", executors: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 163
    invoke-static {p3, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->debugOnly(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public requestUserConfirm(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 297
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestUserConfirm() - requestNlg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", cancelNlg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    new-instance v0, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getName()Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getAttribute()Ljava/lang/String;

    move-result-object v2

    .line 302
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getValue()Ljava/lang/String;

    move-result-object p1

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    .line 304
    invoke-virtual {v0, v1, v2, p1}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 306
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v1, Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;->EXECUTE:Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;

    invoke-direct {v2, p0, p3, p2}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager$OnUserConfirmListener;Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$ConfirmMode;Lcom/samsung/android/sdk/bixby/BixbyApi$OnConfirmResultListener;)V

    return-void
.end method

.method public sendResponse(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;)V
    .locals 6
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 328
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->isLastState()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v1

    const-string v2, "499"

    const-string v3, "0027"

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCurrentCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    .line 332
    invoke-virtual {v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->getRuleId()Ljava/lang/String;

    move-result-object v4

    .line 331
    invoke-virtual {v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->getNlg()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 336
    new-instance v2, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getState()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getName()Ljava/lang/String;

    move-result-object v3

    .line 340
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getAttribute()Ljava/lang/String;

    move-result-object v4

    .line 341
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v3, :cond_1

    if-eqz v4, :cond_1

    if-eqz v5, :cond_1

    .line 343
    invoke-virtual {v2, v3, v4, v5}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    .line 347
    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getResultName()Ljava/lang/String;

    move-result-object v3

    .line 348
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->getResultValue()Ljava/lang/String;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 350
    invoke-virtual {v2, v3, v4}, Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;

    :cond_2
    if-nez v0, :cond_3

    .line 353
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->isNeedUserAction()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->MULTIPLE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 356
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNlg() - Send MULTIPLE type NLG without result. - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Nlg;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 360
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    sget-object v3, Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;->NONE:Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/data/NlgRequestInfo;Lcom/samsung/android/sdk/bixby/BixbyApi$NlgParamMode;)V

    .line 362
    :cond_4
    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendResponse() - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Result;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mBixbyApi:Lcom/samsung/android/sdk/bixby/BixbyApi;

    if-eqz v0, :cond_5

    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;->STATE_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/sdk/bixby/BixbyApi;->a(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void
.end method

.method public setCurrentScreenState(Ljava/lang/String;)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 189
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCurrentScreenState() - state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mCurrentScreenState:Ljava/lang/String;

    return-void
.end method

.method public setNextCommand(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;)V
    .locals 3
    .param p1    # Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 200
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setNextCommand() - command: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/BixbyCompat;->mNextCommand:Lcom/samsung/android/app/musiclibrary/core/bixby/v1/Command;

    return-void
.end method
