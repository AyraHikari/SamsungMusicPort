.class public Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;
.super Lcom/samsung/android/app/music/search/SearchableFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/search/SearchableFragment<",
        "Lcom/samsung/android/app/music/search/SearchableAdapter<",
        "*>;>;",
        "Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private d:Lcom/samsung/android/app/music/search/SelectAllObservable;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private f:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private i:I

.field private final j:Ljava/lang/Runnable;

.field private k:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

.field private final l:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/LoaderManager$LoaderCallbacks<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;-><init>()V

    .line 52
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->i:I

    .line 232
    new-instance v0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$2;-><init>(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->j:Ljava/lang/Runnable;

    .line 293
    new-instance v0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$3;-><init>(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    .line 324
    new-instance v0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$4;-><init>(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->l:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;I)I
    .locals 0

    .line 48
    iput p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->i:I

    return p1
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;IIZ)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->b(IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Z)V

    return-void
.end method

.method private a(Z)V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    iget v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->i:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->i:I

    if-lez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(Z)V

    :cond_2
    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private b(IIZ)V
    .locals 5

    .line 303
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    if-ne p1, p2, :cond_0

    .line 305
    iget-object p2, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    goto :goto_1

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_2

    .line 308
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 309
    iget-object v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v2

    invoke-interface {v1, v2, v3, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public static c()Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;
    .locals 2

    .line 63
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 64
    new-instance v1, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;

    invoke-direct {v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;-><init>()V

    .line 65
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v1
.end method

.method static synthetic c(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Lcom/samsung/android/app/music/search/SelectAllObservable;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)I
    .locals 0

    .line 48
    iget p0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->i:I

    return p0
.end method

.method private f()V
    .locals 8

    .line 221
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 222
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(I)[J

    move-result-object v1

    .line 223
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 224
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-wide v6, v1, v5

    .line 225
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 227
    :cond_0
    new-instance v1, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;

    iget-object v3, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    invoke-direct {v1, p0, v3, v5, v4}, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;Lcom/samsung/android/app/music/search/SelectAllObservable;Z)V

    new-array v0, v0, [Ljava/util/ArrayList;

    aput-object v2, v0, v4

    .line 228
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/music/search/RefreshSelectedItemTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method static synthetic g(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->i()V

    return-void
.end method

.method static synthetic h(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->f()V

    return-void
.end method

.method private i()V
    .locals 4

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result v0

    .line 318
    iget-object v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    iget-object v2, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v0, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 319
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v3

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 318
    :goto_0
    invoke-interface {v1, v2, v0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(IZ)V

    .line 320
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_1
    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d()Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 1

    .line 211
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
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

    .line 164
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 165
    iget-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x2

    .line 199
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->b_(I)V

    .line 200
    invoke-direct {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->i()V

    .line 201
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->a(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public a(I)[J
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(I)[J

    move-result-object p1

    return-object p1
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->v_()Ljava/lang/String;

    move-result-object p1

    .line 148
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PickerSearchTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PickerSearchTrackQueryArgs;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method protected b_(I)V
    .locals 1

    .line 289
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->b_(I)V

    .line 290
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    return-void
.end method

.method protected d()Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;
    .locals 2

    .line 133
    new-instance v0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "album_id"

    .line 134
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;->d(Z)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;->c(Z)Lcom/samsung/android/app/music/search/SearchableAdapter$AbsBuilder;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;

    const-string v1, "album_id"

    .line 136
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 137
    invoke-virtual {v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter$Builder;->b()Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x100025

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()V
    .locals 3

    .line 348
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 352
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->f()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    .line 356
    iput v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->i:I

    .line 357
    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Z)V

    return-void

    .line 361
    :cond_1
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->g(Z)V

    .line 362
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a()Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getScreenId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1021"

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/analytics/SamsungAnalyticsManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    const-string p1, "232"

    const/4 v0, 0x0

    .line 73
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 170
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const v0, 0x7f140032

    .line 171
    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 127
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 128
    invoke-super {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 121
    invoke-super {p0}, Lcom/samsung/android/app/music/search/SearchableFragment;->onDestroyView()V

    .line 122
    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->b(Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 48
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 183
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f1305f1

    if-ne v0, v1, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_checked_ids"

    .line 186
    iget-object v2, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 187
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v2

    .line 186
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 189
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 190
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 193
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 176
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const v0, 0x7f1305f1

    .line 177
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a()I

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
    .locals 2

    .line 78
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/search/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 80
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->f:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 81
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 82
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/search/SelectAllObservable;

    iput-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    .line 83
    iget-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d:Lcom/samsung/android/app/music/search/SelectAllObservable;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/music/search/SelectAllObservable;->a(Lcom/samsung/android/app/music/search/SelectAllObservable$OnSelectAllListener;)V

    const/4 p1, 0x2

    .line 85
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->b_(I)V

    const p1, 0x7f100246

    .line 87
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->h(I)Landroid/view/View;

    .line 88
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const p2, 0x7f100245

    .line 90
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p1

    const p2, 0x7f1005e5

    .line 91
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p1

    .line 92
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 93
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 95
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->l:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const v0, 0x12fd1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 97
    iget-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    new-instance p2, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$1;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment$1;-><init>(Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;)V

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    .line 105
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const p2, 0x7f0b02c2

    invoke-direct {p1, p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;I)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->c(Z)V

    .line 108
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a(Z)V

    .line 109
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->d(I)V

    .line 110
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 111
    instance-of p2, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz p2, :cond_0

    const p2, 0x7f130073

    .line 112
    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    if-eqz p2, :cond_0

    .line 114
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_0
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 281
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/search/SearchableFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    iget-object p1, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->a:Landroid/os/Handler;

    iget-object v0, p0, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 142
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/LocalSearchPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
