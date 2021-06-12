.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator$RemoveItemAnimatorFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)V
    .locals 0

    .line 417
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->b(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$5;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
