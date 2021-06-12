.class public abstract Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowseShareable;
.implements Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;
.implements Lcom/samsung/android/app/music/list/LoadMoreManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter<",
        "*>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "TT;>;",
        "Lcom/samsung/android/app/music/browse/list/BrowseShareable;",
        "Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;",
        "Lcom/samsung/android/app/music/list/LoadMoreManager;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;

.field private b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

.field private c:Lcom/samsung/android/app/music/browse/list/ErrorHandler;

.field private d:Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private i:I

.field private j:Lcom/samsung/android/app/music/browse/list/BrowseShareable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->i:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)Ljava/lang/String;
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->p()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private b(IIIZ)V
    .locals 2
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 229
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->e:Landroid/view/View;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->e:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    .line 231
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 230
    invoke-interface {v0, p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    if-eqz p4, :cond_0

    .line 233
    iput p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->i:I

    .line 235
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->e:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->e:Landroid/view/View;

    instance-of v0, v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->i:I

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->e:Landroid/view/View;

    check-cast v0, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    const/4 v1, 0x0

    .line 243
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->e:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method private p()Ljava/lang/String;
    .locals 2

    .line 249
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected abstract a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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

.method protected a(Landroid/view/View;Lcom/samsung/android/app/music/network/NetworkManager;)Lcom/samsung/android/app/music/view/NoNetworkViewController;
    .locals 4
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/samsung/android/app/music/network/NetworkManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const v0, 0x7f130168

    .line 317
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    const v1, 0x7f130169

    .line 318
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 323
    :cond_0
    new-instance v2, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    new-instance v3, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$3;

    invoke-direct {v3, p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$3;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Landroid/view/View;)V

    invoke-direct {v2, v3, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;-><init>(Lcom/samsung/android/app/music/view/NoNetworkViewController$ContentView;Lcom/samsung/android/app/music/network/NetworkManager;)V

    .line 342
    invoke-virtual {v2, v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 343
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->k()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->b(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 345
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const/4 p2, 0x0

    .line 346
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(Z)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    const p2, 0x7f100675

    .line 347
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->c(I)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$2;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)V

    .line 348
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a(Lcom/samsung/android/app/music/view/NoNetworkViewController$RetryListener;)Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;

    move-result-object p1

    .line 354
    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController$Builder;->a()Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    return-object p1

    .line 319
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->p()Ljava/lang/String;

    move-result-object p1

    const-string p2, "onCreateNoNetworkController. maybe network error view stub is not included in root view"

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a(III)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 224
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(IIIZ)V

    return-void
.end method

.method public a(IIIZ)V
    .locals 1
    .param p2    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroid/support/annotation/ColorRes;
        .end annotation
    .end param

    .line 210
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->b(IIIZ)V

    if-eqz p4, :cond_0

    .line 213
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p4

    instance-of p4, p4, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    if-eqz p4, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p4

    check-cast p4, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 214
    invoke-interface {p4, p1, p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/sesl/Roundable;->a(ILjava/lang/Integer;)V

    .line 216
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 217
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2, p3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setBackgroundColor(I)V

    :cond_0
    return-void
.end method

.method protected a(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    const/4 v0, 0x2

    .line 196
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(ZI)V

    .line 198
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->d(I)V

    return-void
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 3
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

    .line 163
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a:Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a:Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->a(Z)V

    .line 165
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a:Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;Landroid/database/Cursor;)V

    .line 167
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_1

    .line 170
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 172
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->o()V

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->p()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onLoadFinished. item count - "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 180
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->p()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLoadError. e - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 185
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->c(Z)V

    .line 186
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz p1, :cond_1

    .line 187
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->a()V

    .line 189
    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->c:Lcom/samsung/android/app/music/browse/list/ErrorHandler;

    if-eqz p1, :cond_2

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->c:Lcom/samsung/android/app/music/browse/list/ErrorHandler;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/ErrorHandler;->a(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;)V
    .locals 0

    .line 266
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a:Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowseShareable;)V
    .locals 0

    .line 122
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 123
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->j:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    return-void
.end method

.method protected a(Z)V
    .locals 3

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->p()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRetry. byUser - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->i()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x3

    .line 290
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(ZI)V

    .line 291
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->j()Landroid/support/v4/content/Loader;

    move-result-object p1

    .line 292
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    if-eqz v0, :cond_0

    .line 293
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/Refreshable;->c()V

    :cond_0
    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 153
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    return-object p1
.end method

.method protected b(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 71
    new-instance v0, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->d:Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    return-void
.end method

.method public abstract d()I
.end method

.method protected e()V
    .locals 0

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->H()V

    return-void
.end method

.method public final g()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 255
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->d()I

    move-result v0

    return v0
.end method

.method public getScreenId()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->d:Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->d:Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/analytics/FirebaseScreenIdHelper;->getScreenId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected i()Z
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected j()Landroid/support/v4/content/Loader;
    .locals 2

    .line 302
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    return-object v0
.end method

.method protected k()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k_()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a:Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a:Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;->k_()V

    :cond_0
    return-void
.end method

.method public l()Z
    .locals 1

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->j:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->j:Lcom/samsung/android/app/music/browse/list/BrowseShareable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/browse/list/BrowseShareable;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected m()V
    .locals 1

    .line 363
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method

.method protected n()Landroid/view/View;
    .locals 1

    .line 369
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->f:Landroid/view/View;

    return-object v0
.end method

.method public final onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

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

    .line 145
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(ILandroid/os/Bundle;)Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    move-result-object p1

    .line 146
    new-instance p2, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$OnLoadErrorListenerWrapper;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$1;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->a(Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;)V

    return-object p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    const p3, 0x7f04002e

    const/4 v0, 0x0

    .line 87
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 128
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 129
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStartCalled()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/view/NoNetworkViewController;->onStopCalled()V

    .line 139
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 92
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const p2, 0x7f130166

    .line 94
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->e:Landroid/view/View;

    const p2, 0x7f13013d

    .line 95
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->f:Landroid/view/View;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/music/network/NetworkManager;

    if-eqz p2, :cond_0

    .line 99
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/app/music/network/NetworkManager;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/view/View;Lcom/samsung/android/app/music/network/NetworkManager;)Lcom/samsung/android/app/music/view/NoNetworkViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->b:Lcom/samsung/android/app/music/view/NoNetworkViewController;

    .line 102
    :cond_0
    new-instance p1, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowseLoadMoreHelper;)V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->r_()Lcom/samsung/android/app/music/browse/list/ErrorHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->c:Lcom/samsung/android/app/music/browse/list/ErrorHandler;

    .line 114
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->e()V

    return-void
.end method

.method protected r_()Lcom/samsung/android/app/music/browse/list/ErrorHandler;
    .locals 2

    .line 157
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseErrorHandlerImpl;-><init>(Landroid/app/Activity;)V

    return-object v0
.end method
