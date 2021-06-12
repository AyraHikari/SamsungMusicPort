.class final Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView$OnVisibilityChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/lyrics/LyricsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FixedHeaderController"
.end annotation


# instance fields
.field private final mArtistView:Landroid/widget/TextView;

.field private final mCloseView:Landroid/view/View;

.field private mIsVisible:Z

.field private final mTitleView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;)V
    .locals 2

    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f130344

    .line 669
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f130347

    .line 671
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mTitleView:Landroid/widget/TextView;

    const v0, 0x7f130348

    .line 672
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mArtistView:Landroid/widget/TextView;

    const v0, 0x7f130345

    .line 673
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mCloseView:Landroid/view/View;

    .line 675
    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/LyricsView;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->f(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 676
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mCloseView:Landroid/view/View;

    sget v0, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->TYPE_TOOLTIP:I

    .line 677
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/support/samsung/widget/HoverPopupWindowCompat;->setHoverPopupType(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method private setSelectedAll(Z)V
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mArtistView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 711
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onVisibilityChanged(I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 700
    :goto_0
    iput-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mIsVisible:Z

    .line 701
    iget-boolean p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mIsVisible:Z

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->setSelectedAll(Z)V

    return-void
.end method

.method public setOnCloseClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 705
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mCloseView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public startMarquee()V
    .locals 1

    .line 689
    iget-boolean v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mIsVisible:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 690
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->setSelectedAll(Z)V

    :cond_0
    return-void
.end method

.method public stopMarquee()V
    .locals 1

    const/4 v0, 0x0

    .line 695
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->setSelectedAll(Z)V

    return-void
.end method

.method public updateTrackInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 682
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mTitleView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mArtistView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 683
    iget-object v0, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mTitleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 684
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$FixedHeaderController;->mArtistView:Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
