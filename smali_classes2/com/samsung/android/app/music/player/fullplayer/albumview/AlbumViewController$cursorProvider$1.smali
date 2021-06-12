.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;->invoke(Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V

    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V
    .locals 2

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 442
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->w(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setAvailableNetwork(Z)V

    .line 443
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->x(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->setMyMusicMode(Z)V

    .line 444
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->k(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewAdapter;->a(Landroid/database/Cursor;)V

    .line 445
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V

    .line 446
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->z(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/ShuffleModeUpdater;->a(Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;)V

    .line 447
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$cursorProvider$1;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->p(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V

    return-void
.end method
