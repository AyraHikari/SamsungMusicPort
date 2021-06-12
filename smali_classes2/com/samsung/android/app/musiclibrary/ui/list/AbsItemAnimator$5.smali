.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;
.super Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Z

.field final synthetic c:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;ZLandroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 223
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->b:Z

    iput-object p4, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->c:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 1

    .line 231
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->b:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 232
    invoke-static {p1, v0}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    .line 238
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->c:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    .line 239
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 240
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->e:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 241
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 226
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->d:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$5;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchAddStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
