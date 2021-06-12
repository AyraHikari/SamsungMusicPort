.class public final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;
    }
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final context:Landroid/content/Context;

.field private final currentPlayController$delegate:Lkotlin/Lazy;

.field private item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

.field private nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

.field private final playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

.field private final queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

.field private final queueControl:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "currentPlayController"

    const-string v4, "getCurrentPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "queueControl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tag"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->queueControl:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->tag:Ljava/lang/String;

    .line 28
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->currentPlayController$delegate:Lkotlin/Lazy;

    .line 37
    sget-object p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;->INSTANCE:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$Empty;

    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 10

    and-int/lit8 v1, p7, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 23
    move-object v1, v2

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p4

    :goto_0
    and-int/lit8 v1, p7, 0x10

    if-eqz v1, :cond_1

    .line 24
    move-object v1, v2

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    const-string v0, ""

    move-object v9, v0

    goto :goto_2

    :cond_2
    move-object/from16 v9, p6

    :goto_2
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    .line 25
    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)Landroid/content/Context;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    return-object p0
.end method

.method public static final synthetic access$getPlaybackStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    return-object p0
.end method

.method public static final synthetic access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)Ljava/lang/String;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$setItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 0

    .line 19
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    return-void
.end method

.method private final getCurrentPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->currentPlayController$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    return-object v0
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 5

    .line 212
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->tag:Ljava/lang/String;

    const-string v1, "SMUSIC-SV"

    .line 217
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

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v4, 0x40

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]\t "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentPlayingItem "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->cancel(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public final change(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 4

    const-string v0, "newItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 44
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener$DefaultImpls;->onPlayingItemChanged$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;ZILjava/lang/Object;)V

    .line 46
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->getCurrentPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->setPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public getCurrentPlayingItem()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;
    .locals 0

    return-object p0
.end method

.method public getExtraData()Landroid/os/Bundle;
    .locals 1

    .line 19
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->getExtraData(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getFilePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getMetadata()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final getPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;
    .locals 3

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->getCurrentPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    move-result-object v0

    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPlayController "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->getCurrentPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->printLog(Ljava/lang/String;)V

    .line 57
    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    return-object v0
.end method

.method public final getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->getCurrentPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public getPlayingUri(I)Landroid/net/Uri;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->getPlayingUri(I)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method public makeCache(J)V
    .locals 0

    .line 19
    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->makeCache(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;J)V

    return-void
.end method

.method public moveToNext()V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->queueControl:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;->moveToNext()V

    return-void
.end method

.method public moveToPrev()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->queueControl:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;->moveToPrev()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 94
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->getCurrentPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->release()V

    return-void
.end method

.method public reloadItems()V
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->queueControl:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;->reloadItems()V

    return-void
.end method

.method public reset()V
    .locals 0

    .line 19
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem$DefaultImpls;->reset(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->sendCustomAction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public sendCustomAction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;->sendCustomAction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNext(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 1

    const-string v0, "playingItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->nextItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 78
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->getCurrentPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->setNextPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public final update(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 4

    const-string v0, "newItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 52
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->item:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    .line 53
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->queueChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener$DefaultImpls;->onPlayingItemChanged$default(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;ZILjava/lang/Object;)V

    :cond_0
    return-void
.end method
