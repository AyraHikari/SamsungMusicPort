.class final Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;
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
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic b:I

.field final synthetic c:Landroid/animation/ValueAnimator;

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:I

.field final synthetic g:Z

.field final synthetic h:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;ILandroid/animation/ValueAnimator;FFIZI)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->b:I

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->c:Landroid/animation/ValueAnimator;

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->d:F

    iput p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->e:F

    iput p6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->f:I

    iput-boolean p7, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->g:Z

    iput p8, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    const-string v0, "valueAnimator"

    .line 139
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 140
    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->d:F

    cmpg-float v0, v0, v1

    if-nez v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Z)V

    .line 142
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    check-cast p1, Landroid/animation/Animator;

    invoke-static {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/animation/Animator;)V

    .line 143
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$startShowCheckBoxAnimation$$inlined$forEachIndexed$lambda$1;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_2
    :goto_0
    return-void

    .line 139
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
