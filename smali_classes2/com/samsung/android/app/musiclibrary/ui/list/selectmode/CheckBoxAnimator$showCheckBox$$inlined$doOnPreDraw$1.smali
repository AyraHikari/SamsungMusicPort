.class public final Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Landroid/view/ViewTreeObserver;

.field final synthetic c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/view/ViewTreeObserver;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;IZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->d:I

    iput-boolean p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->e:Z

    iput-object p6, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->f:Landroid/view/View;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 2

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    .line 175
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->d:I

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildCount()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 176
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->safeNotifyDataSetChanged()V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 180
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->e:Z

    if-eqz v0, :cond_3

    .line 181
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->f:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/view/View;)V

    goto :goto_1

    .line 183
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/support/v7/widget/RecyclerView;)I

    .line 184
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->c:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->b(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;Landroid/support/v7/widget/RecyclerView;)I

    .line 69
    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    const-string v1, "vto"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->b:Landroid/view/ViewTreeObserver;

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto :goto_2

    .line 70
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator$showCheckBox$$inlined$doOnPreDraw$1;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnPreDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :goto_2
    const/4 v0, 0x1

    return v0
.end method
