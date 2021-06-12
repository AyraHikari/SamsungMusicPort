.class public Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment<",
        "Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/os/Handler;

.field private b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

.field private c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

.field private d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

.field private e:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

.field private f:I

.field private final i:Landroid/view/View$OnClickListener;

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

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;-><init>()V

    .line 62
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a:Landroid/os/Handler;

    const/4 v0, -0x1

    .line 72
    iput v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->f:I

    .line 247
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$2;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->i:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$3;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->j:Ljava/lang/Runnable;

    .line 318
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$4;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    .line 347
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$5;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->l:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;I)I
    .locals 0

    .line 57
    iput p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->f:I

    return p1
.end method

.method public static a(Z)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;
    .locals 2

    .line 75
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key_sound_picker"

    .line 76
    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 77
    new-instance p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;

    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;-><init>()V

    .line 78
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Ljava/lang/Runnable;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->j:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;IIZ)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b(IIZ)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;Z)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->h(Z)V

    return-void
.end method

.method static synthetic b(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Landroid/os/Handler;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a:Landroid/os/Handler;

    return-object p0
.end method

.method private b(IIZ)V
    .locals 5

    .line 327
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    if-ne p1, p2, :cond_0

    .line 329
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v0

    invoke-interface {p2, v0, v1, p3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(JZ)V

    goto :goto_1

    :cond_0
    :goto_0
    if-gt p1, p2, :cond_2

    .line 332
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;->getItemId(I)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_1

    .line 333
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

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

.method static synthetic c(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    return-object p0
.end method

.method static synthetic d(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    return-object p0
.end method

.method static synthetic e(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    return-object p0
.end method

.method static synthetic f(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;
    .locals 0

    .line 57
    iget-object p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    return-object p0
.end method

.method static synthetic g(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)I
    .locals 0

    .line 57
    iget p0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->f:I

    return p0
.end method

.method static synthetic h(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->j()V

    return-void
.end method

.method private h(Z)V
    .locals 3

    .line 232
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->f:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->f:I

    if-lez v1, :cond_1

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->setViewEnabled(Z)V

    return-void
.end method

.method private i()V
    .locals 8

    .line 236
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->c()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 237
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(I)[J

    move-result-object v1

    .line 238
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 239
    array-length v3, v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_0

    aget-wide v6, v1, v5

    .line 240
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 242
    :cond_0
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/RefreshSelectedItemsUpdateTask;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iget-object v5, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 243
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "key_sound_picker"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-direct {v1, p0, v3, v5, v6}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/RefreshSelectedItemsUpdateTask;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;Z)V

    new-array v0, v0, [Ljava/util/ArrayList;

    aput-object v2, v0, v4

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/RefreshSelectedItemsUpdateTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V
    .locals 0

    .line 57
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->i()V

    return-void
.end method

.method private j()V
    .locals 5

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a()I

    move-result v0

    .line 341
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object v3, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 342
    invoke-interface {v3}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v0, :cond_0

    iget-object v4, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 343
    invoke-interface {v4}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->w_()I

    move-result v4

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 341
    :goto_0
    invoke-interface {v1, v2, v3, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;IZ)V

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    return-void
.end method


# virtual methods
.method protected synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 57
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->f()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

    move-result-object v0

    return-object v0
.end method

.method public a()I
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

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

    .line 189
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 190
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a:Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public a(I)[J
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    invoke-interface {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(I)[J

    move-result-object p1

    return-object p1
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 3

    .line 170
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d()Ljava/lang/String;

    move-result-object p1

    .line 171
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_sound_picker"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/soundpicker/SoundPickerSearchTrackQueryArgs;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PickerSearchTrackQueryArgs;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PickerSearchTrackQueryArgs;-><init>(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method protected b_(I)V
    .locals 1

    .line 314
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->b_(I)V

    .line 315
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->k:Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->a(Lcom/samsung/android/app/musiclibrary/ui/MultipleModeObservable$MultipleModeListener;)V

    return-void
.end method

.method protected f()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;
    .locals 3

    .line 150
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "key_sound_picker"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 151
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v2, "album_id"

    .line 152
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;

    .line 153
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->b(Z)Lcom/samsung/android/app/musiclibrary/ui/list/SearchableAdapter$AbsBuilder;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;

    if-eqz v0, :cond_0

    const-string v0, "album_id"

    .line 155
    sget-object v2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$AlbumArt;->a:Landroid/net/Uri;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;Landroid/net/Uri;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    goto :goto_0

    :cond_0
    const-string v0, "album_id"

    .line 158
    invoke-virtual {v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 160
    :goto_0
    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter$Builder;->b()Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$SearchAdapter;

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

.method public onAttach(Landroid/app/Activity;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onAttach(Landroid/app/Activity;)V

    .line 85
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "key_sound_picker"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "522"

    goto :goto_0

    :cond_0
    const-string p1, "232"

    :goto_0
    const/4 v0, 0x0

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 195
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 196
    sget v0, Lcom/samsung/android/app/musiclibrary/R$menu;->picker_search_common:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->j:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onDestroy()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 57
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 208
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/samsung/android/app/musiclibrary/R$id;->menu_picker_search_done:I

    if-ne v0, v1, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 210
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "key_checked_ids"

    .line 211
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 212
    invoke-interface {v2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a()[J

    move-result-object v2

    .line 211
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const/4 v1, -0x1

    .line 214
    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 215
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x1

    return p1

    .line 218
    :cond_0
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 201
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 202
    sget v0, Lcom/samsung/android/app/musiclibrary/R$id;->menu_picker_search_done:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 203
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a()I

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
    .locals 4

    .line 93
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/SearchableFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 95
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->e:Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    .line 96
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    .line 97
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    .line 98
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-interface {p1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;->d()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    .line 99
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d:Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;

    iget-object p1, p1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllViewHolder;->c:Landroid/view/View;

    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x2

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->b_(I)V

    .line 103
    sget p1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_spacing_top:I

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->h(I)Landroid/view/View;

    .line 104
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "key_sound_picker"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    goto :goto_0

    .line 109
    :cond_0
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    invoke-direct {p2, p0}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 110
    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_single_picker:I

    .line 111
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->b(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p2

    sget v1, Lcom/samsung/android/app/musiclibrary/R$dimen;->mu_list_divider_inset_winset:I

    .line 112
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->c(I)Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration$Builder;->a()Lcom/samsung/android/app/musiclibrary/ui/list/DividerItemDecoration;

    move-result-object p2

    .line 113
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 114
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->addFragmentLifeCycleCallbacks(Lcom/samsung/android/app/musiclibrary/ui/FragmentLifeCycleCallbacks;)V

    .line 117
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p2

    const v1, 0x12fd1

    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->l:Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x0

    invoke-virtual {p2, v1, v3, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    .line 119
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c:Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;

    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment$1;-><init>(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;)V

    .line 120
    invoke-interface {p2, v1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager;->a(Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/MultipleItemPickerManager$OnUpdateCheckedItemsListener;)V

    .line 127
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    sget v1, Lcom/samsung/android/app/musiclibrary/R$string;->no_results:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    sget p1, Lcom/samsung/android/app/musiclibrary/R$color;->no_result_text_mmapp:I

    .line 128
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_1
    invoke-direct {p2, p0, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;)V

    .line 127
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->c(Z)V

    .line 131
    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->h(Z)V

    .line 132
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->g()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->d(I)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 134
    instance-of p2, p1, Landroid/support/v7/app/AppCompatActivity;

    if-eqz p2, :cond_2

    .line 135
    sget p2, Lcom/samsung/android/app/musiclibrary/R$id;->toolbar:I

    invoke-virtual {p1, p2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/Toolbar;

    if-eqz p2, :cond_2

    .line 137
    check-cast p1, Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {p1, p2}, Landroid/support/v7/app/AppCompatActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    :cond_2
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 2

    .line 165
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/ui/picker/multiple/SearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
