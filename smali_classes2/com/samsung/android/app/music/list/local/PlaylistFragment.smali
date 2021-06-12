.class public final Lcom/samsung/android/app/music/list/local/PlaylistFragment;
.super Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutAddable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewController;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistFilterableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayTask;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistReorderableImpl;,
        Lcom/samsung/android/app/music/list/local/PlaylistFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment<",
        "Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;",
        ">;",
        "Lcom/samsung/android/app/music/util/ShortCutUtils$ShortcutAddable;"
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$Companion;


# instance fields
.field private b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

.field private c:Z

.field private d:Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

.field private e:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private f:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

.field private i:Landroid/content/SharedPreferences;

.field private j:Z

.field private k:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

.field private l:J

.field private m:Ljava/lang/String;

.field private final n:Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;

.field private final o:Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;

.field private final p:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

.field private final q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

.field private final r:Lcom/samsung/android/app/music/list/local/PlaylistFragment$milkServiceConnection$1;

.field private final s:Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;

.field private final t:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a:Lcom/samsung/android/app/music/list/local/PlaylistFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 141
    invoke-direct {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;-><init>()V

    .line 163
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->n:Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;

    .line 187
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->o:Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;

    .line 196
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    .line 203
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$settingObserver$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$settingObserver$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    .line 209
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$milkServiceConnection$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$milkServiceConnection$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->r:Lcom/samsung/android/app/music/list/local/PlaylistFragment$milkServiceConnection$1;

    .line 220
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->s:Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;

    .line 793
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->t:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/common/ListHeaderManager;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->e:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Z)V
    .locals 0

    .line 141
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->f(Z)V

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->j:Z

    return-void
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->j:Z

    return p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Landroid/content/SharedPreferences;
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->i:Landroid/content/SharedPreferences;

    if-nez p0, :cond_0

    const-string v0, "preferences"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Z)V
    .locals 0

    .line 141
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->c:Z

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->f:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    return-object p0
.end method

.method private final e(I)Landroid/database/Cursor;
    .locals 5

    .line 577
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-direct {v0, v1, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iget-object v0, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;->projection:[Ljava/lang/String;

    .line 578
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-direct {v2, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 580
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 581
    array-length v0, v0

    :goto_0
    if-ge v1, v0, :cond_2

    if-eqz v1, :cond_1

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "dummy"

    .line 586
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 584
    :cond_1
    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 589
    :cond_2
    check-cast v3, Ljava/lang/Iterable;

    invoke-virtual {v2, v3}, Landroid/database/MatrixCursor;->addRow(Ljava/lang/Iterable;)V

    .line 590
    check-cast v2, Landroid/database/Cursor;

    return-object v2
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 141
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->c()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 533
    move-object v2, v0

    check-cast v2, Lcom/samsung/android/app/music/list/local/PlaylistFragment;

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1024
    :cond_0
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_0
    const/4 v4, 0x0

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 535
    :goto_1
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_2

    add-int/lit8 v4, v4, 0x1

    :cond_2
    if-lt v4, v2, :cond_3

    goto :goto_2

    .line 1027
    :cond_3
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-nez v5, :cond_10

    :goto_2
    const/4 v5, 0x1

    if-ge v4, v2, :cond_4

    const/4 v2, 0x1

    goto :goto_3

    :cond_4
    const/4 v2, 0x0

    .line 541
    :goto_3
    iget-object v6, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->e:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-eqz v6, :cond_6

    invoke-virtual {v6}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    const v7, 0x7f130068

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_6

    if-lez v4, :cond_5

    const/4 v4, 0x0

    goto :goto_4

    :cond_5
    const/4 v4, 0x4

    .line 542
    :goto_4
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    :cond_6
    if-eqz v1, :cond_8

    .line 546
    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    const/4 v4, 0x0

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v4, 0x1

    .line 547
    :goto_6
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {v6, v4}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->b(Z)V

    .line 549
    sget-boolean v6, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v7, 0x2

    if-nez v6, :cond_9

    if-eqz v4, :cond_c

    :cond_9
    const/16 v6, -0x3f1

    .line 550
    invoke-direct {v0, v6}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->e(I)Landroid/database/Cursor;

    move-result-object v6

    if-eqz v4, :cond_a

    goto :goto_7

    .line 554
    :cond_a
    new-instance v8, Landroid/database/MergeCursor;

    new-array v9, v7, [Landroid/database/Cursor;

    if-nez v1, :cond_b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_b
    aput-object v1, v9, v3

    aput-object v6, v9, v5

    invoke-direct {v8, v9}, Landroid/database/MergeCursor;-><init>([Landroid/database/Cursor;)V

    check-cast v8, Landroid/database/Cursor;

    move-object v6, v8

    :goto_7
    move-object v1, v6

    .line 558
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    const/4 v8, -0x5

    invoke-virtual {v6, v8}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->removeHeaderView(I)V

    xor-int/lit8 v6, v4, 0x1

    .line 561
    iget-object v9, v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->e:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v9, :cond_d

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_d
    if-eqz v4, :cond_e

    const/4 v4, 0x0

    goto :goto_8

    .line 563
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v10, 0x7f100497

    invoke-virtual {v4, v10}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 564
    :goto_8
    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const/4 v15, 0x7

    const/16 v16, 0x0

    invoke-static/range {v10 .. v16}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/view/ViewExtensionKt;->b(Landroid/view/View;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;ILjava/lang/Object;)V

    .line 565
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v4, v8, v10}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 566
    invoke-virtual {v9, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a(Z)V

    if-eqz v6, :cond_f

    .line 567
    invoke-virtual {v9}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v2

    if-ne v2, v7, :cond_f

    move-object/from16 v5, p1

    const/4 v3, 0x1

    goto :goto_9

    :cond_f
    move-object/from16 v5, p1

    .line 570
    :goto_9
    invoke-super {v0, v5, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    .line 572
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->w_()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(I)V

    .line 573
    invoke-virtual {v0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->e(Z)V

    return-void

    :cond_10
    move-object/from16 v5, p1

    goto/16 :goto_1
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 4

    .line 486
    new-instance p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->e:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v3, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/query/PlaylistQueryArgs;-><init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    return-object p1
.end method

.method protected c()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;
    .locals 2

    .line 474
    new-instance v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    const-string v1, "name"

    .line 475
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->setText1Col(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 476
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->setThumbnailKey(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    const-string v1, "_id"

    .line 477
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->setKeywordCol(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter$AbsBuilder;

    .line 478
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 12

    .line 513
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 514
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getCheckedItemPositions()Landroid/util/SparseBooleanArray;

    move-result-object v1

    .line 515
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    .line 516
    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v10

    const/4 v2, 0x0

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v10, :cond_4

    .line 519
    invoke-virtual {v1, v11}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 520
    invoke-virtual {v1, v11}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v2

    const-string v3, "context"

    .line 522
    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x100004

    .line 524
    invoke-virtual {v9, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 525
    :cond_1
    invoke-virtual {v9, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const/4 v6, 0x0

    const/16 v7, 0x10

    const/4 v8, 0x0

    move-object v2, v0

    .line 521
    invoke-static/range {v2 .. v8}, Lcom/samsung/android/app/music/util/ShortCutUtils;->a(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;IILjava/lang/Object;)V

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public g()I
    .locals 1

    const v0, 0x10004

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 11

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    if-nez p3, :cond_0

    .line 428
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string p1, "key_playlist_id"

    const-wide/16 v0, -0x1

    invoke-virtual {p3, p1, v0, v1}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->l:J

    const-string p1, "key_title"

    .line 429
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->m:Ljava/lang/String;

    .line 431
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroid/content/Context;

    const-class p3, Lcom/samsung/android/app/music/activity/InternalPickerActivity;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "create_playlist"

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/16 p2, 0x7be

    .line 430
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_2

    .line 439
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string p2, "activity!!"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    if-nez p3, :cond_2

    .line 440
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string p2, "key_checked_ids"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v4

    .line 442
    iget-wide p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->l:J

    const-wide/16 v0, -0xb

    cmp-long p2, p2, v0

    if-nez p2, :cond_4

    .line 443
    new-instance p2, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;

    const-string p3, "context"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;-><init>(Landroid/content/Context;)V

    .line 445
    new-instance p1, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    check-cast p3, Landroid/support/v7/app/AppCompatActivity;

    if-nez p3, :cond_3

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    move-object v6, p3

    check-cast v6, Landroid/support/v4/app/FragmentActivity;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, p1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/music/list/favorite/AddResultTrackListener;-><init>(Landroid/support/v4/app/FragmentActivity;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Lcom/samsung/android/app/music/list/favorite/AddResultListener;

    .line 443
    invoke-virtual {p2, v4, p1}, Lcom/samsung/android/app/music/list/favorite/FavoriteManager;->addFavoriteTracksAsync([JLcom/samsung/android/app/music/list/favorite/AddResultListener;)V

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    if-eqz v4, :cond_5

    .line 447
    array-length p2, v4

    goto :goto_0

    :cond_5
    const/4 p2, 0x0

    :goto_0
    if-lez p2, :cond_7

    .line 448
    new-instance p2, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;

    .line 449
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    if-nez p3, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    const-string v0, "activity!!"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p3

    check-cast v1, Landroid/app/Activity;

    .line 450
    iget-wide v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->l:J

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v0, p2

    .line 448
    invoke-direct/range {v0 .. v7}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;-><init>(Landroid/app/Activity;J[JZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 452
    sget-object p3, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {p2, p3, p1}, Lcom/samsung/android/app/music/util/task/AddPlaylistItemTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 455
    :cond_7
    :goto_1
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    .line 456
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_8

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_8
    const-string p1, "parentFragment!!"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 457
    sget-object p1, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;->b:Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;

    .line 458
    iget-wide p2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->l:J

    .line 459
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->m:Ljava/lang/String;

    if-nez v2, :cond_9

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 457
    :cond_9
    invoke-virtual {p1, p2, p3, v2}, Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment$Companion;->a(JLjava/lang/String;)Lcom/samsung/android/app/music/list/local/PlaylistDetailFragment;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Landroid/support/v4/app/Fragment;

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    .line 455
    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;ILjava/lang/Object;)V

    :cond_a
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x7be
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 240
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onAttach(Landroid/content/Context;)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 242
    invoke-static {p0, v0, p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;IILjava/lang/Object;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->i:Landroid/content/SharedPreferences;

    .line 243
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->i:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    const-string v1, "preferences"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    const-string v1, "OOBE_flag"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->j:Z

    .line 245
    new-instance v0, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    if-eqz v1, :cond_1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;-><init>(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    const-string v0, "103"

    const-string v1, "104"

    .line 247
    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->setViewCachedEnabled(Z)V

    return-void

    .line 245
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.core.service.mediacenter.MediaChangeObservable"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 255
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreate(Landroid/os/Bundle;)V

    .line 257
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 258
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/Context;)Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->k:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    .line 259
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->k:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->r:Lcom/samsung/android/app/music/list/local/PlaylistFragment$milkServiceConnection$1;

    check-cast v0, Landroid/content/ServiceConnection;

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->a(Landroid/content/ServiceConnection;)Z

    .line 262
    :cond_2
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object p1

    const/16 v0, 0x309

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->t:Lcom/samsung/android/app/music/list/local/PlaylistFragment$conflictCallbacks$1;

    check-cast v2, Landroid/support/v4/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroid/support/v4/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/support/v4/app/LoaderManager$LoaderCallbacks;)Landroid/support/v4/content/Loader;

    :cond_3
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 504
    new-instance v6, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    .line 505
    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140013

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    .line 504
    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 508
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 509
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

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

    .line 468
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateLoader(ILandroid/os/Bundle;)Landroid/support/v4/content/Loader;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Landroid/support/v4/content/AsyncTaskLoader;

    const-wide/16 v0, 0x0

    .line 470
    invoke-virtual {p1, v0, v1}, Landroid/support/v4/content/AsyncTaskLoader;->setUpdateThrottle(J)V

    check-cast p1, Landroid/support/v4/content/Loader;

    return-object p1

    .line 468
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.support.v4.content.AsyncTaskLoader<android.database.Cursor>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 499
    new-instance v0, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140024

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZ)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 500
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string v0, "inflater"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected onCreateView()Ljava/lang/Integer;
    .locals 1

    const v0, 0x7f040182

    .line 277
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .line 409
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-nez v0, :cond_0

    const-string v1, "fragmentMediaChangeCenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onDestroyCalled()V

    .line 410
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v0, :cond_1

    .line 411
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 412
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v2, "my_music_mode_option"

    .line 411
    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->unregisterObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;)V

    .line 414
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->k:Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->r:Lcom/samsung/android/app/music/list/local/PlaylistFragment$milkServiceConnection$1;

    check-cast v1, Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/service/milk/MilkServiceHelper;->b(Landroid/content/ServiceConnection;)V

    .line 416
    :cond_1
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .locals 2

    .line 420
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity!!.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->o:Lcom/samsung/android/app/music/list/local/PlaylistFragment$playlistsObserver$1;

    check-cast v1, Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 421
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onDetach()V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 141
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 395
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onResume()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 231
    invoke-super {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_created_playlist_id"

    .line 233
    iget-wide v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->l:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v0, "key_created_playlist_title"

    .line 234
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->m:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 381
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStart()V

    .line 382
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-nez v0, :cond_0

    const-string v1, "fragmentMediaChangeCenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 383
    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->n:Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->registerMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 384
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStartCalled()V

    .line 386
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->F()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->a(Z)V

    .line 387
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_2

    .line 388
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->s:Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    .line 387
    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->addOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    :cond_2
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b:Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;

    if-nez v0, :cond_0

    const-string v1, "fragmentMediaChangeCenter"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    .line 401
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->onStopCalled()V

    .line 402
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->n:Lcom/samsung/android/app/music/list/local/PlaylistFragment$coreMediaChangeObserver$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/observable/FragmentMediaChangeCenter;->unregisterMediaChangeObserver(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/OnMediaChangeObserver;)V

    .line 404
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-nez v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->s:Lcom/samsung/android/app/music/list/local/PlaylistFragment$onActionModeListener$1;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable;->removeOnListActionModeListener(Lcom/samsung/android/app/musiclibrary/ui/ListActionModeObservable$OnListActionModeListener;)V

    .line 405
    :cond_2
    invoke-super {p0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onStop()V

    return-void
.end method

.method protected onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;Z)V

    .line 284
    sget-boolean v0, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 285
    sget-object v0, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->Companion:Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager$Companion;->getInstance()Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;

    move-result-object v0

    .line 286
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->q:Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;

    const-string v3, "my_music_mode_option"

    .line 285
    invoke-virtual {v0, v2, v3, v1}, Lcom/samsung/android/app/musiclibrary/core/settings/provider/SettingManager;->registerObserver(Lcom/samsung/android/app/musiclibrary/core/settings/provider/ISettingObserver;Ljava/lang/String;Z)V

    .line 288
    invoke-static {}, Lcom/samsung/android/app/music/settings/MilkSettings;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->c:Z

    :cond_0
    if-eqz p3, :cond_1

    return-void

    :cond_1
    if-eqz p2, :cond_2

    const-string v0, "key_created_playlist_id"

    .line 294
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->l:J

    const-string v0, "key_created_playlist_title"

    .line 295
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->m:Ljava/lang/String;

    .line 298
    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_3

    .line 299
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_3
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 301
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v2, :cond_5

    .line 303
    sget-boolean v5, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v5, :cond_4

    const-string v5, "Music"

    goto :goto_0

    :cond_4
    const-string v5, "GlobalMusic"

    :goto_0
    const/4 v6, 0x5

    new-array v6, v6, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 304
    new-instance v7, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;

    move-object v8, p0

    check-cast v8, Landroid/support/v4/app/Fragment;

    invoke-direct {v7, v2, v8}, Lcom/samsung/android/app/music/bixby/v1/executor/local/CreatePlaylistPopupShowExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/support/v4/app/Fragment;)V

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v7, v6, v3

    .line 305
    new-instance v7, Lcom/samsung/android/app/music/bixby/v1/executor/local/EditPlaylistsExecutor;

    move-object v8, p0

    check-cast v8, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    invoke-direct {v7, v2, v0, v8}, Lcom/samsung/android/app/music/bixby/v1/executor/local/EditPlaylistsExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;)V

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v7, v6, v1

    .line 306
    new-instance v7, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;

    new-instance v9, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewController;

    invoke-direct {v9, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCardViewController;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    check-cast v9, Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;

    invoke-direct {v7, v2, v9}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayCardViewExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Lcom/samsung/android/app/musiclibrary/ui/list/CardViewControllable;)V

    check-cast v7, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v7, v6, v4

    const/4 v7, 0x3

    .line 307
    new-instance v9, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;

    move-object v10, p0

    check-cast v10, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-direct {v9, v8, v10}, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    check-cast v9, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v9, v6, v7

    const/4 v7, 0x4

    .line 308
    new-instance v8, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;

    invoke-direct {v8, v2, v0}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayPlaylistExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;)V

    check-cast v8, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v8, v6, v7

    .line 302
    invoke-interface {v2, v5, v6}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_5
    const/4 v0, 0x0

    .line 312
    invoke-static {p0, v3, v1, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 314
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->p:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 316
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    const-string v5, "activity!!"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/app/Activity;

    const v5, 0x7f0b034f

    invoke-direct {v1, v2, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 317
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->b_(I)V

    .line 318
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistCheckableList;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 319
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->d:Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

    .line 320
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->d:Lcom/samsung/android/app/music/list/local/PlaylistFragment$ActionModeOptionsMenu;

    if-nez v1, :cond_7

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_7
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 321
    new-instance v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v2, p0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 323
    new-instance v1, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl;

    move-object v5, p0

    check-cast v5, Landroid/support/v4/app/Fragment;

    invoke-direct {v1, v5}, Lcom/samsung/android/app/music/list/playlist/PlaylistDeleteableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 324
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayableImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistPlayableImpl;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 325
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;

    invoke-direct {v1, p0, v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistShareable;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/support/v4/app/Fragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 326
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;

    sget-object v5, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists;->f:Ljava/lang/String;

    const-string v6, "MediaContents.Playlists.DEFAULT_SORT_ORDER"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v5, v3, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable$MusicIndexViewable;-><init>(Ljava/lang/String;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/IndexViewable;)V

    .line 327
    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistReorderableImpl;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistReorderableImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;

    invoke-static {p0, v1, v0, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderManager$Reorderable;Lcom/samsung/android/app/musiclibrary/ui/list/ReorderableItemChecker;ILjava/lang/Object;)V

    .line 329
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 330
    new-instance v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistFilterableImpl;

    invoke-direct {v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistFilterableImpl;-><init>()V

    check-cast v5, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    const v5, 0x7f0400d4

    .line 331
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->b(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 332
    invoke-virtual {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    const/4 v5, -0x2

    .line 333
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->c(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    const v5, 0x7f100498

    .line 335
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const v6, 0x7f100497

    .line 336
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 334
    invoke-virtual {v1, v5, v6}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Ljava/lang/Integer;Ljava/lang/Integer;)V

    .line 338
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->e:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 340
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v5, 0x7f04005a

    .line 341
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 343
    new-instance v5, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    if-eqz v1, :cond_9

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    iget-boolean v7, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->j:Z

    invoke-direct {v5, v2, v6, v7}, Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Z)V

    iput-object v5, p0, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->f:Lcom/samsung/android/app/music/list/local/DefaultPlaylistManager;

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;

    const/4 v6, -0x4

    invoke-virtual {v5, v6, v1}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 347
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    .line 348
    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    .line 350
    new-instance v6, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v7, 0x7f020220

    invoke-direct {v6, v7, v0, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 348
    invoke-direct {v5, v2, v6}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v5, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    .line 347
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 354
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$PlaylistItemAnimator;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    check-cast v2, Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->setItemAnimator(Landroid/support/v7/widget/RecyclerView$ItemAnimator;)V

    .line 355
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/music/list/local/PlaylistResizableHeightItem;

    const/16 v5, -0x3f1

    int-to-long v5, v5

    invoke-direct {v2, v5, v6}, Lcom/samsung/android/app/music/list/local/PlaylistResizableHeightItem;-><init>(J)V

    check-cast v2, Lcom/samsung/android/app/music/list/ResizableHeightItem;

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/list/ResizableHeightItemKt;->a(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;Lcom/samsung/android/app/music/list/ResizableHeightItem;)V

    .line 357
    invoke-virtual {p0, v3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->c(Z)V

    .line 359
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->g()I

    move-result v1

    invoke-static {p0, v1, v0, v4, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 361
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->C()Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;

    move-result-object v0

    if-eqz v0, :cond_8

    new-instance v1, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlaylistFragment$onViewCreated$$inlined$perform$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/PlaylistFragment;Landroid/view/View;Landroid/os/Bundle;Z)V

    check-cast v1, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/CheckBoxAnimator;->a(Landroid/animation/Animator$AnimatorListener;)V

    :cond_8
    return-void

    .line 343
    :cond_9
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.widget.MusicRecyclerView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 482
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/PlaylistFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
