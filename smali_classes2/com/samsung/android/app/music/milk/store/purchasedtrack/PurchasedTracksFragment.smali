.class public abstract Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/download/Downloadable;
.implements Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/download/Downloadable;",
        "Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;"
    }
.end annotation


# static fields
.field public static final c:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$Companion;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private a:Lcom/samsung/android/app/music/download/MilkDownloadable;

.field private b:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lio/reactivex/disposables/CompositeDisposable;

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->c:Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 56
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->d:Lio/reactivex/disposables/CompositeDisposable;

    .line 58
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;Landroid/database/Cursor;)Ljava/lang/String;
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->b(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final b(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    const-string v0, "track_id"

    .line 203
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->k()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;)V"
        }
    .end annotation

    .line 179
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->b:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

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

    .line 128
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    .line 130
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 2

    .line 174
    new-instance p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->i()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackQueryArgs;-><init>(Landroid/content/Context;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected abstract c()Ljava/lang/String;
.end method

.method protected abstract f()Z
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract i()I
.end method

.method protected final j()Lio/reactivex/disposables/CompositeDisposable;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->d:Lio/reactivex/disposables/CompositeDisposable;

    return-object v0
.end method

.method protected k()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;
    .locals 2

    .line 164
    new-instance v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "title"

    .line 165
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const-string v1, "artist"

    .line 166
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setText2Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const-string v1, "audio_id"

    .line 167
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->d(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    const-string v1, "download_state"

    .line 168
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->setText3Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    .line 164
    check-cast v0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;

    .line 170
    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter$Builder;->a()Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "981"

    const-string v0, "971"

    .line 78
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->w_()I

    move-result v0

    if-lez v0, :cond_0

    const v0, 0x7f14002d

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "UiList"

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onCreateView()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p3, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(ZLjava/lang/String;Ljava/lang/String;)V

    const p3, 0x7f04019d

    const/4 v0, 0x0

    .line 88
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string p2, "inflater.inflate(R.layou\u2026ent_kt, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->d:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->a()V

    .line 124
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 144
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1305ec

    if-ne v0, v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->J()V

    const/4 p1, 0x1

    return p1

    .line 148
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 94
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const-string v0, "PurchasedSongs"

    const/4 v1, 0x1

    .line 96
    new-array v1, v1, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 97
    new-instance v2, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;

    move-object v3, p0

    check-cast v3, Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;

    invoke-direct {v2, p1, v3}, Lcom/samsung/android/app/music/bixby/v1/executor/globalmenu/LaunchPurchasedTrackResponseExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/music/milk/executorinterface/ICursorLoadFinishedExecutor;)V

    check-cast v2, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v2, v1, p2

    .line 95
    invoke-interface {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    .line 100
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object p1

    const-string v0, "981"

    .line 101
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->c(Ljava/lang/String;)V

    .line 105
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    const v3, 0x7f0b0486

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 106
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTrackAdapter;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 109
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    const v1, 0x7f0b0350

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 110
    sget p1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->b_(I)V

    .line 111
    new-instance p1, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$ActionModeOptionsMenu;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 113
    new-instance p1, Lcom/samsung/android/app/music/download/MilkDownloadable;

    .line 114
    move-object v0, p0

    check-cast v0, Landroid/support/v4/app/Fragment;

    .line 115
    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    const-string v2, "track_id"

    .line 113
    invoke-direct {p1, v0, v1, v2}, Lcom/samsung/android/app/music/download/MilkDownloadable;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a:Lcom/samsung/android/app/music/download/MilkDownloadable;

    const/4 p1, 0x2

    .line 119
    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a(ZI)V

    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 160
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v2, "activity!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "activity!!.applicationContext"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0
.end method

.method public v()V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/purchasedtrack/PurchasedTracksFragment;->a:Lcom/samsung/android/app/music/download/MilkDownloadable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/download/MilkDownloadable;->v()V

    :cond_0
    return-void
.end method
