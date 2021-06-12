.class public final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/player/fullplayer/albumview/SelectedPositionChangeDetector$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$3;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    .line 607
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 609
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$3;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->y(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result p1

    .line 611
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$3;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->getMediaChangeObservable()Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getMusicExtras()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;

    move-result-object v0

    const-string v1, "extra.list_position"

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicExtras;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$3;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->b()Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;

    move-result-object v0

    invoke-interface {v0, p2, p1}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnPlaybackPositionChange;->a(II)V

    return-void
.end method
