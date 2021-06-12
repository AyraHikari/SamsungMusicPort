.class public final Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleObserver;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;,
        Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

.field private static final LOG_TAG:Ljava/lang/String; = "SMUSIC-MediaChangeController"

.field private static final TAG:Ljava/lang/String; = "MediaChangeController"


# instance fields
.field private final activeQueueObserver:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;

.field private currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private isStarted:Z

.field private final mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final observer$delegate:Lkotlin/Lazy;

.field private final observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;",
            ">;"
        }
    .end annotation
.end field

.field private subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "observer"

    const-string v4, "getObserver()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Ljava/lang/String;)V
    .locals 1

    const-string v0, "mediaObservable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->tag:Ljava/lang/String;

    .line 26
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observers:Ljava/util/List;

    .line 31
    sget-object p1, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p1, p2}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observer$delegate:Lkotlin/Lazy;

    .line 58
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->activeQueueObserver:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;

    return-void
.end method

.method public static final synthetic access$changeMediaObservable(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Landroid/os/Bundle;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->changeMediaObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Landroid/os/Bundle;)V

    return-void
.end method

.method public static final synthetic access$getActiveMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;I)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getActiveMediaChangeObservable(I)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentObservable$p(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object p0
.end method

.method public static final synthetic access$getObservers$p(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observers:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$setCurrentObservable$p(Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-void
.end method

.method private final changeMediaObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Landroid/os/Bundle;)V
    .locals 2

    .line 193
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getObserver()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    invoke-virtual {v0, v1, p2}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 196
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getObserver()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 197
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 198
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getObserver()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {p2, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 199
    :cond_1
    sget-object p2, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observers:Ljava/util/List;

    check-cast p2, Ljava/lang/Iterable;

    .line 366
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    .line 200
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    if-eqz v1, :cond_2

    .line 201
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;->setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private final getActiveMediaChangeObservable(I)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 3

    .line 207
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 371
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MediaChangeController"

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Active queue type changed queueType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object p1

    goto :goto_1

    .line 209
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    :goto_1
    return-object p1
.end method

.method private final getActiveQueueType()I
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private final getActiveQueueTypeBundle(I)Landroid/os/Bundle;
    .locals 2

    .line 179
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 180
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method private final getObserver()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observer$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;

    return-object v0
.end method

.method private final sendAllData(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 2

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getActiveQueueType()I

    move-result v0

    const-string v1, "com.samsung.android.app.music.core.state.ACTIVE_PLAYER_QUEUE_TYPE_CHANGED"

    .line 97
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getActiveQueueTypeBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 95
    invoke-interface {p1, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->sendCurrentObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 100
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 101
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 102
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getCloneBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    return-void
.end method

.method private final sendCurrentObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 107
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    if-eqz v0, :cond_1

    .line 108
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    :goto_0
    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;->setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    const-string v1, "mediaObservable.metadata"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "mediaObservable.musicExtras"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getMusicQueue()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicQueue()Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 2

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    const-string v1, "mediaObservable.playbackState"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->subChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    return-object v0
.end method

.method public final onDestroy()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 172
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 315
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MediaChangeController"

    .line 172
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDestroy() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getObserver()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->activeQueueObserver:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    return-void
.end method

.method public final onStart()V
    .locals 4
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 142
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 270
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MediaChangeController"

    .line 142
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStart() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :goto_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->wasServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 144
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getActiveQueueType()I

    move-result v0

    .line 146
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getActiveMediaChangeObservable(I)Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getActiveQueueTypeBundle(I)Landroid/os/Bundle;

    move-result-object v0

    .line 145
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->changeMediaObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;Landroid/os/Bundle;)V

    .line 148
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 285
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "SMUSIC-MediaChangeController"

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStarted changeObservable() observable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_2

    .line 151
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getObserver()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;

    move-result-object v1

    .line 152
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    const-string v3, "it.metadata"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V

    .line 153
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v2

    const-string v3, "it.playbackState"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V

    .line 154
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicQueue()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v3, "it.musicExtras"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getCloneBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;->onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V

    .line 158
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->activeQueueObserver:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->isStarted:Z

    return-void
.end method

.method public final onStop()V
    .locals 3
    .annotation runtime Landroid/arch/lifecycle/OnLifecycleEvent;
        a = .enum Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;
    .end annotation

    .line 164
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 300
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MediaChangeController"

    .line 164
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop() : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->mediaObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->activeQueueObserver:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$activeQueueObserver$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->currentObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->getObserver()Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$observer$2$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_1
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->isStarted:Z

    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 3

    const-string v0, "observer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 80
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 225
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MediaChangeController"

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already registered or null"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 83
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->isStarted:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->sendAllData(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->sendCurrentObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 85
    :goto_1
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$MediaChangeObservableObserver;

    if-nez v0, :cond_4

    .line 86
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 240
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "SMUSIC-MediaChangeController"

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " implements OnMediaChangeObserver, but not implements ChangeObservable."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " If you need changed observable, please implement."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 88
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 3

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 114
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->Companion:Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher$Companion;

    .line 255
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-MediaChangeController"

    .line 114
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "observer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already un-registered"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/ActiveMediaChangePublisher;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method
