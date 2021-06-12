.class public abstract Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "FocusController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapterView:Landroid/support/v7/widget/RecyclerView;

.field private mFocusedPosition:I

.field private final mFocusedViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<",
            "*>;"
        }
    .end annotation
.end field

.field private mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 896
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LyricsUx-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;

    .line 897
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder<",
            "*>;)V"
        }
    .end annotation

    .line 909
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 907
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    .line 910
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    return-void
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 0

    .line 894
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;
    .locals 0

    .line 894
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 894
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->attach(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .line 894
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->detach(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;)I
    .locals 0

    .line 894
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    return p0
.end method

.method private attach(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 943
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    .line 944
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 945
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private correctFocusPosition(ILcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)I
    .locals 5

    .line 1000
    iget v0, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->lastDir:I

    if-nez v0, :cond_0

    return p1

    .line 1004
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result v0

    :goto_0
    if-ltz p1, :cond_3

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 1009
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1010
    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->length()I

    move-result v2

    if-lez v2, :cond_2

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-ltz v1, :cond_2

    return p1

    .line 1013
    :cond_2
    iget v1, p2, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->lastDir:I

    sub-int/2addr p1, v1

    goto :goto_0

    :cond_3
    :goto_1
    return p1
.end method

.method private detach(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    const/4 v0, 0x0

    .line 952
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    .line 953
    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 954
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->clearFocus()V

    .line 955
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method

.method private dispatchFocusChanged(II)V
    .locals 2

    if-ne p1, p2, :cond_0

    return-void

    .line 1022
    :cond_0
    iput p2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    const/4 v0, 0x0

    .line 1024
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-eqz v1, :cond_1

    if-ltz p2, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result v1

    if-ge p2, v1, :cond_1

    .line 1025
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    .line 1027
    :cond_1
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->onLineFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    .line 1028
    invoke-virtual {p0, v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->notifyItemFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    return-void
.end method

.method private setLyrics(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;)V
    .locals 0

    .line 939
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    return-void
.end method


# virtual methods
.method protected abstract chooseFocusPosition(Landroid/support/v7/widget/LinearLayoutManager;III)I
.end method

.method final clearFocus()V
    .locals 2

    .line 995
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->TAG:Ljava/lang/String;

    const-string v1, "clearFocus()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 996
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    const/4 v1, -0x1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->dispatchFocusChanged(II)V

    return-void
.end method

.method final clearItemFocus()V
    .locals 3

    .line 990
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->notifyItemFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    return-void
.end method

.method final notifyItemFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedViewBinder:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;

    invoke-interface {v0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController$FocusedViewBinder;->onFocusChanged(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V

    return-void
.end method

.method protected onAttached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method protected onDetached(Landroid/view/ViewGroup;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    return-void
.end method

.method protected abstract onLineFocused(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;II)V
.end method

.method public final onScrolled(Landroid/support/v7/widget/RecyclerView;Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)V
    .locals 3

    .line 920
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    if-nez p1, :cond_0

    return-void

    .line 923
    :cond_0
    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;->isAutoScrolling()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 924
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 925
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->clearItemFocus()V

    :cond_1
    return-void

    .line 930
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mAdapterView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result p1

    .line 931
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    .line 932
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroid/support/v7/widget/LinearLayoutManager;->getChildCount()I

    move-result v1

    add-int/2addr v1, v0

    .line 933
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLayoutManager:Landroid/support/v7/widget/LinearLayoutManager;

    .line 934
    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->chooseFocusPosition(Landroid/support/v7/widget/LinearLayoutManager;III)I

    move-result p1

    .line 935
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->correctFocusPosition(ILcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$ScrollHelper$ScrollStatus;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->requestFocus(I)Z

    return-void
.end method

.method public final requestFocus(I)Z
    .locals 7

    .line 962
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-ltz p1, :cond_5

    .line 965
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    goto :goto_1

    .line 969
    :cond_1
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    const/4 v2, 0x1

    if-ne v0, p1, :cond_2

    return v2

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mLyrics:Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics;->getLine(I)Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 973
    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->length()I

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/data/Lyrics$LyricLine;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    goto :goto_0

    .line 977
    :cond_3
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->mFocusedPosition:I

    .line 978
    invoke-direct {p0, v0, p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->dispatchFocusChanged(II)V

    return v2

    :cond_4
    :goto_0
    return v1

    .line 966
    :cond_5
    :goto_1
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$FocusController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestFocus() - ignore requestFocus : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method
