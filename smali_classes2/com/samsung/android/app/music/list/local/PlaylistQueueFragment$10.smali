.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;
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

    .line 559
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$10;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$10;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$10;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-static {v1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/MusicDefaultItemAnimator;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method
