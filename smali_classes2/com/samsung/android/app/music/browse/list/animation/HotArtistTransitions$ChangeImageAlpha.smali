.class Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$ChangeImageAlpha;
.super Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChangeImageAlpha"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 229
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;
    .locals 2
    .param p1    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/support/transition/TransitionValues;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    if-eqz p3, :cond_0

    .line 236
    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    const v1, 0x7f13016b

    .line 237
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 238
    iget-object p1, p3, Landroid/support/transition/TransitionValues;->view:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    const-string p2, "HotArtistTransitions.ChangeImageAlpha"

    .line 239
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "createAnimator. end drawable - "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/high16 p2, 0x3f800000    # 1.0f

    .line 240
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    const-string p2, "alpha"

    const/4 p3, 0x2

    .line 241
    new-array p3, p3, [F

    fill-array-data p3, :array_0

    invoke-static {p2, p3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    const/4 p3, 0x1

    .line 242
    new-array p3, p3, [Landroid/animation/PropertyValuesHolder;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    invoke-static {p1, p3}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p1

    return-object p1

    .line 244
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/browse/list/animation/HotArtistTransitions$TransitionAdapter;->createAnimator(Landroid/view/ViewGroup;Landroid/support/transition/TransitionValues;Landroid/support/transition/TransitionValues;)Landroid/animation/Animator;

    move-result-object p1

    return-object p1

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method
