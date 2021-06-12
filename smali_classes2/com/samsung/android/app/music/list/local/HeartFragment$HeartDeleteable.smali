.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/Deleteable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HeartDeleteable"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deleteItems()V
    .locals 6

    .line 555
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 557
    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    const-string v2, "HTIT"

    const-string v3, "Delete"

    .line 556
    invoke-static {v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/HeartFragment;->a(I)[J

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    array-length v4, v1

    const/4 v5, 0x1

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    xor-int/2addr v4, v5

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v3

    :goto_1
    if-eqz v1, :cond_3

    .line 563
    new-instance v4, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v4, v5, v1}, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;-><init>(Ljava/lang/ref/WeakReference;[J)V

    .line 564
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v1, v2, [Lkotlin/Unit;

    invoke-virtual {v4, v0, v1}, Lcom/samsung/android/app/music/list/local/DeleteFavoritesTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 568
    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartDeleteable;->a:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-nez v1, :cond_4

    move-object v0, v3

    :cond_4
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c()V

    :cond_5
    return-void
.end method
