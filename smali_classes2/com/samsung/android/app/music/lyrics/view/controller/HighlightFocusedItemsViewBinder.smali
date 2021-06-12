.class public Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/lyrics/LyricsController$MediaChangeObservableChangeListener;
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder;
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/samsung/android/app/music/lyrics/LyricsController$MediaChangeObservableChangeListener;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$HighlightController$HighlightViewBinder<",
        "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HighlightFocusedItemsViewBinder"

.field private static mDuration:J


# instance fields
.field private mAdapterView:Landroid/support/v7/widget/RecyclerView;

.field private final mDefaultTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mHighlightPosition:I

.field private mHighlightTextColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

.field private mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

.field private mMediaId:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 58
    iput-wide v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaId:J

    .line 67
    iput-object p3, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 68
    iget-object p3, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p3, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 69
    iget-object p3, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p3}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x7f0f01a4

    .line 74
    invoke-static {p3, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightTextColor:I

    .line 75
    invoke-static {p3, p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/support/content/res/ResourcesCompat;->a(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDefaultTextColor:I

    return-void
.end method

.method private setTextAppearance(IIZ)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 205
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-nez v1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object p1

    .line 206
    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    if-eqz v0, :cond_2

    .line 208
    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextAppearance(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;Z)V

    :cond_2
    return-void
.end method

.method private setTextAppearance(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;Z)V
    .locals 0

    .line 215
    invoke-direct {p0, p1, p3}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->withAlpha(Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)V

    if-eqz p4, :cond_0

    .line 217
    invoke-virtual {p1}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result p3

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->withTextColorAnimation(Landroid/widget/TextView;II)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    return-void
.end method

.method private withAlpha(Landroid/widget/TextView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;)V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p2, :cond_2

    .line 226
    invoke-interface {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v1

    .line 227
    sget-wide v3, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    cmp-long p2, v1, v3

    if-gez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const p2, 0x3ebd70a4    # 0.37f

    const v0, 0x3ebd70a4    # 0.37f

    .line 230
    :cond_2
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void
.end method

.method private withTextColorAnimation(Landroid/widget/TextView;II)V
    .locals 3

    .line 234
    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v1, p3

    invoke-static {v0, v1}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p2

    const-wide/16 v0, 0x96

    .line 235
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 236
    new-instance p3, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder$1;

    invoke-direct {p3, p0, p1}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder$1;-><init>(Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;Landroid/widget/TextView;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 242
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public getChild()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "+",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ItemViewBinder<",
            "+",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 0

    .line 119
    iput-object p2, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    .line 120
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    const/4 p1, -0x1

    .line 122
    iput p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    return-void
.end method

.method public bridge synthetic onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 37
    check-cast p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindView(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;I)V
    .locals 2

    .line 142
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    .line 143
    iget-object v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 144
    invoke-interface {p1, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object p1

    .line 145
    iget v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    const/4 v1, 0x0

    if-ne v0, p3, :cond_0

    .line 146
    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget p3, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightTextColor:I

    invoke-direct {p0, p2, p3, p1, v1}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextAppearance(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;Z)V

    goto :goto_0

    .line 148
    :cond_0
    iget-object p2, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$LyricsAdapter$ViewHolder;->lyricText:Landroid/widget/TextView;

    iget p3, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDefaultTextColor:I

    invoke-direct {p0, p2, p3, p1, v1}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextAppearance(Landroid/widget/TextView;ILcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;Z)V
    .locals 0

    const/4 p1, 0x0

    .line 127
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    .line 128
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    if-eqz p3, :cond_0

    .line 131
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    :cond_0
    return-void
.end method

.method public onExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
    .locals 0

    .line 175
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    if-nez p1, :cond_0

    return-void

    .line 182
    :cond_0
    iget p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    if-eq p2, p1, :cond_1

    .line 183
    iget p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDefaultTextColor:I

    const/4 p3, 0x0

    invoke-direct {p0, p2, p1, p3}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextAppearance(IIZ)V

    :cond_1
    return-void
.end method

.method public onHighlightChanged(II)V
    .locals 2

    .line 155
    iput p2, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightPosition:I

    .line 156
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    .line 169
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDefaultTextColor:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextAppearance(IIZ)V

    .line 170
    iget p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mHighlightTextColor:I

    invoke-direct {p0, p2, p1, v1}, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->setTextAppearance(IIZ)V

    return-void
.end method

.method public onMediaChangeObservableChanged(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
    .locals 3

    .line 189
    sget-object v0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeObservable - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    if-ne v0, p1, :cond_0

    return-void

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 194
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    .line 195
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 196
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaChangeObservable:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;->getPlaybackState()Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    return-void
.end method

.method public onMetadataChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;)V
    .locals 4

    .line 80
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getMediaId()J

    move-result-wide v0

    .line 81
    iget-wide v2, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaId:J

    cmp-long v2, v2, v0

    if-eqz v2, :cond_1

    .line 82
    iput-wide v0, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mMediaId:J

    .line 83
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getCpAttrs()J

    move-result-wide v0

    long-to-int v0, v0

    .line 84
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/provider/AbsCpAttrs;->d(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0x1

    .line 85
    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    goto :goto_0

    :cond_0
    const-string v0, "android.media.metadata.DURATION"

    .line 87
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicMetadata;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    .line 90
    :cond_1
    :goto_0
    sget-object p1, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMetadataChanged() duration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPlaybackStateChanged(Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;)V
    .locals 4

    .line 95
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getPlayerState()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    return-void

    .line 98
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/service/metadata/MusicPlaybackState;->getDuration()J

    move-result-wide v0

    .line 99
    sget-wide v2, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_1

    .line 100
    sput-wide v0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    .line 101
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    if-eqz p1, :cond_1

    .line 102
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 105
    :cond_1
    sget-object p1, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlaybackStateChanged() duration : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v1, Lcom/samsung/android/app/music/lyrics/view/controller/HighlightFocusedItemsViewBinder;->mDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onQueueChanged(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/session/MediaSession$QueueItem;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    return-void
.end method
