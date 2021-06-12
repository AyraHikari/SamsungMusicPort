.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;
.super Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;Landroid/support/v4/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->a:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->c:Landroid/view/View;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 388
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 389
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->c:Landroid/view/View;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 390
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/support/v13/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 391
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->c:Landroid/view/View;

    invoke-static {p1, v0}, Landroid/support/v13/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 392
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->a:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchChangeFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    .line 393
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->h:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->a:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 394
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    .line 383
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$8;->a:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$ChangeInfo;->b:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchChangeStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;Z)V

    return-void
.end method
