.class public Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;
    }
.end annotation


# static fields
.field private static final A:Ljava/lang/String; = "MilkVideoControl"


# instance fields
.field private B:Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

.field private C:Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;

.field private D:Landroid/widget/SeekBar;

.field private E:Landroid/widget/ImageButton;

.field private F:Landroid/widget/LinearLayout;

.field private G:Z

.field private H:J

.field private final I:Landroid/content/Context;

.field private J:Z

.field private K:J

.field private L:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 57
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->G:Z

    const-wide/16 v1, 0x0

    .line 46
    iput-wide v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->H:J

    .line 58
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->I:Landroid/content/Context;

    .line 59
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->x:Z

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->C:Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;Z)Z
    .locals 0

    .line 31
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->G:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/view/ViewGroup;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->j:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic c(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Landroid/widget/TextView;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->q:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->q:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->t:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    return-object p0
.end method

.method static synthetic h(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->q:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-object p0
.end method

.method static synthetic i(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->q:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    return-object p0
.end method

.method static synthetic j(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->t:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    return-object p0
.end method


# virtual methods
.method protected a()V
    .locals 6

    .line 276
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 280
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->l()Z

    move-result v0

    .line 281
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->z:Z

    const-wide/16 v2, 0x12c

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 282
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 283
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 285
    :cond_1
    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->z:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    .line 286
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 287
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 288
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(J)V
    .locals 2

    .line 225
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->v:J

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_2

    .line 227
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->y:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->w:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->G:Z

    if-nez v0, :cond_1

    .line 233
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->n:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$3;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public a(JJI)V
    .locals 7
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p3    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param
    .param p5    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
            to = 0x64L
        .end annotation
    .end param

    .line 125
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->K:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->L:I

    if-ne v0, p5, :cond_0

    return-void

    .line 129
    :cond_0
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->K:J

    .line 130
    iput p5, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->L:I

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->B:Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

    if-eqz v0, :cond_1

    .line 132
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->B:Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;->a(JJI)V

    .line 135
    :cond_1
    iget-boolean p3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->G:Z

    if-nez p3, :cond_2

    .line 139
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    iget-object p4, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    .line 140
    invoke-virtual {p4}, Landroid/widget/SeekBar;->getMax()I

    move-result p4

    int-to-float p4, p4

    int-to-float p5, p5

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p5, v0

    mul-float p4, p4, p5

    float-to-int p4, p4

    .line 139
    invoke-virtual {p3, p4}, Landroid/widget/SeekBar;->setSecondaryProgress(I)V

    .line 141
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    long-to-int p4, p1

    invoke-virtual {p3, p4}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 142
    iget-object p3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method protected a(Z)V
    .locals 5

    .line 245
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->x:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 249
    :cond_0
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->z:Z

    const-wide/16 v1, 0x12c

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->l()Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    new-instance v3, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    invoke-direct {v3, v4, p1, v1, v2}, Lcom/devbrackets/android/exomedia/ui/animation/TopViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 254
    :cond_2
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->w:Z

    if-nez v0, :cond_3

    .line 255
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->j:Landroid/view/ViewGroup;

    new-instance v3, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->j:Landroid/view/ViewGroup;

    invoke-direct {v3, v4, p1, v1, v2}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 260
    :cond_3
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->x:Z

    .line 261
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->m()V

    .line 263
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->x:Z

    if-nez p1, :cond_4

    .line 264
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->f:Landroid/widget/ImageButton;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->E:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_0

    .line 267
    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->f:Landroid/widget/ImageButton;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 268
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->J:Z

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->I:Landroid/content/Context;

    invoke-static {p1}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 269
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->E:Landroid/widget/ImageButton;

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_5
    :goto_0
    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 338
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->c(Z)V

    .line 339
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->f:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b020c

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0b020d

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 339
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 295
    iget-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->w:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 299
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->w:Z

    .line 300
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->j:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 301
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->i:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->b()V

    return-void
.end method

.method public e()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->x:Z

    return v0
.end method

.method protected f()V
    .locals 2

    const v0, 0x7f1303fb

    .line 150
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    .line 151
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->H:J

    const v0, 0x7f1303fe

    .line 153
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->F:Landroid/widget/LinearLayout;

    const v0, 0x7f1303fc

    .line 155
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a:Landroid/widget/TextView;

    const v0, 0x7f1303fd

    .line 156
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->b:Landroid/widget/TextView;

    const v0, 0x7f1303f5

    .line 158
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->c:Landroid/widget/TextView;

    const v0, 0x7f1303f7

    .line 159
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->d:Landroid/widget/TextView;

    const v0, 0x7f1303f8

    .line 160
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->e:Landroid/widget/TextView;

    const v0, 0x7f1303f6

    .line 162
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 163
    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$1;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f130402

    .line 170
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->E:Landroid/widget/ImageButton;

    .line 171
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->E:Landroid/widget/ImageButton;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$2;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f130400

    .line 178
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->f:Landroid/widget/ImageButton;

    .line 179
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->f:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const v0, 0x7f1303ff

    .line 181
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->g:Landroid/widget/ImageButton;

    const v0, 0x7f130401

    .line 182
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->h:Landroid/widget/ImageButton;

    const v0, 0x7f130372

    .line 184
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->i:Landroid/widget/ProgressBar;

    const v0, 0x7f1303f9

    .line 186
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->j:Landroid/view/ViewGroup;

    const v0, 0x7f1303f4

    .line 187
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->k:Landroid/view/ViewGroup;

    return-void
.end method

.method protected g()V
    .locals 2

    .line 192
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->g()V

    .line 193
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    new-instance v1, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl$SeekBarChanged;-><init>(Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 333
    iget-wide v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->H:J

    return-wide v0
.end method

.method public getExtraViews()Ljava/util/List;
    .locals 4
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-gtz v0, :cond_0

    .line 211
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->getExtraViews()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 215
    :cond_0
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 217
    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->F:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method protected getLayoutResource()I
    .locals 1

    const v0, 0x7f040159

    return v0
.end method

.method public o()V
    .locals 3

    .line 308
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 312
    iput-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->w:Z

    .line 313
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 314
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->i:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 316
    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->b(Z)V

    return-void
.end method

.method public p()V
    .locals 1

    .line 320
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->x:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a(Z)V

    return-void
.end method

.method public q()V
    .locals 2

    const/4 v0, 0x0

    .line 328
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->b(Z)V

    .line 329
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->o:Lcom/devbrackets/android/exomedia/util/Repeater;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/devbrackets/android/exomedia/util/Repeater;->a(Lcom/devbrackets/android/exomedia/util/Repeater$RepeatListener;)V

    return-void
.end method

.method public setControlButtonListener(Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->C:Lcom/samsung/android/app/music/milk/store/videoplayer/VideoControlButtonListener;

    return-void
.end method

.method public setDuration(J)V
    .locals 2
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 115
    iput-wide p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->H:J

    .line 116
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->b:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method setIsMultiWindowMode(Z)V
    .locals 1

    .line 96
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->J:Z

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->E:Landroid/widget/ImageButton;

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->J:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->I:Landroid/content/Context;

    .line 98
    invoke-static {v0}, Lcom/samsung/android/app/music/support/samsung/desktopmode/DesktopModeManagerCompat;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x4

    .line 97
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    return-void
.end method

.method public setOnUpdateProgressListener(Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->B:Lcom/samsung/android/app/music/milk/store/videoplayer/OnUpdateProgressListener;

    return-void
.end method

.method public setPosition(J)V
    .locals 2
    .param p1    # J
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x0L
        .end annotation
    .end param

    .line 109
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->a:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->D:Landroid/widget/SeekBar;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 346
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setTitle(Ljava/lang/CharSequence;)V

    .line 347
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->c:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 348
    sget-object v0, Lcom/samsung/android/app/music/milk/store/videoplayer/MilkVideoControl;->A:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setTitle : title - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
