.class public final Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/IDump;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;,
        Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;,
        Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;
    }
.end annotation


# static fields
.field private static final BUNDLE_DATA_KEY:Ljava/lang/String; = "key"

.field private static final BUNDLE_DATA_VALUE:Ljava/lang/String; = "value"

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

.field private static final DEBUG:Z = false

.field private static final KEY_TOTAL_SETTING:Ljava/lang/String; = "key_total_setting"

.field private static final TAG:Ljava/lang/String; = "Settings"

.field private static volatile sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

.field private static final sThreadLock:Ljava/lang/Object;


# instance fields
.field private cacheStarted:Z

.field private dump:Lcom/samsung/android/app/musiclibrary/core/service/IDump;

.field private final handler:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;

.field private final mainThreadObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final messageIdMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final repository:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;

.field private final settingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final settingThreadObserverMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final settingValues:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    .line 314
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sThreadLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->repository:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;

    .line 19
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingThreadObserverMap:Ljava/util/HashMap;

    .line 21
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mainThreadObserverMap:Ljava/util/HashMap;

    .line 22
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->messageIdMap:Ljava/util/HashMap;

    .line 23
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingValues:Ljava/util/HashMap;

    .line 24
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->handler:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;

    .line 27
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->repository:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/IDump;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/IDump;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->dump:Lcom/samsung/android/app/musiclibrary/core/service/IDump;

    .line 29
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$settingObserver$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;-><init>(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)V

    return-void
.end method

.method public static final synthetic access$getCacheStarted$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Z
    .locals 0

    .line 16
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->cacheStarted:Z

    return p0
.end method

.method public static final synthetic access$getHandler$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->handler:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$SettingHandler;

    return-object p0
.end method

.method public static final synthetic access$getMainThreadObserverMap$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mainThreadObserverMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getMessageId(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;)I
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getMessageId(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 1

    .line 16
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    return-object v0
.end method

.method public static final synthetic access$getSettingThreadObserverMap$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingThreadObserverMap:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$getSettingValues$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)Ljava/util/HashMap;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingValues:Ljava/util/HashMap;

    return-object p0
.end method

.method public static final synthetic access$notifyChange(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 16
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final synthetic access$setCacheStarted$p(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Z)V
    .locals 0

    .line 16
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->cacheStarted:Z

    return-void
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;)V
    .locals 0

    .line 16
    sput-object p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sInstance:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    return-void
.end method

.method public static final createInstance(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->createInstance(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;)Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object p0

    return-object p0
.end method

.method private final ensureRegisterFromFrameworks()V
    .locals 3

    .line 224
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mainThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 225
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->repository:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 227
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->startCaching()V

    .line 228
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private final ensureUnregisterFromFrameworks()V
    .locals 3

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mainThreadObserverMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 234
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->sThreadLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->stopCaching()V

    .line 236
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->repository:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingObserver:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V

    .line 237
    sget-object v1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method public static final getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    return-object v0
.end method

.method private final getMessageId(Ljava/lang/String;)I
    .locals 3

    .line 277
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->messageIdMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->messageIdMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->messageIdMap:Ljava/util/HashMap;

    check-cast v1, Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 283
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method private final getStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    .line 126
    check-cast v0, Ljava/lang/String;

    .line 127
    iget-boolean v1, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->cacheStarted:Z

    if-eqz v1, :cond_0

    if-nez p3, :cond_0

    .line 128
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingValues:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 129
    sget-boolean v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "Settings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cache 1 hit | key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " | value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move-object p3, v0

    :cond_1
    :goto_0
    if-nez p3, :cond_3

    .line 133
    sget-boolean p3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->DEBUG:Z

    if-eqz p3, :cond_2

    const-string p3, "Settings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "no cache | key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_2
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->repository:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;->getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-nez p3, :cond_3

    move-object p3, p2

    .line 138
    :cond_3
    iget-boolean p2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->cacheStarted:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingValues:Ljava/util/HashMap;

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object p3
.end method

.method private final hasSame(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 148
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 149
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 150
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 151
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    if-nez v3, :cond_2

    .line 153
    invoke-interface {p1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 156
    :cond_2
    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_3
    return v0
.end method

.method private final notifyChange(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-eqz p3, :cond_0

    .line 243
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mainThreadObserverMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingThreadObserverMap:Ljava/util/HashMap;

    :goto_0
    const-string v0, "key_total_setting"

    .line 245
    invoke-virtual {p3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 247
    move-object v1, p3

    check-cast v1, Ljava/util/Map;

    invoke-direct {p0, v1, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChangeInternal(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "Settings"

    const-string v1, "notifyChange - no register observer"

    .line 249
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    :goto_1
    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 254
    invoke-direct {p0, p3, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->notifyChangeInternal(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string p2, "Settings"

    .line 256
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "notifyChange - no registered key : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p1, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private final notifyChangeInternal(Ljava/util/Map;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;>;",
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 264
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 265
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 267
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    if-eqz v2, :cond_0

    .line 268
    invoke-interface {v2, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;->onSettingChanged(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-interface {p2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 270
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-gtz p2, :cond_3

    if-eqz p1, :cond_2

    .line 271
    invoke-static {p1}, Lkotlin/jvm/internal/TypeIntrinsics;->c(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.collections.MutableMap<K, V>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 273
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureUnregisterFromFrameworks()V

    return-void
.end method

.method public static synthetic registerObserver$default(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;ZILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const-string p2, "key_total_setting"

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 165
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    return-void
.end method

.method private final removeObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V
    .locals 4

    if-eqz p3, :cond_0

    .line 193
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mainThreadObserverMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingThreadObserverMap:Ljava/util/HashMap;

    .line 194
    :goto_0
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 196
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 198
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 199
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 200
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 201
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    if-eqz v3, :cond_3

    .line 202
    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 203
    :cond_3
    invoke-interface {v0, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 207
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    if-gtz p1, :cond_5

    .line 209
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method private final startCaching()V
    .locals 1

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->cacheStarted:Z

    return-void
.end method

.method private final stopCaching()V
    .locals 1

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->cacheStarted:Z

    .line 220
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingValues:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public static synthetic unregisterObserver$default(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "key_total_setting"

    .line 181
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "writer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->dump:Lcom/samsung/android/app/musiclibrary/core/service/IDump;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/IDump;->dump(Ljava/io/PrintWriter;)V

    :cond_0
    return-void
.end method

.method public final getBoolean(Ljava/lang/String;Z)Z
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 79
    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, p1

    :catch_0
    :cond_0
    return p2
.end method

.method public final getFloat(Ljava/lang/String;F)F
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    :try_start_0
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, p1

    :catch_0
    :cond_0
    return p2
.end method

.method public final getInt(Ljava/lang/String;I)I
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 90
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move p2, p1

    :catch_0
    :cond_0
    return p2
.end method

.method public final getLong(Ljava/lang/String;J)J
    .locals 2

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 112
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-wide p2, v0

    :catch_0
    :cond_0
    return-wide p2
.end method

.method public final getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 121
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->getStringInternal(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final putBoolean(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putFloat(Ljava/lang/String;F)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putInt(Ljava/lang/String;I)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putLong(Ljava/lang/String;J)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->cacheStarted:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingValues:Ljava/util/HashMap;

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->repository:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$IRepository;->putValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver$default(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V
    .locals 6

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver$default(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;ZILjava/lang/Object;)V

    return-void
.end method

.method public final registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureRegisterFromFrameworks()V

    if-eqz p3, :cond_0

    .line 169
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->mainThreadObserverMap:Ljava/util/HashMap;

    goto :goto_0

    :cond_0
    iget-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->settingThreadObserverMap:Ljava/util/HashMap;

    .line 170
    :goto_0
    invoke-virtual {p3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    .line 172
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    check-cast v0, Ljava/util/List;

    goto :goto_1

    .line 174
    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->hasSame(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 176
    :cond_2
    :goto_1
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    check-cast p3, Ljava/util/Map;

    invoke-interface {p3, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, p1, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver$default(Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public final unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 182
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->removeObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    .line 183
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->removeObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 184
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->ensureUnregisterFromFrameworks()V

    return-void
.end method
