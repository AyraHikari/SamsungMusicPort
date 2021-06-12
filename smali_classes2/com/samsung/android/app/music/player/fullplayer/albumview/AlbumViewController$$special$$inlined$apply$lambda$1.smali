.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/widget/OnSizeChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;-><init>(Landroid/view/View;Lcom/samsung/android/app/music/activity/BaseServiceActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 0

    .line 208
    iget-object p4, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->q(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Z

    move-result p4

    if-nez p4, :cond_0

    .line 209
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    const/4 p4, 0x1

    invoke-static {p3, p4}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->c(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;Z)V

    .line 210
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;->a(II)V

    goto :goto_0

    :cond_0
    if-eq p1, p3, :cond_1

    .line 211
    invoke-static {}, Lcom/samsung/android/app/music/util/UiUtils;->b()Z

    move-result p3

    if-nez p3, :cond_1

    .line 212
    iget-object p3, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$$special$$inlined$apply$lambda$1;->a:Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;

    invoke-static {p3}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;->r(Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController;)Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/samsung/android/app/music/player/fullplayer/albumview/AlbumViewController$OnAlbumViewSizeObserver;->b(II)V

    :cond_1
    :goto_0
    return-void
.end method
