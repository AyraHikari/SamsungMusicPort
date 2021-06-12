.class public final Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC"

.field private static final SUB_TAG:Ljava/lang/String; = "PlayerServiceFragment"

.field public static final TAG:Ljava/lang/String; = "PlayerService"

.field private static final TSP_TAG:Ljava/lang/String; = "PlayerServiceTsp"

.field public static final USE_FRAGMENT:Z = true


# instance fields
.field private final connection:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;

.field private final connectionMap$delegate:Lkotlin/Lazy;

.field private isStartToBind:Z

.field private serviceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation
.end field

.field private serviceConnection:Landroid/content/ServiceConnection;

.field private serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "connectionMap"

    const-string v4, "getConnectionMap()Ljava/util/HashMap;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    .line 26
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connectionMap$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connectionMap$2;

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->connectionMap$delegate:Lkotlin/Lazy;

    const/4 v0, 0x0

    .line 33
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->lifeCycleLogEnabled:Z

    .line 36
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->connection:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;

    return-void
.end method

.method public static final synthetic access$bindToService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getConnection$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->connection:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$connection$1;

    return-object p0
.end method

.method public static final synthetic access$getServiceToken$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-object p0
.end method

.method public static final synthetic access$isReadyToBind(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)Z
    .locals 0

    .line 24
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->isReadyToBind()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isStartToBind$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)Z
    .locals 0

    .line 24
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->isStartToBind:Z

    return p0
.end method

.method public static final synthetic access$setServiceToken$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    return-void
.end method

.method public static final synthetic access$setStartToBind$p(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;Z)V
    .locals 0

    .line 24
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->isStartToBind:Z

    return-void
.end method

.method private final bindPlayerService()V
    .locals 7

    .line 101
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$Companion;

    const/4 v0, 0x1

    .line 102
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->isStartToBind:Z

    .line 103
    sget-object v0, Lkotlinx/coroutines/GlobalScope;->a:Lkotlinx/coroutines/GlobalScope;

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/CoroutineScope;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;

    const/4 v2, 0x0

    invoke-direct {v0, v2, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment$bindPlayerService$$inlined$tsp$lambda$3;-><init>(Lkotlin/coroutines/Continuation;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;)V

    move-object v4, v0

    check-cast v4, Lkotlin/jvm/functions/Function2;

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->a(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method

.method private final bindPlayerServiceIfPossible()V
    .locals 1

    .line 81
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->isStartToBind:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->isReadyToBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->bindPlayerService()V

    :cond_0
    return-void
.end method

.method private final bindToService(Landroid/content/Context;Landroid/content/ServiceConnection;Ljava/lang/Class;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/ServiceConnection;",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;"
        }
    .end annotation

    .line 125
    new-instance v0, Landroid/content/ContextWrapper;

    invoke-direct {v0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 126
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;-><init>(Landroid/content/ServiceConnection;)V

    .line 127
    new-instance p2, Landroid/content/Intent;

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    invoke-direct {p2, v1, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 128
    move-object p3, p1

    check-cast p3, Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, p2, p3, v1}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p3

    if-eqz p3, :cond_0

    :try_start_0
    const-string p3, "com.samsung.android.app.music.core.action.BIND_SERVICE"

    .line 131
    invoke-virtual {p2, p3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    const-string p3, "SMUSIC"

    .line 133
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bindToService "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/service/ServiceCommand;->startPlayerService()V

    .line 136
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->getConnectionMap()Ljava/util/HashMap;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    invoke-interface {p2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-direct {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;-><init>(Landroid/content/ContextWrapper;)V

    goto :goto_1

    :cond_0
    const-string p1, "SMUSIC"

    const-string p2, "PlayerServiceFragment Failed to bind to service"

    .line 139
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private final getConnectionMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Landroid/content/Context;",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->connectionMap$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    return-object v0
.end method

.method private final isReadyToBind()Z
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceClass:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 147
    iget-object v0, p1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;->mWrappedContext:Landroid/content/ContextWrapper;

    if-eqz v0, :cond_0

    .line 148
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->getConnectionMap()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceBinder;

    if-eqz v1, :cond_0

    .line 149
    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 150
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->removeToken(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final getServiceClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceClass:Ljava/lang/Class;

    return-object v0
.end method

.method public final getServiceConnection()Landroid/content/ServiceConnection;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->bindPlayerServiceIfPossible()V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->bindPlayerServiceIfPossible()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->bindPlayerServiceIfPossible()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDestroy()V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceToken:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->unbindFromService(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils$ServiceToken;)V

    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onDetach()V

    const/4 v0, 0x0

    .line 93
    check-cast v0, Landroid/content/ServiceConnection;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method public final setServiceClass(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Service;",
            ">;)V"
        }
    .end annotation

    .line 29
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceClass:Ljava/lang/Class;

    return-void
.end method

.method public final setServiceConnection(Landroid/content/ServiceConnection;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/PlayerServiceFragment;->serviceConnection:Landroid/content/ServiceConnection;

    return-void
.end method
