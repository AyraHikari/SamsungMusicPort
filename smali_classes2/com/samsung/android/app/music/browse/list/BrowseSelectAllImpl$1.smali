.class Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;
.super Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacksAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onFragmentStarted(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a(Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 35
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a(Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManager;->addOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method

.method public onFragmentStopped(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 41
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a(Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 42
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;

    invoke-static {p1}, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;->a(Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;)Lcom/samsung/android/app/music/network/NetworkManager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl$1;->a:Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/network/NetworkManager;->removeOnNetworkStateChangedListener(Lcom/samsung/android/app/music/network/NetworkManager$OnNetworkStateChangedListener;)V

    :cond_0
    return-void
.end method
