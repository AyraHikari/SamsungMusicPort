.class public abstract Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;,
        Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter<",
        "*>;>",
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "TT;>;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;"
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

.field private b:Z

.field private c:Z

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<",
            "TT;>.QueryTextChangeHandler;"
        }
    .end annotation
.end field

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)Z
    .locals 0

    .line 26
    iget-boolean p0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->c:Z

    return p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Z)Z
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->b:Z

    return p1
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

    .line 130
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 131
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;

    .line 132
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->b(Landroid/database/Cursor;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->d()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 0

    .line 144
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->c(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public b(Ljava/lang/String;)Z
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->c()V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected final c()V
    .locals 4

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 161
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 162
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method protected final c(Ljava/lang/String;)V
    .locals 3

    .line 174
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 176
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->removeMessages(I)V

    .line 180
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    const-wide/16 v1, 0x64

    invoke-virtual {p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "Ui"

    const-string v1, "There is not mSearchView"

    .line 169
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 49
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    new-instance v2, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$ContentsChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;)V

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    .line 51
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;)V

    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    .line 52
    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    const/4 v3, 0x0

    .line 53
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 55
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    .line 42
    instance-of v0, p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 43
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    :cond_0
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

    .line 123
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    check-cast p1, Landroid/support/v4/content/AsyncTaskLoader;

    const-wide/16 v0, 0x0

    .line 124
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;->a()V

    .line 112
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a:Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler$ContentChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 114
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    if-eqz v0, :cond_1

    .line 115
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 116
    iput-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$QueryTextChangeHandler;

    .line 118
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 26
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 89
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    const/4 v0, 0x1

    .line 90
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->c:Z

    .line 91
    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->b:Z

    if-eqz v0, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->s_()V

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->a(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    .line 101
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->c:Z

    .line 102
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ISearchView;->b(Lcom/samsung/android/app/musiclibrary/ui/list/search/SearchQueryListener;)V

    .line 105
    :cond_0
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 60
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    .line 62
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;)V

    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    const/4 p2, 0x0

    .line 84
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    return-void
.end method

.method public s_()V
    .locals 1

    .line 138
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->s_()V

    const/4 v0, 0x0

    .line 139
    iput-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->b:Z

    return-void
.end method
