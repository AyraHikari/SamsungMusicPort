.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CurrentPlayController"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

.field private final context:Landroid/content/Context;

.field private final currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

.field private dmrPlayController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

.field private final dmrPlayInstance$delegate:Lkotlin/Lazy;

.field private final mediaPlayController$delegate:Lkotlin/Lazy;

.field private final playbackCompleteListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackCompleteListener$1;

.field private final playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "mediaPlayController"

    const-string v4, "getMediaPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "dmrPlayInstance"

    const-string v4, "getDmrPlayInstance()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "currentPlayingItem"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->tag:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->context:Landroid/content/Context;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    .line 107
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$mediaPlayController$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$mediaPlayController$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->mediaPlayController$delegate:Lkotlin/Lazy;

    .line 113
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->getMediaPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    .line 115
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$dmrPlayInstance$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$dmrPlayInstance$2;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->a(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->dmrPlayInstance$delegate:Lkotlin/Lazy;

    .line 120
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;

    invoke-direct {p1, p0, p4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;

    .line 128
    new-instance p1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackCompleteListener$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackCompleteListener$1;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->playbackCompleteListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackCompleteListener$1;

    .line 142
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->playbackCompleteListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackCompleteListener$1;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->setOnPlaybackCompleteListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x20

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)Landroid/content/Context;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getCurrentPlayingItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    return-object p0
.end method

.method public static final synthetic access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)Ljava/lang/String;
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$printLog(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;Ljava/lang/String;)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->printLog(Ljava/lang/String;)V

    return-void
.end method

.method private final change(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;)V
    .locals 2

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "old:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->printLog(Ljava/lang/String;)V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->setOnPlaybackCompleteListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;)V

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->release()V

    .line 177
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->playbackStateChangedListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackStateChangedListener$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->playbackCompleteListener:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$playbackCompleteListener$1;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->setOnPlaybackCompleteListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;)V

    return-void
.end method

.method private final changePlayerType(I)V
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->release()V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 161
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->getDmrPlayInstance()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    move-result-object p1

    .line 162
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->dmrPlayController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->dmrPlayController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    goto :goto_0

    .line 159
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->getMediaPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 158
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 166
    :cond_1
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    return-void
.end method

.method private final getDmrPlayInstance()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->dmrPlayInstance$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    return-object v0
.end method

.method private final getMediaPlayController()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->mediaPlayController$delegate:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    return-object v0
.end method

.method private final printLog(Ljava/lang/String;)V
    .locals 5

    .line 208
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->tag:Ljava/lang/String;

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

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CurrentPlayController "

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
.method public buffering()I
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->buffering()I

    move-result v0

    return v0
.end method

.method public getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;
    .locals 1

    .line 185
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/v3/aidl/model/MusicPlaybackState;

    move-result-object v0

    return-object v0
.end method

.method public next()V
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->moveToNext()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->pause()V

    return-void
.end method

.method public play()V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->play()V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->printLog(Ljava/lang/String;)V

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->access$getItem$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItemKt;->isEmpty(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->reloadItems()V

    :cond_0
    return-void
.end method

.method public position()J
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->position()J

    move-result-wide v0

    return-wide v0
.end method

.method public prev(Z)V
    .locals 0

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->currentPlayingItem:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->moveToPrev()V

    return-void
.end method

.method public release()V
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->release()V

    return-void
.end method

.method public seek(J)V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->seek(J)V

    return-void
.end method

.method public sendCustomAction(I)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->sendCustomAction(I)V

    return-void
.end method

.method public sendCustomAction(ILandroid/os/Bundle;)V
    .locals 1

    const-string v0, "data"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->sendCustomAction(ILandroid/os/Bundle;)V

    return-void
.end method

.method public setNextPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->setNextPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public setOnPlaybackCompleteListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackCompleteListener;)V
    .locals 0

    return-void
.end method

.method public setOnPlayerStateChangedListener(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
    .locals 0

    return-void
.end method

.method public setPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->setPlayingItem(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;)V

    return-void
.end method

.method public speed(F)V
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->speed(F)V

    return-void
.end method

.method public togglePlay()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->activeController:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/PlayController;->togglePlay()V

    return-void
.end method
