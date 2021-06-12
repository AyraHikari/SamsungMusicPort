.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable;


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final activeObservers$delegate:Lkotlin/Lazy;

.field private final playerCenters$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "playerCenters"

    const-string v4, "getPlayerCenters()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "activeObservers"

    const-string v4, "getActiveObservers()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter$playerCenters$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter$playerCenters$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->playerCenters$delegate:Lkotlin/Lazy;

    .line 20
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter$activeObservers$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter$activeObservers$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->activeObservers$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getActiveObservers()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->activeObservers$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final getPlayerCenters()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->playerCenters$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method private final registerActivePlayerCallback()V
    .locals 2

    .line 95
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    return-void
.end method

.method private final unregisterActivePlayerCallback()V
    .locals 2

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    return-void
.end method

.method private final updatePlayer(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;)V"
        }
    .end annotation

    .line 83
    check-cast p1, Ljava/lang/Iterable;

    .line 148
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-gez v1, :cond_0

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_0
    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 84
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;

    .line 85
    invoke-interface {v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;->getPlayerTag()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 86
    invoke-interface {v5, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;->setPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    .line 87
    :goto_1
    invoke-interface {v5, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;->setActive(Z)V

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method protected final changeActivePlayer(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;)V"
        }
    .end annotation

    const-string v0, "players"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 74
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->unregisterActivePlayerCallback()V

    .line 75
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->updatePlayer(Ljava/util/List;)V

    .line 76
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object p1

    .line 145
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter$changeActivePlayer$$inlined$sortBy$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter$changeActivePlayer$$inlined$sortBy$1;-><init>()V

    check-cast v0, Ljava/util/Comparator;

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->a(Ljava/util/List;Ljava/util/Comparator;)V

    .line 79
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->registerActivePlayerCallback()V

    return-void
.end method

.method protected abstract getActivePlayerCallback()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/SimplePlayerCallback;
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 2

    .line 60
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/PlayerMediaCenter;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method protected final initialize(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;)V"
        }
    .end annotation

    const-string v0, "players"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    check-cast p1, Ljava/lang/Iterable;

    .line 137
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 24
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x77221946

    if-eq v2, v3, :cond_2

    const v3, 0x636ee25

    if-eq v2, v3, :cond_1

    const v3, 0x67413fb

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "radio"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 31
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/RadioPlayerMediaCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/RadioPlayerMediaCenter$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/RadioPlayerMediaCenter$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/RadioPlayerMediaCenter;

    move-result-object v2

    .line 32
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/RadioPlayerMediaCenter;->setPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "music"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/MusicPlayerMediaCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/MusicPlayerMediaCenter$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/MusicPlayerMediaCenter$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/MusicPlayerMediaCenter;

    move-result-object v2

    .line 27
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/MusicPlayerMediaCenter;->setPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    .line 26
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const-string v2, "spotify"

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter$Companion;

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;

    move-result-object v2

    .line 37
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/SpotifyPlayerMediaCenter;->setPlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V

    .line 36
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v1, 0x0

    .line 138
    check-cast v1, Ljava/lang/String;

    const-string v1, "SMUSIC-SV"

    .line 141
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v3, 0x5b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    const-string v4, "Thread.currentThread()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "]\t "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PlayerCenter initialize() tag="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 140
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 45
    :cond_4
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->registerActivePlayerCallback()V

    return-void
.end method

.method protected final notifyExtraChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 158
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    .line 130
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V
    .locals 2

    const-string v0, "m"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 150
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    .line 106
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 152
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    .line 112
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;",
            ")V"
        }
    .end annotation

    const-string v0, "queue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "options"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 154
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    .line 118
    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;->onQueueChanged(Ljava/util/List;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final notifyQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V
    .locals 2

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 156
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    .line 124
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;->onQueueOptionChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public release()V
    .locals 1

    .line 68
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->unregisterActivePlayerCallback()V

    .line 69
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getPlayerCenters()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final testChangeActivePlayer(Ljava/util/List;)V
    .locals 1
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->TESTS:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;",
            ">;)V"
        }
    .end annotation

    const-string v0, "players"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->changeActivePlayer(Ljava/util/List;)V

    return-void
.end method

.method public unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V
    .locals 1

    const-string v0, "cb"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 54
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/center/BasePlayerChangeCenter;->getActiveObservers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
