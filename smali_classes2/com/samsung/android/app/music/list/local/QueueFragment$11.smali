.class Lcom/samsung/android/app/music/list/local/QueueFragment$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/QueueFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/QueueFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/QueueFragment;)V
    .locals 0

    .line 773
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$11;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

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

    .line 776
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$11;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    iget-object p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->h(Lcom/samsung/android/app/music/list/local/QueueFragment;Z)Z

    .line 777
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$11;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/QueueFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/QueueFragment$11;->a:Lcom/samsung/android/app/music/list/local/QueueFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/QueueFragment;->f()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/NowPlayingListAdapter;->a(Z)V

    return-void
.end method
