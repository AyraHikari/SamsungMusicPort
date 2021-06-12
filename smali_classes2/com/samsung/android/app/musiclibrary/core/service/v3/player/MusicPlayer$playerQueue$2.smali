.class final Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playerQueue$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;
    .locals 7

    .line 39
    new-instance v6, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$getContext$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v0, "context.applicationContext"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$getPlaybackStateChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playbackStateChangedListener$1;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;

    .line 42
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$getOnQueueChangedListener$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$onQueueChangedListener$2$1;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;

    .line 43
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->getTag()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playerQueue$2;->this$0:Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;->access$getOptions$p(Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer;)Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;

    move-result-object v5

    move-object v0, v6

    .line 39
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/playcontroller/OnPlaybackStateChangedListener;Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/OnQueueChangedListener;Ljava/lang/String;Lcom/samsung/android/app/musiclibrary/core/service/v3/ServiceOptions;)V

    return-object v6
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/v3/player/MusicPlayer$playerQueue$2;->invoke()Lcom/samsung/android/app/musiclibrary/core/service/v3/player/queue/MusicPlayerQueue;

    move-result-object v0

    return-object v0
.end method
