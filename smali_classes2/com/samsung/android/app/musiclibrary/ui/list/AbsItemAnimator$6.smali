.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;
.super Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;IIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic e:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;IILandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->e:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->b:I

    iput p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->c:I

    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    .line 291
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 292
    invoke-static {p1, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 294
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->c:I

    if-eqz v0, :cond_1

    .line 295
    invoke-static {p1, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_1
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 303
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->b:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 304
    invoke-static {p1, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 306
    :cond_0
    iget v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->c:I

    if-eqz v0, :cond_1

    .line 307
    invoke-static {p1, v1}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 310
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->d:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 311
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->e:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchMoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 312
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->e:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->f:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 313
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->e:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 286
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->e:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$6;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchMoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
