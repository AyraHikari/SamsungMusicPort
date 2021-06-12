.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$mediaPlayController$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;-><init>(Ljava/lang/String;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$mediaPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;
    .locals 3

    .line 108
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    .line 109
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$mediaPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)Landroid/content/Context;

    move-result-object v1

    .line 110
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$mediaPlayController$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;

    invoke-static {v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;->access$getTag$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController;)Ljava/lang/String;

    move-result-object v2

    .line 108
    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/CurrentPlayingItem$CurrentPlayController$mediaPlayController$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/media/MediaPlayController;

    move-result-object v0

    return-object v0
.end method
