.class public abstract Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;
.super Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;
.implements Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;
.implements Lcom/samsung/android/app/music/download/Downloadable;
.implements Lcom/samsung/android/app/music/download/DownloadableChecker;
.implements Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;
.implements Lcom/samsung/android/app/musiclibrary/ui/Refreshable;
.implements Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;
.implements Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter<",
        "*>;>",
        "Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment<",
        "TT;>;",
        "Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;",
        "Lcom/samsung/android/app/music/browse/list/OnBannedTrackStatusChangedListener;",
        "Lcom/samsung/android/app/music/download/Downloadable;",
        "Lcom/samsung/android/app/music/download/DownloadableChecker;",
        "Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;",
        "Lcom/samsung/android/app/musiclibrary/ui/Refreshable;",
        "Lcom/samsung/android/app/musiclibrary/ui/analytics/ScreenIdGetter;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;"
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Landroid/view/View;

.field protected c:Landroid/view/View;

.field protected d:Landroid/view/ViewGroup;

.field protected e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

.field private f:Lcom/samsung/android/app/music/download/Downloadable;

.field private i:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

.field private j:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

.field private k:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

.field private l:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

.field private m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

.field private n:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

.field private o:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;Landroid/database/Cursor;)Z
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->b(Landroid/database/Cursor;)Z

    move-result p0

    return p0
.end method

.method private b(Landroid/database/Cursor;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    const-string v1, "is_celeb"

    .line 417
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    if-ltz v1, :cond_0

    .line 418
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    if-ne p1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)J
    .locals 5

    .line 425
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_2

    .line 426
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "source_id"

    .line 432
    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 433
    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "_id"

    .line 434
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const-string v2, "BrowseTrackFragment"

    .line 435
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertTrackId. trackId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", virtualId - "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v0

    .line 439
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v0, "BrowseTrackFragment"

    .line 441
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convertTrackId. track not found. trackId - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1

    :cond_2
    :goto_0
    const-string p1, "BrowseTrackFragment"

    const-string v0, "cursor is null"

    .line 427
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-wide v1
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 2
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

    .line 224
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    if-eqz p2, :cond_0

    .line 225
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 226
    new-instance p1, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$1;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;)V

    const-wide/16 v0, 0x3e8

    invoke-static {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/util/BrowseViewUtils;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Runnable;J)V

    .line 235
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->q()Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->d()V

    return-void
.end method

.method protected a(Landroid/view/View;)V
    .locals 2

    .line 241
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->a(Landroid/view/View;)V

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->c:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 244
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->n:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Landroid/view/View;)V

    .line 246
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    invoke-interface {p1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->t_()V

    :cond_0
    return-void
.end method

.method protected a(Landroid/view/View;IJ)V
    .locals 0

    .line 299
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->j:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    if-eqz p1, :cond_0

    .line 300
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->j:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    const/4 p3, 0x0

    invoke-interface {p1, p0, p2, p3}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILcom/samsung/android/app/music/browse/list/BrowsePlayRadio$PlayResult;)V

    :cond_0
    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;)V
    .locals 0

    .line 178
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->j:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    return-void
.end method

.method protected a(Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;)V
    .locals 1

    .line 342
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$2;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->setListItemMenuable(Lcom/samsung/android/app/musiclibrary/ui/list/ListItemMoreMenuable;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 384
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment$3;-><init>(Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter$AbsBuilder;

    return-void
.end method

.method public a(Ljava/lang/String;Z)V
    .locals 0

    .line 406
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->c()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 411
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/LoaderManager;->getLoader(I)Landroid/support/v4/content/Loader;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;

    .line 412
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;->c()V

    return-void
.end method

.method public d()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract o()Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 100
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 101
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_0

    .line 102
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 94
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a:Landroid/content/Context;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 215
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onDestroy()V

    .line 217
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->c()V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 199
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onDestroyView()V

    .line 200
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz v0, :cond_1

    .line 205
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->n:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->o:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->b(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 208
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->n:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    .line 209
    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->o:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    :cond_1
    return-void
.end method

.method public onItemClick(Landroid/view/View;IJ)V
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 286
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onItemClick() | position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " | id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " | view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Landroid/view/View;IJ)V

    .line 289
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->f()V

    return-void
.end method

.method public onListActionModeFinished(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onListActionModeStarted(Landroid/support/v7/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 47
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 167
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onResume()V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 161
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onStart()V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->q()Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->a()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 173
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onStop()V

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->q()Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;->b()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 108
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/browse/list/BrowseRecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p2, 0x3

    const v0, 0x7f0f003a

    const v1, 0x7f0f003d

    const/4 v2, 0x0

    .line 110
    invoke-virtual {p0, p2, v0, v1, v2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(IIIZ)V

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->o()Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->l:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    .line 115
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    invoke-direct {v0, p0, p0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater$TrackIdConverter;)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;)V

    .line 116
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0b0350

    invoke-direct {v0, p0, v1, v2}, Lcom/samsung/android/app/music/browse/list/BrowseSelectAllImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/app/Activity;I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 117
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->b_(I)V

    .line 118
    new-instance p2, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseCheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->r()Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->t()Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;)V

    .line 122
    new-instance p2, Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->j:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    invoke-direct {p2, p0, v0}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 124
    invoke-virtual {p0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 126
    new-instance p2, Lcom/samsung/android/app/music/download/MilkDownloadable;

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    const-string v1, "source_id"

    invoke-direct {p2, p0, v0, v1}, Lcom/samsung/android/app/music/download/MilkDownloadable;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->f:Lcom/samsung/android/app/music/download/Downloadable;

    const p2, 0x7f130372

    .line 128
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->b:Landroid/view/View;

    const p2, 0x7f13013e

    .line 129
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->c:Landroid/view/View;

    const p2, 0x7f130186

    .line 130
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->d:Landroid/view/ViewGroup;

    .line 132
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz p2, :cond_0

    .line 133
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->i:Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    invoke-interface {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->s()Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    .line 137
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->d:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;->a()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 139
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    const p2, 0x7f040055

    const v0, 0x7f0b02c4

    .line 144
    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->b(II)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->d()I

    move-result p2

    const/4 v0, 0x1

    invoke-virtual {p0, p2, v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a(IZ)V

    .line 148
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p2

    instance-of p2, p2, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    if-eqz p2, :cond_1

    .line 149
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->n:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    .line 150
    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->n:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->n()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;->a(Landroid/view/View;)V

    .line 151
    new-instance p2, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    const v0, 0x7f130167

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;-><init>(Lcom/samsung/android/app/musiclibrary/ui/BaseFragment;Landroid/view/View;)V

    iput-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->o:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    .line 153
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    .line 154
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->n:Lcom/samsung/android/app/music/browse/list/vi/ViewInCenterVi;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    .line 155
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->m:Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;

    iget-object p2, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->o:Lcom/samsung/android/app/music/browse/list/vi/NoNetworkViewInCenterVi;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/music/browse/list/vi/ScrollViController;->a(Lcom/samsung/android/app/music/browse/list/vi/ScrollViController$ScrollVi;)V

    :cond_1
    return-void
.end method

.method public p()Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->j:Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    return-object v0
.end method

.method public q()Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->k:Lcom/samsung/android/app/music/browse/list/BrowsePlayableUiUpdater;

    return-object v0
.end method

.method protected r()Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;
    .locals 2

    .line 194
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->l:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    invoke-direct {v0, p0, p0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackActionModeMenuImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/download/DownloadableChecker;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;)V

    return-object v0
.end method

.method protected s()Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;
    .locals 2

    .line 251
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    const/4 v1, 0x1

    .line 252
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    const/4 v1, 0x0

    .line 253
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    const/4 v1, 0x2

    .line 254
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    const/4 v1, 0x3

    .line 255
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    .line 256
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->p()Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a(Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;)Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;

    .line 257
    invoke-virtual {v0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager$Builder;->a()Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    .line 259
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->e:Lcom/samsung/android/app/music/browse/list/BrowseTrackHeaderManager;

    return-object v0
.end method

.method protected t()Lcom/samsung/android/app/music/browse/list/BrowsePlayableList;
    .locals 2

    .line 263
    new-instance v0, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;

    iget-object v1, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->l:Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/browse/list/BrowsePlayableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/music/browse/list/PlaylistInfoGetter;)V

    return-object v0
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .line 269
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->f:Lcom/samsung/android/app/music/download/Downloadable;

    if-eqz v0, :cond_0

    .line 318
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->f:Lcom/samsung/android/app/music/download/Downloadable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/Downloadable;->v()V

    :cond_0
    return-void
.end method

.method public w()Z
    .locals 6

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 326
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 330
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseBooleanArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 331
    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;

    invoke-virtual {v0, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/music/browse/list/BrowseTrackAdapter;->getCursor(I)Landroid/database/Cursor;

    move-result-object v4

    .line 333
    invoke-direct {p0, v4}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->b(Landroid/database/Cursor;)Z

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/BrowseTrackFragment;->a()I

    move-result v0

    sub-int/2addr v0, v3

    if-lez v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method protected x()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
