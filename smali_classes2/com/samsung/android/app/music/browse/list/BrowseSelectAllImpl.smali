.class public Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;
.super Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private b:Lcom/samsung/android/app/music/network/NetworkManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/app/Activity;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    .line 28
    instance-of p3, p2, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p3, :cond_0

    .line 29
    check-cast p2, Lcom/samsung/android/app/music/network/NetworkManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->b:Lcom/samsung/android/app/music/network/NetworkManager;

    .line 31
    :cond_0
    new-instance p2, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;)Lcom/samsung/android/app/music/network/NetworkManager;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->b:Lcom/samsung/android/app/music/network/NetworkManager;

    return-object p0
.end method

.method private a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;)V
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->b:Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "BrowseSelectAllImpl"

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSelectAllViewByNetworkState. network - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->b:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v2}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->b:Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-interface {v0}, Lcom/samsung/android/app/music/network/NetworkManager;->getNetworkInfo()Lcom/samsung/android/app/music/network/NetworkInfo;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo;->a:Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;

    iget-boolean v0, v0, Lcom/samsung/android/app/music/network/NetworkInfo$NetworkState;->a:Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "BrowseSelectAllImpl"

    const-string v0, "updateSelectAllViewByNetworkState. network manager or holder is null!!"

    .line 68
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/network/NetworkInfo;)V
    .locals 0
    .param p1    # Lcom/samsung/android/app/music/network/NetworkInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 56
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V
    .locals 0

    .line 62
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 63
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;)V

    return-void
.end method

.method public d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 1

    .line 50
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object v0
.end method
