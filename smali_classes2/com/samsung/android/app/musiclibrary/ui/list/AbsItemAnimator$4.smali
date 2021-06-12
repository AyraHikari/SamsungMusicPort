.class Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;
.super Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->b(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

.field final synthetic b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

.field final synthetic c:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;Landroid/support/v7/widget/RecyclerView$ViewHolder;Landroid/support/v4/view/ViewPropertyAnimatorCompat;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->c:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$VpaListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->b:Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 196
    invoke-static {p1, v0}, Landroid/support/v13/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 197
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->c:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchRemoveFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 198
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->c:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->g:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 199
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->c:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->a()V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 1

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->c:Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator$4;->a:Landroid/support/v7/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->dispatchRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    return-void
.end method
