.class public Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTrackDeleteable;,
        Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lio/reactivex/disposables/CompositeDisposable;

.field private final b:Landroid/animation/AnimatorListenerAdapter;

.field private final c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 76
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a:Lio/reactivex/disposables/CompositeDisposable;

    .line 290
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$2;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->b:Landroid/animation/AnimatorListenerAdapter;

    .line 310
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$3;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method private a(Landroid/content/Context;[J)Lio/reactivex/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[J)",
            "Lio/reactivex/Observable<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 338
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$4;

    invoke-direct {v0, p0, p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$4;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;[JLandroid/content/Context;)V

    invoke-static {v0}, Lio/reactivex/Observable;->a(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;I)V
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->d(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;Landroid/content/Context;[J)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->b(Landroid/content/Context;[J)V

    return-void
.end method

.method private b(Landroid/content/Context;[J)V
    .locals 2

    .line 410
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Landroid/content/Context;[J)Lio/reactivex/Observable;

    move-result-object v0

    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$8;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$8;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;Landroid/content/Context;)V

    .line 411
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object v0

    .line 416
    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;

    invoke-direct {v1, p0, p2, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$7;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;[JLandroid/content/Context;)V

    .line 417
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method private d()V
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a:Lio/reactivex/disposables/CompositeDisposable;

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/music/network/request/usermy/HiddenTrackApis;->a(Landroid/content/Context;)Lio/reactivex/Observable;

    move-result-object v1

    .line 244
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->b()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->b(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/android/schedulers/AndroidSchedulers;->a()Lio/reactivex/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->a(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;)V

    .line 245
    invoke-virtual {v1, v2}, Lio/reactivex/Observable;->d(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lio/reactivex/disposables/CompositeDisposable;->a(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->c()Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter;

    move-result-object v0

    return-object v0
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

    const-string v0, "HiddenTracksFragment"

    .line 157
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLoadFinished id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 159
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 0

    .line 165
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;

    invoke-direct {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs$Builder;->a()Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTracksQueryArgs;

    move-result-object p1

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter;
    .locals 3

    .line 132
    new-instance v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 133
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;

    const-string v1, "artist"

    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;

    const-string v1, "album_id"

    .line 135
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;

    const-string v1, "cp_attrs"

    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;->setCpAttrsCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;

    sget-object v1, Lcom/samsung/android/app/music/provider/MilkContents$Thumbnails;->a:Landroid/net/Uri;

    const v2, 0x80002

    .line 137
    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;->addThumbnailUri(ILandroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;

    .line 138
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter$Builder;->b()Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const/16 v0, 0x68

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
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

    .line 149
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    check-cast p1, Landroid/support/v4/content/AsyncTaskLoader;

    const-wide/16 v0, 0x0

    .line 150
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    return-object p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 257
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 259
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->w_()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f140030

    .line 260
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "UiList"

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onCreateView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f040192

    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    .line 126
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 73
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 266
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1305ef

    if-eq v0, v1, :cond_0

    .line 271
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 268
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->J()V

    const/4 p1, 0x1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 87
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->b(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/musiclibrary/ui/AppBar;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 91
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Z)V

    const v0, 0x7f0b0157

    .line 92
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/AppBar;->a(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x2

    .line 95
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(ZI)V

    .line 96
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v0, 0x7f0b02c4

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 100
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0b0350

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    const/4 p1, 0x3

    .line 102
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->b_(I)V

    .line 103
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$ActionModeOptionsMenu;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$1;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 105
    new-instance p1, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTrackDeleteable;

    invoke-direct {p1, p0, p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment$HiddenTrackDeleteable;-><init>(Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;Landroid/support/v4/app/Fragment;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v2, 0x7f020220

    invoke-direct {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(I)V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 112
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->b:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    :cond_1
    if-nez p2, :cond_2

    const-string p1, "Ui"

    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " | onViewCreated() -load data from server."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->d()V

    goto :goto_0

    .line 119
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->d(I)V

    :goto_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 144
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/myinfo/hiddentracks/HiddenTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
