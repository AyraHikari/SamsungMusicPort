.class public final Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-SV-Receiver"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private final mDataSchemeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mIntentReceiverMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Landroid/content/Context;[Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;)V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mIntentReceiverMap:Ljava/util/Map;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mDataSchemeMap:Ljava/util/Map;

    .line 95
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 32
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mContext:Landroid/content/Context;

    .line 33
    array-length p1, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aget-object v1, p2, v0

    .line 34
    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->setupIntentReceivers(Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->handleIntent(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private debugPrintDataSchemeMap(Ljava/lang/String;)V
    .locals 4

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mDataSchemeMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 86
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "SMUSIC-SV-Receiver"

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "registerReceiver dataScheme: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " actions: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 54
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mIntentReceiverMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mIntentReceiverMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;

    .line 57
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;->onIntentReceived(Landroid/content/Context;Landroid/content/Intent;)V

    const-string p1, "SMUSIC-SV-Receiver"

    .line 58
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " action : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setupIntentReceivers(Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;)V
    .locals 5

    .line 39
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;->getDataScheme()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/receiver/IntentReceiverObserver;->getSupportedActions()[Ljava/lang/String;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mDataSchemeMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_0

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 46
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mDataSchemeMap:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    array-length v0, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, v1, v2

    .line 49
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mIntentReceiverMap:Ljava/util/Map;

    invoke-interface {v4, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public register()V
    .locals 4

    .line 66
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mDataSchemeMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 67
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 68
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 69
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 70
    invoke-virtual {v2, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 72
    :cond_0
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mDataSchemeMap:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 73
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    goto :goto_1

    .line 78
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0

    :cond_2
    return-void
.end method

.method public unregister()V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/receiver/BroadcastReceiverController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
