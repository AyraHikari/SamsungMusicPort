.class final Lcom/samsung/android/app/music/list/local/LockQueueFragment$onItemClickListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/LockQueueFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/LockQueueFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/view/View;IJ)V
    .locals 0

    const-string p3, "<anonymous parameter 0>"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/LockQueueFragment$onItemClickListener$1;->a:Lcom/samsung/android/app/music/list/local/LockQueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;

    .line 78
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/LockQueueFragment$LockQueueAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object p1

    .line 79
    instance-of p3, p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    if-eqz p3, :cond_0

    .line 80
    check-cast p1, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/core/service/queue/INowPlayingCursor;->getQueuePosition(I)I

    move-result p2

    :cond_0
    const/4 p1, 0x1

    .line 83
    invoke-static {p2, p1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/ServiceCoreUtils;->openQueuePosition(IZ)V

    :cond_1
    return-void
.end method
