.class final Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:I

.field final synthetic d:Ljava/util/List;

.field final synthetic e:Z

.field final synthetic f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic g:I

.field final synthetic h:Landroid/animation/ValueAnimator;

.field final synthetic i:F

.field final synthetic j:F

.field final synthetic k:I

.field final synthetic l:Z

.field final synthetic m:I


# direct methods
.method constructor <init>(Landroid/view/View;Ljava/util/List;ILjava/util/List;ZLcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FFIZI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->c:I

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->d:Ljava/util/List;

    iput-boolean p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->e:Z

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput p7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->g:I

    iput-object p8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->h:Landroid/animation/ValueAnimator;

    iput p9, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->i:F

    iput p10, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->j:F

    iput p11, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->k:I

    iput-boolean p12, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->l:Z

    iput p13, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->m:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "animation"

    .line 154
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 155
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->j:F

    const/4 v2, 0x2

    const/4 v3, 0x0

    cmpg-float v1, v0, v1

    if-nez v1, :cond_0

    .line 156
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/view/View;

    invoke-virtual {v1, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 157
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

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

    .line 158
    invoke-virtual {v4, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_0

    .line 162
    :cond_0
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->k:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    .line 163
    iget-boolean v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->l:Z

    if-eqz v4, :cond_2

    .line 164
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 165
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

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

    .line 166
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/samsung/android/app/musiclibrary/R$id;->rear_layout:I

    if-ne v6, v7, :cond_1

    .line 167
    iget v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->k:I

    div-int/2addr v6, v2

    int-to-float v6, v6

    mul-float v6, v6, v0

    invoke-virtual {v5, v6}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 169
    :cond_1
    invoke-virtual {v5, v1}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_1

    .line 173
    :cond_2
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/view/View;

    const/4 v2, 0x1

    int-to-float v2, v2

    sub-float/2addr v2, v0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 175
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->i:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_5

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->a:Landroid/view/View;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->c:I

    invoke-virtual {v0, v1, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 177
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 419
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-gez v2, :cond_3

    invoke-static {}, Lkotlin/collections/CollectionsKt;->b()V

    :cond_3
    check-cast v4, Landroid/view/View;

    .line 178
    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->b:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    iget-object v6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    invoke-virtual {v4, v2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    move v2, v5

    goto :goto_2

    .line 181
    :cond_4
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->e:Z

    if-eqz v0, :cond_5

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Z)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    check-cast p1, Landroid/animation/Animator;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/animation/Animator;)V

    const-string p1, "UiList"

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " startShowCheckBoxAnimation() | checkboxWidth: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->m:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | checkBoxOffset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | layoutDirection: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$2;->f:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 185
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    return-void

    .line 154
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
