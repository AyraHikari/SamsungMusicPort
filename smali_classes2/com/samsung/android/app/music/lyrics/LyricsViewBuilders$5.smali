.class final enum Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders$5;
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

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;-><init>(Ljava/lang/String;ILcom/samsung/android/app/music/lyrics/LyricsViewBuilders$1;)V

    return-void
.end method


# virtual methods
.method public build(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
    .locals 5

    .line 106
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 108
    invoke-static {p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->access$100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;I)Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;

    move-result-object p3

    .line 110
    new-instance v1, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;

    const v2, 0x7f04009c

    invoke-direct {v1, v0, v2}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;-><init>(Landroid/content/Context;I)V

    const v2, 0x7f0f004c

    .line 112
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->setDefaultTextColorResId(I)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;

    move-result-object v1

    .line 113
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->setDefaultSyncTextColorResId(I)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;

    move-result-object v1

    .line 114
    invoke-static {}, Lcom/samsung/android/app/music/lyrics/LyricsViewBuilders;->access$300()Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->addHeaderViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$FixedViewBinder;)Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter$Builder;->build()Lcom/samsung/android/app/music/lyrics/view/LyricsAdapter;

    move-result-object v1

    .line 110
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setLyricsAdapter(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter;)V

    .line 115
    new-instance v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterFocusController;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    const/4 v4, 0x0

    aput-object p3, v3, v4

    new-instance v4, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;

    invoke-direct {v4, v0, p2}, Lcom/samsung/android/app/music/lyrics/view/controller/JumpFocusViewBinder;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    const/4 p2, 0x1

    aput-object v4, v3, p2

    invoke-direct {v2, v3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/MultiFocusedViewsBinder;-><init>([Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterFocusController;-><init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setFocusController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)V

    .line 118
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;

    invoke-direct {p2, v0, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/controller/CenterHighlightController;-><init>(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->setHighlightController(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController;)V

    .line 120
    new-instance p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;

    invoke-direct {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/FirstLastItemPaddingBinder;-><init>()V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->addItemViewBinder(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder;)V

    return-object p1
.end method

.method public hasFixedHeader()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
