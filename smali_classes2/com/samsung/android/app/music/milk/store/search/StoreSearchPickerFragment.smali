.class public Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;
.super Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;


# instance fields
.field private d:Lcom/samsung/android/app/music/search/SelectAllObservable;

.field private e:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;-><init>()V

    .line 184
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->n()V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;Lcom/samsung/android/app/music/search/SearchConstants$SearchType;)Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;
    .locals 3

    .line 57
    new-instance v0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;-><init>()V

    .line 58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "keyword"

    .line 59
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "display_type"

    .line 60
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "store_type"

    .line 61
    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 62
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private h(Z)V
    .locals 1

    .line 173
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(Z)V

    :cond_0
    return-void
.end method

.method private n()V
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 157
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->w_()I

    move-result v0

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->a()I

    move-result v1

    .line 159
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    if-lez v1, :cond_0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {v2, v1, v0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(IZ)V

    .line 161
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .line 166
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    const/4 v1, 0x0

    invoke-interface {v0, v1, v1}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(IZ)V

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_0
    return-void
.end method


# virtual methods
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

    .line 193
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 194
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 195
    :goto_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->h(Z)V

    .line 196
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->n()V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 p1, 0x2

    .line 201
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->b_(I)V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->o()V

    .line 203
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->e:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    sget-object v0, Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;->STORE_AUTO_COMPLETE:Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;->a(Lcom/samsung/android/app/music/activity/SearchActivity$SearchFragmentTypes;)V

    const/4 p1, 0x0

    return p1
.end method

.method protected b_(I)V
    .locals 1

    .line 180
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->b_(I)V

    .line 181
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    return-void
.end method

.method protected f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()V
    .locals 3

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 214
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->g(Z)V

    .line 215
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1021"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 104
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f140032

    .line 105
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const p3, 0x7f0400c5

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->onDestroyView()V

    .line 94
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->b(Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 46
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 117
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1305f1

    if-ne v0, v1, :cond_1

    .line 118
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->k()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/16 v2, 0x3e8

    if-le v1, v2, :cond_0

    .line 121
    new-instance p1, Lcom/samsung/android/app/music/dialog/milk/PlaylistTrackMaximumPopup;

    invoke-direct {p1}, Lcom/samsung/android/app/music/dialog/milk/PlaylistTrackMaximumPopup;-><init>()V

    .line 122
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/music/dialog/milk/PlaylistTrackMaximumPopup;->a:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/samsung/android/app/music/dialog/milk/PlaylistTrackMaximumPopup;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    return v0

    .line 125
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;Ljava/util/List;)V

    invoke-static {v1}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    .line 144
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;)V

    invoke-virtual {p1, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return v0

    .line 152
    :cond_1
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 110
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f1305f1

    .line 111
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->a()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchDetailFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SelectAllObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    .line 78
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;)V

    .line 79
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->e:Lcom/samsung/android/app/music/search/ISearchPageSwitcher;

    const/4 p1, 0x0

    .line 80
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->h(Z)V

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->m()V

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/search/StoreSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 83
    instance-of p2, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz p2, :cond_0

    const p2, 0x7f130073

    .line 84
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    if-eqz p2, :cond_0

    .line 86
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    return-void
.end method
