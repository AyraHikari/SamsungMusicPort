.class Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


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

    .line 567
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$11;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 570
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$11;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->d(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)Z

    .line 571
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$11;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment$11;->a:Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueAdapter;->getItemCount()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;->e(Lcom/samsung/android/app/music/list/local/PlaylistQueueFragment;Z)V

    return-void
.end method
