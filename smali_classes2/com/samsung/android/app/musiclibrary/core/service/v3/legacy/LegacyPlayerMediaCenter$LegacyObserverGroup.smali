.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LegacyObserverGroup"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

.field private final callbacksTo$delegate:Lkotlin/Lazy;

.field private player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

.field private queue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "callbacksTo"

    const-string v4, "getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->tag:Ljava/lang/String;

    .line 38
    invoke-static {}, Lkotlin/collections/CollectionsKt;->a()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->queue:Ljava/util/List;

    .line 39
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbacksTo$2;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbacksTo$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbacksTo$delegate:Lkotlin/Lazy;

    .line 42
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const-string p1, "Ui"

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)Landroid/os/Bundle;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCallbacksTo$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    return-object p0
.end method

.method public static final synthetic access$getQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;)Ljava/util/List;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->queue:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$printLifeCycleLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Ljava/lang/String;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->printLifeCycleLog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setPlayer$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    return-void
.end method

.method public static final synthetic access$setQueue$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;Ljava/util/List;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->queue:Ljava/util/List;

    return-void
.end method

.method private final convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;)Landroid/os/Bundle;
    .locals 5

    .line 110
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "com.samsung.android.app.music.core.state.queue.MODE_VALUES"

    .line 111
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "extra.shuffle_state"

    .line 112
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->getShuffle()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "extra.repeat_state"

    .line 113
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->getRepeat()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "extra.sort_state"

    .line 114
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->getSort()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v3, "extra.shuffle_list"

    .line 118
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->getShufflePositions()[I

    move-result-object v4

    invoke-static {v4}, Lkotlin/collections/ArraysKt;->e([I)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_1

    check-cast v4, Ljava/util/ArrayList;

    .line 116
    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v3, "extra.sort_list"

    .line 122
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/QueueOption;->getShufflePositions()[I

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/ArraysKt;->e([I)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/util/ArrayList;

    .line 120
    invoke-virtual {v2, v3, p1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 111
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v0

    .line 122
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<kotlin.Int> /* = java.util.ArrayList<kotlin.Int> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 118
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<kotlin.Int> /* = java.util.ArrayList<kotlin.Int> */"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 92
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;-><init>(Landroid/media/MediaMetadata;)V

    return-object v0
.end method

.method private final convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 3

    .line 96
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;-><init>()V

    .line 97
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->getQueueItemId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setActiveQueueItemId(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 98
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setDuration(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 99
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->getSpeed()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlaySpeed(F)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 100
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->getPlayerState()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlayerState(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 101
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->getPlayerType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPlayerType(I)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 102
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->getPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setPosition(J)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 104
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->isSupposedToBePlaying()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->setSupposedToPlaying(Z)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;

    .line 105
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState$Builder;->build()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    return-object p1
.end method

.method private final getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbacksTo$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method private final printLifeCycleLog(Ljava/lang/String;)V
    .locals 5

    .line 222
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getTag()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SMUSIC-SV"

    .line 228
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

    if-eqz v0, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, ""

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->tag:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "LifeCycle> legacy "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 227
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final changePlayer(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;)V
    .locals 2

    const-string v0, "p"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    .line 206
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    :cond_1
    return-void
.end method

.method public final count()I
    .locals 1

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 150
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    .line 148
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;
    .locals 4

    .line 166
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;-><init>()V

    const-string v1, "extra.list_position"

    .line 167
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueuePosition()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

    const-string v1, "extra.list_length"

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getQueueSize()J

    move-result-wide v2

    long-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->putInt(Ljava/lang/String;I)V

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

    .line 162
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->queue:Ljava/util/List;

    return-object v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;->Companion:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState$Companion;->getEmpty()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    .line 155
    :goto_0
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->convert(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getSubObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;
    .locals 1

    .line 173
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$getSubObservable$1;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$getSubObservable$1;-><init>()V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public final notifyCurrentMeta()V
    .locals 2

    .line 210
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    .line 211
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->onMetaChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;)V

    :cond_0
    return-void
.end method

.method public final notifyCurrentPlaybackState()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz v0, :cond_0

    .line 217
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;->onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;)V

    :cond_0
    return-void
.end method

.method public registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 131
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 132
    :cond_0
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->registerPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    goto :goto_0

    .line 136
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->getCallbacksTo()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v0

    .line 142
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->player:Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup;->callbackFrom:Lcom/samsung/android/app/musiclibrary/core/service/v3/legacy/LegacyPlayerMediaCenter$LegacyObserverGroup$callbackFrom$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/Player;->unregisterPlayerCallback(Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/PlayerObservable$OnPlayerCallback;)V

    :cond_0
    return-void
.end method
