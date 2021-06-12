.class public Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;
.super Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RippleTranslateAnimation;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;,
        Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;
    }
.end annotation


# instance fields
.field protected A:Landroid/widget/ProgressBar;

.field protected B:Landroid/widget/ImageView;

.field protected C:Landroid/view/ViewGroup;

.field protected D:Landroid/widget/ImageButton;

.field protected E:Landroid/widget/ImageButton;

.field protected F:Landroid/view/View;

.field protected G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-direct {p1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 6

    .line 226
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->x:Z

    if-nez v0, :cond_0

    return-void

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->l()Z

    move-result v0

    .line 231
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->z:Z

    const-wide/16 v2, 0x12c

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 232
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 233
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k:Landroid/view/ViewGroup;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 234
    :cond_1
    iget-boolean v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->z:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 235
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearAnimation()V

    .line 236
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v4, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->k:Landroid/view/ViewGroup;

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_3
    :goto_0
    return-void
.end method

.method protected a(I)V
    .locals 2

    .line 201
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->a(I)V

    .line 203
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_rewind_white:I

    invoke-static {v0, v1, p1}, Lcom/devbrackets/android/exomedia/util/ResourceUtil;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 204
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 206
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/devbrackets/android/exomedia/R$drawable;->exomedia_ic_fast_forward_white:I

    invoke-static {v0, v1, p1}, Lcom/devbrackets/android/exomedia/util/ResourceUtil;->a(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 207
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public a(JJI)V
    .locals 1
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

    .line 110
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    iget-object p4, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    invoke-virtual {p4}, Landroid/widget/ProgressBar;->getMax()I

    move-result p4

    int-to-float p4, p4

    int-to-float p5, p5

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p5, v0

    mul-float p4, p4, p5

    float-to-int p4, p4

    invoke-virtual {p3, p4}, Landroid/widget/ProgressBar;->setSecondaryProgress(I)V

    .line 111
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    long-to-int p4, p1

    invoke-virtual {p3, p4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 112
    iget-object p3, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->a:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .line 335
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusRightId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 340
    :cond_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 342
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->a(Landroid/view/View;)V

    return-void

    .line 346
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 347
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->F:Landroid/view/View;

    .line 348
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method

.method protected a(Z)V
    .locals 5

    .line 212
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->x:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 216
    :cond_0
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->w:Z

    if-nez v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->C:Landroid/view/ViewGroup;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;

    iget-object v2, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->C:Landroid/view/ViewGroup;

    const-wide/16 v3, 0x12c

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/devbrackets/android/exomedia/ui/animation/BottomViewHideShowAnimation;-><init>(Landroid/view/View;ZJ)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->startAnimation(Landroid/view/animation/Animation;)V

    .line 220
    :cond_1
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->x:Z

    .line 221
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->m()V

    return-void
.end method

.method protected b(J)V
    .locals 1

    .line 295
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->q:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->q:Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;

    invoke-interface {v0, p1, p2}, Lcom/devbrackets/android/exomedia/listener/VideoControlsSeekListener;->a(J)Z

    move-result v0

    if-nez v0, :cond_1

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->t:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0, p1, p2}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->a(J)Z

    :cond_1
    return-void
.end method

.method protected b(Landroid/view/View;)V
    .locals 2

    .line 357
    invoke-virtual {p1}, Landroid/view/View;->getNextFocusLeftId()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 362
    :cond_0
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 363
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 364
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->b(Landroid/view/View;)V

    return-void

    .line 368
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 369
    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->F:Landroid/view/View;

    .line 370
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    return-void
.end method

.method public e(Z)V
    .locals 1

    .line 242
    iget-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->w:Z

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 246
    iput-boolean p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->w:Z

    .line 247
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->j:Landroid/view/ViewGroup;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 248
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->B:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->i:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 251
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->b()V

    return-void
.end method

.method protected f()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->f()V

    .line 162
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_video_progress:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    .line 164
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_rewind_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    .line 165
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_fast_forward_btn:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    .line 166
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_leanback_ripple:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->B:Landroid/widget/ImageView;

    .line 167
    sget v0, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_parent:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->C:Landroid/view/ViewGroup;

    return-void
.end method

.method protected g()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->g()V

    .line 173
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$1;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$1;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 179
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    new-instance v1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$2;

    invoke-direct {v1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$2;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->g:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 188
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 189
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->f:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 190
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 191
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->h:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->G:Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$ButtonFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    return-void
.end method

.method protected getLayoutResource()I
    .locals 1

    .line 91
    sget v0, Lcom/devbrackets/android/exomedia/R$layout;->exomedia_default_controls_leanback:I

    return v0
.end method

.method protected h()V
    .locals 1

    .line 196
    sget v0, Lcom/devbrackets/android/exomedia/R$color;->exomedia_default_controls_leanback_button_selector:I

    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->a(I)V

    return-void
.end method

.method public o()V
    .locals 3

    .line 256
    iget-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->w:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 260
    iput-boolean v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->w:Z

    .line 261
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->j:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->B:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 263
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->i:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 265
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->b(Z)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->onAttachedToWindow()V

    .line 85
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->f:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->requestFocus()Z

    .line 86
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->f:Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->F:Landroid/view/View;

    return-void
.end method

.method protected p()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->r:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->r:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->f()Z

    move-result v0

    if-nez v0, :cond_1

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->t:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->f()Z

    :cond_1
    return-void
.end method

.method protected q()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->r:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->r:Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;

    invoke-interface {v0}, Lcom/devbrackets/android/exomedia/listener/VideoControlsButtonListener;->g()Z

    move-result v0

    if-nez v0, :cond_1

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->t:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;->g()Z

    :cond_1
    return-void
.end method

.method protected r()V
    .locals 1

    .line 306
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->b()V

    .line 308
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->p:Lcom/devbrackets/android/exomedia/ui/widget/VideoView;

    invoke-virtual {v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoView;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->d()V

    :cond_0
    return-void
.end method

.method protected s()V
    .locals 2

    .line 318
    new-instance v0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;

    invoke-direct {v0, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$RemoteKeyListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    .line 319
    invoke-virtual {p0, v0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 322
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->f:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 323
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->g:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 324
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->h:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 325
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 326
    iget-object v1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    return-void
.end method

.method public setDuration(J)V
    .locals 2

    .line 102
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getMax()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->b:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    return-void
.end method

.method public setFastForwardButtonEnabled(Z)V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->u:Landroid/util/SparseBooleanArray;

    sget v1, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_fast_forward_btn:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    return-void
.end method

.method public setFastForwardButtonRemoved(Z)V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setFastForwardDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->D:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public setPosition(J)V
    .locals 2

    .line 96
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->a:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/devbrackets/android/exomedia/util/TimeFormatUtil;->a(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->A:Landroid/widget/ProgressBar;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    return-void
.end method

.method public setRewindButtonEnabled(Z)V
    .locals 2

    .line 131
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 133
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->u:Landroid/util/SparseBooleanArray;

    sget v1, Lcom/devbrackets/android/exomedia/R$id;->exomedia_controls_rewind_btn:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_0
    return-void
.end method

.method public setRewindButtonRemoved(Z)V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public setRewindDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->E:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method protected setup(Landroid/content/Context;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControls;->setup(Landroid/content/Context;)V

    .line 77
    new-instance p1, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;

    invoke-direct {p1, p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback$LeanbackInternalListener;-><init>(Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;)V

    iput-object p1, p0, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->t:Lcom/devbrackets/android/exomedia/ui/widget/VideoControls$InternalListener;

    .line 78
    invoke-virtual {p0}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->s()V

    const/4 p1, 0x1

    .line 79
    invoke-virtual {p0, p1}, Lcom/devbrackets/android/exomedia/ui/widget/VideoControlsLeanback;->setFocusable(Z)V

    return-void
.end method
