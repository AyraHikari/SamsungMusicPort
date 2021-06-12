.class public abstract Lcom/samsung/android/app/music/search/SearchableFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;,
        Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/music/search/SearchableAdapter<",
        "*>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "TT;>;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

.field protected b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

.field protected c:Landroid/content/Context;

.field private d:Z

.field private e:Z

.field private f:Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/music/search/SearchableFragment<",
            "TT;>.QueryTextChangeHandler;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    const-string v0, ""

    .line 45
    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->i:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchableFragment;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 30
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object p0

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchableFragment;)Z
    .locals 0

    .line 30
    iget-boolean p0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->e:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/SearchableFragment;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->d:Z

    return p1
.end method


# virtual methods
.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 1
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

    .line 145
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 146
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SearchableAdapter;

    .line 147
    invoke-virtual {p1}, Lcom/samsung/android/app/music/search/SearchableAdapter;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->c(Landroid/database/Cursor;)V

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->v_()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/SearchableAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 161
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->i:Ljava/lang/String;

    .line 162
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 1

    .line 168
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->i:Ljava/lang/String;

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->m()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected c(Ljava/lang/String;)V
    .locals 3

    .line 208
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->f:Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 210
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 211
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->f:Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;->removeMessages(I)V

    .line 214
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->f:Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method protected j()V
    .locals 4

    .line 183
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    new-instance v1, Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/search/SearchableFragment$ContentsChangeHandler;-><init>(Lcom/samsung/android/app/music/search/SearchableFragment;Lcom/samsung/android/app/music/search/SearchableFragment$1;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    const/4 v3, 0x0

    .line 185
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method protected final m()V
    .locals 4

    .line 189
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 195
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 51
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 53
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    instance-of v1, v1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 56
    :cond_0
    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v1, :cond_1

    .line 57
    move-object v1, v0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object v1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    .line 59
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->c:Landroid/content/Context;

    if-eqz p1, :cond_2

    const-string v0, "key_search_keyword"

    const-string v1, ""

    .line 62
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->i:Ljava/lang/String;

    .line 64
    :cond_2
    new-instance p1, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;-><init>(Lcom/samsung/android/app/music/search/SearchableFragment;Lcom/samsung/android/app/music/search/SearchableFragment$1;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->f:Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;

    .line 65
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->j()V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;
    .locals 2
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

    .line 138
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    check-cast p1, Landroid/support/v4/content/AsyncTaskLoader;

    const-wide/16 v0, 0x0

    .line 139
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    if-eqz v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->a()V

    .line 127
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->f:Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;

    if-eqz v0, :cond_1

    .line 130
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->f:Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 131
    iput-object v1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->f:Lcom/samsung/android/app/music/search/SearchableFragment$QueryTextChangeHandler;

    .line 133
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 178
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_search_keyword"

    .line 179
    iget-object v1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 110
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->e:Z

    .line 112
    iget-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->d:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->s_()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 119
    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->e:Z

    .line 120
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 70
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 72
    new-instance p2, Lcom/samsung/android/app/music/search/SearchableFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/search/SearchableFragment$1;-><init>(Lcom/samsung/android/app/music/search/SearchableFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const/4 p2, 0x0

    .line 93
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 94
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz p1, :cond_0

    .line 96
    iget-object p1, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_0
    return-void
.end method

.method public s_()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->g()I

    move-result v0

    invoke-super {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->g(I)V

    const/4 v0, 0x0

    .line 156
    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->d:Z

    return-void
.end method

.method public v_()Ljava/lang/String;
    .locals 2

    const-string v0, "Ui"

    const-string v1, "There is not mSearchView"

    .line 200
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/SearchableFragment;->i:Ljava/lang/String;

    return-object v0
.end method
