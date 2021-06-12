.class final Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;->deleteItemsInternal(Landroid/app/Activity;[J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;

.field final synthetic b:Landroid/app/Activity;

.field final synthetic c:[J


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;Landroid/app/Activity;[J)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;->c:[J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 318
    new-instance p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;

    iget-object p2, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;->b:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;->c:[J

    const/4 v1, 0x0

    invoke-direct {p1, p2, v0, v1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;-><init>(Landroid/app/Activity;[JZ)V

    .line 319
    sget-object p2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DeleteDownloadBasketTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 320
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable$deleteItemsInternal$1;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment$DownloadBasketDeletable;->a:Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/downloadbasket/DownloadBasketBaseFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object p1

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;->c()V

    :cond_1
    return-void
.end method
