.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/PlayingItemControl;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playingItem/PlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;
    .locals 5

    .line 29
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    .line 30
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)Ljava/lang/String;

    move-result-object v1

    .line 31
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)Landroid/content/Context;

    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    .line 33
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;->access$getPlaybackStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    move-result-object v4

    .line 29
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 19
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$currentPlayController$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    move-result-object v0

    return-object v0
.end method
