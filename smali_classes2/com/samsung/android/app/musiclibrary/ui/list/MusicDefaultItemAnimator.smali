.class public Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;
.super Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;
    }
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private i:Z

.field private j:Z

.field private k:Z

.field private final l:Ljava/lang/Runnable;

.field private m:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 39
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;-><init>()V

    .line 25
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->l:Ljava/lang/Runnable;

    .line 40
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->setSupportsChangeAnimations(Z)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->m:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->j:Z

    return p1
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->i:Z

    return p1
.end method

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->k:Z

    return p1
.end method

.method private d()V
    .locals 3

    .line 98
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->i:Z

    if-nez v0, :cond_0

    const-string v0, "UiList"

    .line 99
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " postRemoveFinishedListenerRunner()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->postOnAnimation(Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->i:Z

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 106
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->i:Z

    if-eqz v0, :cond_0

    const-string v0, "UiList"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " cancelRemoveFinishedListenerRunner()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->a:Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->l:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->i:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->m:Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;

    return-void
.end method

.method public animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->e()V

    .line 65
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->animateRemove(Landroid/support/v7/widget/RecyclerView$ViewHolder;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    .line 89
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->j:Z

    return v0
.end method

.method public c()V
    .locals 3

    const-string v0, "UiList"

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " setDeleteRequested()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 94
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->j:Z

    return-void
.end method

.method public onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 123
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->onAddFinished(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 124
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x3ebd70a4    # 0.37f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 70
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->onRemoveStarting(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 71
    iget-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->k:Z

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 72
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->k:Z

    .line 73
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->isRunning(Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    :cond_0
    return-void
.end method

.method public recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;
    .locals 3
    .param p1    # Landroid/support/v7/widget/RecyclerView$State;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v7/widget/RecyclerView$State;",
            "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;"
        }
    .end annotation

    const-string v0, "UiList"

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " recordPreLayoutInformation - mDeleteRequested : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->j:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->j:Z

    if-eqz v0, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->d()V

    .line 59
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/musiclibrary/ui/list/AbsItemAnimator;->recordPreLayoutInformation(Landroid/support/v7/widget/RecyclerView$State;Landroid/support/v7/widget/RecyclerView$ViewHolder;ILjava/util/List;)Landroid/support/v7/widget/RecyclerView$ItemAnimator$ItemHolderInfo;

    move-result-object p1

    return-object p1
.end method
