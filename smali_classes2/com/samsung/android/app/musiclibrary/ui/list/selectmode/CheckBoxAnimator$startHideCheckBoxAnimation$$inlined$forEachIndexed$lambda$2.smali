.class final Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->c(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/CheckBox;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Z

.field final synthetic f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic g:I

.field final synthetic h:Landroid/animation/ValueAnimator;

.field final synthetic i:F

.field final synthetic j:Z

.field final synthetic k:F

.field final synthetic l:I

.field final synthetic m:Z


# direct methods
.method constructor <init>(Landroid/widget/CheckBox;Ljava/util/List;ILjava/util/List;ZLcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FZFIZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/widget/CheckBox;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->c:I

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->d:Ljava/util/List;

    iput-boolean p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->e:Z

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput p7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->g:I

    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->h:Landroid/animation/ValueAnimator;

    iput p9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->i:F

    iput-boolean p10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->j:Z

    iput p11, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->k:F

    iput p12, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->l:I

    iput-boolean p13, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->m:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "animation"

    .line 278
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 279
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->k:F

    const/4 v2, 0x2

    const/4 v3, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    .line 280
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2, v3}, Landroid/widget/CheckBox;->setLayerType(ILandroid/graphics/Paint;)V

    .line 281
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    .line 414
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 282
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 286
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->l:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    .line 287
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/widget/CheckBox;

    const/4 v5, 0x1

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 288
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->m:Z

    if-eqz v4, :cond_2

    .line 289
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/widget/CheckBox;

    invoke-virtual {v4, v1}, Landroid/widget/CheckBox;->setTranslationX(F)V

    .line 290
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    check-cast v4, Ljava/lang/Iterable;

    .line 416
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 291
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/samsung/android/app/musiclibrary/R$id;->rear_layout:I

    if-ne v6, v7, :cond_1

    .line 292
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->l:I

    div-int/2addr v6, v2

    int-to-float v6, v6

    mul-float v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 294
    :cond_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 299
    :cond_2
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->i:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_8

    .line 300
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/widget/CheckBox;

    const-string v1, "it"

    .line 301
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 302
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setTranslationX(F)V

    const/16 v4, 0x8

    .line 303
    invoke-virtual {v0, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 306
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->m:Z

    if-eqz v0, :cond_3

    .line 307
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 418
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 308
    invoke-virtual {v4, v2}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_2

    .line 312
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/widget/CheckBox;

    iget v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->c:I

    invoke-virtual {v0, v2, v3}, Landroid/widget/CheckBox;->setLayerType(ILandroid/graphics/Paint;)V

    .line 313
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 421
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_4

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_4
    check-cast v4, Landroid/view/View;

    .line 314
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    move v2, v5

    goto :goto_3

    .line 317
    :cond_5
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->e:Z

    if-eqz v0, :cond_8

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Z)V

    .line 319
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    check-cast p1, Landroid/animation/Animator;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/animation/Animator;)V

    .line 320
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->j:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setGoToTopEnabled(Z)V

    .line 321
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_6

    move-object p1, v3

    :cond_6
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    goto :goto_4

    .line 322
    :cond_7
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startHideCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_8
    :goto_4
    return-void

    .line 278
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
