.class public abstract Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;",
        "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
        "Landroid/database/Cursor;",
        ">;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;",
        "Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

.field private b:Landroid/view/View;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Lcom/samsung/android/app/music/view/NoNetworkViewController;

.field private f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

.field private g:Lcom/samsung/android/app/music/browse/list/ErrorHandler;

.field private h:Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;)Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;)Landroid/view/View;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->c:Landroid/view/View;

    return-object p0
.end method

.method protected static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tab_fragment_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract a()Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;
.end method

.method protected abstract a(I)V
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Landroid/database/Cursor;",
            ")V"
        }
    .end annotation

    .line 167
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a()V

    if-eqz p2, :cond_0

    .line 168
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 169
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->b(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 171
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a(Z)V

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string p1, "VerticalTabFragment"

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadError. e - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 182
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a(Z)V

    .line 183
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz p1, :cond_0

    .line 184
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a()V

    .line 186
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->g:Lcom/samsung/android/app/music/browse/list/ErrorHandler;

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->g:Lcom/samsung/android/app/music/browse/list/ErrorHandler;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/ErrorHandler;->a(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 53
    new-instance v0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->h:Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    return-void
.end method

.method protected a(Z)V
    .locals 1

    .line 196
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->d:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected b()Landroid/support/v4/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    .line 132
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected b(Z)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method protected c()Lcom/samsung/android/app/music/browse/list/ErrorHandler;
    .locals 2

    .line 139
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method

.method protected d()Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    return-object v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->h:Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->h:Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->getScreenId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    move-result-object p1

    .line 161
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const p2, 0x7f040019

    const/4 p3, 0x0

    .line 68
    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 27
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onLoaderReset(Landroid/support/v4/content/Loader;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/content/Loader<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStartCalled()V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStart()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz v0, :cond_0

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStopCalled()V

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 73
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f130156

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->c:Landroid/view/View;

    const p2, 0x7f13013d

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->d:Landroid/view/View;

    const p2, 0x7f130157

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->b:Landroid/view/View;

    const p2, 0x7f130158

    .line 78
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    .line 79
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->a(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$OnTabSelectedListener;)V

    .line 87
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a()Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    .line 88
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->a:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->f:Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout;->setAdapter(Lcom/samsung/android/app/music/widget/VerticalScrollTabLayout$Adapter;)V

    .line 90
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p2, :cond_0

    .line 91
    new-instance p2, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    new-instance v0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$3;-><init>(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;Landroid/view/View;)V

    .line 106
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-direct {p2, v0, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    const/4 p1, 0x1

    .line 107
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p2

    const v0, 0x7f130159

    .line 108
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p2

    const v0, 0x7f13015b

    .line 109
    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p2

    .line 110
    invoke-virtual {p2, p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const p2, 0x7f100675

    .line 111
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 112
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;)V

    .line 113
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->e:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    .line 127
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->c()Lcom/samsung/android/app/music/browse/list/ErrorHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/details/VerticalTabFragment;->g:Lcom/samsung/android/app/music/browse/list/ErrorHandler;

    return-void
.end method
