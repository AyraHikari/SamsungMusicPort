.class Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/framework/hardware/AirView$OnAirSeekBarPopupListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OnAirSeekBarPopupListenerImpl"
.end annotation


# instance fields
.field private final a:Landroid/app/Activity;

.field private final b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

.field private c:Landroid/view/View;

.field private d:Z

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;)V
    .locals 1

    .line 712
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x46

    .line 706
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->e:I

    const/4 v0, 0x0

    .line 708
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    .line 713
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->a:Landroid/app/Activity;

    .line 714
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    return-void
.end method

.method private b(I)Landroid/view/View;
    .locals 6

    .line 751
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/samsung/android/app/musiclibrary/R$layout;->hover_seekbar_popup_common:I

    .line 753
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c:Landroid/view/View;

    .line 756
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->d:Z

    if-nez v0, :cond_1

    .line 757
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 759
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    .line 760
    invoke-virtual {v3}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->a:Landroid/app/Activity;

    .line 761
    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/samsung/android/app/musiclibrary/R$dimen;->hover_popup_padding_horizontal:I

    .line 762
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 763
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 764
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->d:Z

    .line 768
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->b:Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$UiUpdater;->e()J

    move-result-wide v2

    int-to-long v4, p1

    mul-long v2, v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 769
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->a:Landroid/app/Activity;

    .line 770
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    div-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 771
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c:Landroid/view/View;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 773
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c(I)I

    move-result p1

    if-ltz p1, :cond_2

    .line 775
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->g:I

    .line 776
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c:Landroid/view/View;

    return-object p1

    :cond_2
    return-object v1
.end method

.method private c(I)I
    .locals 5

    .line 788
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x2

    div-int/2addr v0, v1

    const/16 v2, 0x28

    sub-int/2addr v0, v2

    const/4 v3, 0x0

    if-gez v0, :cond_0

    return v3

    .line 793
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->a:Landroid/app/Activity;

    invoke-static {v4}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->i(Landroid/app/Activity;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 794
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->e:I

    goto :goto_0

    :cond_1
    const/16 v2, 0x46

    .line 796
    iput v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->e:I

    .line 799
    :goto_0
    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->e:I

    const/4 v4, -0x1

    if-ge p1, v2, :cond_3

    .line 800
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    if-ne p1, v1, :cond_2

    return v4

    .line 804
    :cond_2
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    goto :goto_1

    .line 805
    :cond_3
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->e:I

    rsub-int v1, v1, 0x3e8

    if-le p1, v1, :cond_5

    .line 806
    iget p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    const/4 v1, 0x3

    if-ne p1, v1, :cond_4

    return v4

    .line 810
    :cond_4
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    mul-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 813
    :cond_5
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 817
    rem-int/lit8 p1, p1, 0xa

    mul-int/lit8 v0, p1, -0x1

    goto :goto_1

    .line 820
    :cond_6
    iput v1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    const/4 v0, 0x0

    :goto_1
    return v0
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Landroid/widget/SeekBar;)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    .line 729
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->d:Z

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Landroid/widget/SeekBar;I)Landroid/view/View;
    .locals 0

    const/4 p1, 0x0

    .line 735
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->f:I

    .line 736
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/widget/SeekBar;IZ)Landroid/view/View;
    .locals 0

    if-eqz p3, :cond_0

    .line 742
    invoke-direct {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->b(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public b()I
    .locals 1

    .line 724
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/player/soundplayer/SeekController$OnAirSeekBarPopupListenerImpl;->g:I

    return v0
.end method
