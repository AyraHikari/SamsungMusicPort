.class final enum Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$3;
.super Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/lyrics/LyricsViewBuilders$1;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 2

    .line 69
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 71
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    move-result-object p2

    .line 73
    new-instance p3, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;

    const v1, 0x7f04009c

    invoke-direct {p3, v0, v1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;-><init>(Landroid/content/Context;I)V

    const v1, 0x7f0f004c

    .line 75
    invoke-virtual {p3, v1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->setDefaultTextColorResId(I)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;

    move-result-object p3

    .line 76
    invoke-virtual {p3, v1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->setDefaultSyncTextColorResId(I)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->build()Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;

    move-result-object p3

    .line 73
    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyricsAdapter(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V

    .line 77
    new-instance p3, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;

    invoke-direct {p3, v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V

    return-object p1
.end method

.method public hasFixedHeader()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
