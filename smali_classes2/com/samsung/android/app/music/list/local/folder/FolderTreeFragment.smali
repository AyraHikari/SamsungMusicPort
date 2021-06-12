.class public final Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;
.super Lcom/samsung/android/app/music/list/local/PlayableUiFragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;,
        Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;,
        Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;,
        Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;,
        Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/list/local/PlayableUiFragment<",
        "Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic a:[Lkotlin/reflect/KProperty;

.field public static final b:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$Companion;


# instance fields
.field private c:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

.field private d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

.field private e:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;

.field private f:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/view/View;

.field private k:Z

.field private l:Z

.field private final m:Lkotlin/Lazy;

.field private n:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;

.field private o:I

.field private p:I

.field private final q:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->a(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "defaultIconColor"

    const-string v4, "getDefaultIconColor()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->a(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->b:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;-><init>()V

    .line 91
    sget-object v0, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$defaultIconColor$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$defaultIconColor$2;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function0;

    invoke-static {v0, v1}, Lkotlin/LazyKt;->a(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->m:Lkotlin/Lazy;

    const/4 v0, -0x1

    .line 97
    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->o:I

    .line 100
    iput v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->p:I

    .line 103
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onItemClickListener$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->e:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;

    if-nez p0, :cond_0

    const-string v0, "folderTreeCheckableListImpl"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Lcom/samsung/android/app/music/list/ListFavoriteableImpl;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->n:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Ljava/lang/String;Ljava/util/ArrayList;II)V
    .locals 0

    .line 72
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;II)V

    return-void
.end method

.method private final a(Ljava/lang/String;Ljava/util/ArrayList;II)V
    .locals 7
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "UiList-FT"

    .line 377
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findAddAudioIds() bucketId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", searchDepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", maxDepth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " audioIds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 375
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, -0x1

    if-eq p4, v0, :cond_0

    if-lt p3, p4, :cond_0

    return-void

    .line 381
    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string p1, "_id"

    const-string v0, "folder_bucket_id"

    const-string v1, "file_type"

    .line 382
    filled-new-array {p1, v0, v1}, [Ljava/lang/String;

    move-result-object v3

    .line 390
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    if-nez p1, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v0, "activity!!"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string p1, "activity!!.applicationContext"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "uri"

    .line 391
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    move-object v4, p1

    check-cast v4, Ljava/lang/String;

    move-object v5, p1

    check-cast v5, [Ljava/lang/String;

    const/4 v6, 0x0

    .line 390
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 536
    move-object v1, v0

    check-cast v1, Ljava/io/Closeable;

    check-cast p1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v1

    check-cast v2, Landroid/database/Cursor;

    if-nez v0, :cond_2

    goto :goto_1

    .line 547
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x2

    .line 393
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x0

    .line 399
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    .line 396
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "c.getString(1)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    add-int/2addr v2, p3

    invoke-direct {p0, v3, p2, v2, p4}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Ljava/lang/String;Ljava/util/ArrayList;II)V

    .line 550
    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_3

    .line 552
    :goto_1
    sget-object p2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return-void

    :catchall_0
    move-exception p2

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-static {v1, p1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static final synthetic b(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/ListFavoriteableImpl;
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    if-nez p0, :cond_0

    const-string v0, "favoriteable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic c(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->m()V

    return-void
.end method

.method public static final synthetic d(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->i:Landroid/widget/ImageView;

    return-object p0
.end method

.method public static final synthetic e(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Landroid/view/View;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->j:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic f(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->n:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ShuffleAsyncTask;

    return-object p0
.end method

.method public static final synthetic g(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez p0, :cond_0

    const-string v0, "navigationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method private final i()I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->m:Lkotlin/Lazy;

    sget-object v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final j()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v0, :cond_0

    const-string v1, "navigationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private final k()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v0, :cond_0

    const-string v1, "navigationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private final l()Z
    .locals 2

    .line 317
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v0, :cond_0

    const-string v1, "navigationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Folders$Trees;->c:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private final m()V
    .locals 5

    const-string v0, "NamDo"

    const-string v1, "updateHeartButton"

    .line 338
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->isDetached()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->n_()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_3

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->j:Landroid/view/View;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 342
    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const/16 v3, 0x8

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 344
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->n_()Ljava/lang/Boolean;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f0b0407

    goto :goto_1

    :cond_3
    const v3, 0x7f0b03e0

    .line 345
    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 346
    invoke-static {p0}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;)V

    .line 347
    check-cast v3, Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 349
    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->i:Landroid/widget/ImageView;

    if-eqz v0, :cond_8

    .line 350
    iget-boolean v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k:Z

    if-eqz v3, :cond_5

    const/4 v1, 0x0

    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 352
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->n_()Ljava/lang/Boolean;

    move-result-object v1

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const v1, 0x7f0202a9

    goto :goto_2

    :cond_7
    const v1, 0x7f0202a8

    .line 353
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 354
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->i()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/music/util/UiUtils;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_8
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method private final n()V
    .locals 6

    .line 359
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v0, :cond_0

    const-string v1, "navigationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 360
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity!!.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 361
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v2, :cond_2

    const-string v3, "navigationManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 360
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 362
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    if-eqz v2, :cond_5

    .line 363
    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_5

    const/4 v3, 0x0

    .line 364
    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_3

    const/4 v4, 0x1

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k:Z

    .line 365
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-lez v2, :cond_4

    const/4 v3, 0x1

    :cond_4
    iput-boolean v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l:Z

    .line 367
    :cond_5
    sget-object v2, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 362
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw v2

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public synthetic A()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    return-object v0
.end method

.method public a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V
    .locals 10
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

    if-nez p1, :cond_0

    .line 254
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v0

    .line 255
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->j()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_7

    if-eqz p2, :cond_1

    .line 256
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_12

    .line 258
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity!!.applicationContext"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 259
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;

    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v4, :cond_3

    const-string v5, "navigationManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;-><init>(Ljava/lang/String;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    .line 258
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 260
    move-object v4, v1

    check-cast v4, Ljava/lang/Throwable;

    :try_start_0
    move-object v5, v0

    check-cast v5, Landroid/database/Cursor;

    if-eqz v5, :cond_4

    .line 261
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-lez v5, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    .line 262
    :goto_0
    sget-object v3, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 260
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const-string v0, "UiList-FT"

    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " onLoadFinished() data="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", hasHideFolders="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 263
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_12

    .line 267
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l()Z

    move-result v0

    if-nez v0, :cond_12

    .line 268
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v0, :cond_6

    const-string v1, "navigationManager"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a()V

    goto/16 :goto_5

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v4, p1

    .line 260
    :try_start_1
    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v0, v4}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 272
    :cond_7
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k()I

    move-result v1

    if-ne v0, v1, :cond_10

    if-eqz p2, :cond_d

    .line 273
    invoke-interface {p2}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_4

    .line 279
    :cond_8
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 280
    invoke-interface {p2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_9

    const/4 v0, 0x1

    goto :goto_2

    :cond_9
    const/4 v0, 0x0

    .line 281
    :goto_2
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-lez v1, :cond_a

    goto :goto_3

    :cond_a
    const/4 v2, 0x0

    :goto_3
    const-string v1, "UiList-FT"

    .line 284
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " onLoadFinished() hasTracks="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " hasSubFolders="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " > "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 282
    invoke-static {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l()Z

    move-result v1

    if-nez v1, :cond_b

    iget-boolean v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k:Z

    if-eq v1, v0, :cond_b

    .line 287
    iput-boolean v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k:Z

    .line 288
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->m()V

    .line 290
    :cond_b
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l:Z

    if-eq v0, v2, :cond_12

    .line 291
    iput-boolean v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l:Z

    .line 292
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_c

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_c
    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    goto :goto_5

    .line 274
    :cond_d
    :goto_4
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l()Z

    move-result p1

    if-nez p1, :cond_f

    .line 275
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez p1, :cond_e

    const-string p2, "navigationManager"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a()V

    :cond_f
    return-void

    :cond_10
    const-string v0, "UiList-FT"

    .line 298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid loader id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v4/content/Loader;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , curBucketId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v2, :cond_11

    const-string v3, "navigationManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_11
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    :cond_12
    :goto_5
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method protected b(I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 5

    .line 235
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->j()I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 236
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;

    .line 237
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v1, :cond_0

    const-string v2, "navigationManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 239
    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v3, :cond_1

    const-string v4, "listHeaderManager"

    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->b()I

    move-result v3

    .line 236
    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/query/FolderTreeQueryArgs;-><init>(Ljava/lang/String;II)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_0

    .line 242
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k()I

    move-result v0

    if-ne p1, v0, :cond_4

    .line 243
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;

    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v1, :cond_3

    const-string v2, "navigationManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderInfoQueryArgs;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    :goto_0
    const-string v1, "UiList-FT"

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " onCreateQueryArgs("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") queryArgs: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 245
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid loader id : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , curBucketId : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez p1, :cond_5

    const-string v2, "navigationManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 245
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public final c()Z
    .locals 1

    .line 88
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l:Z

    return v0
.end method

.method protected f()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;
    .locals 4

    .line 222
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;-><init>(Landroid/support/v4/app/Fragment;)V

    .line 223
    sget-boolean v1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    .line 224
    invoke-static {v1}, Lcom/samsung/android/app/music/provider/DrmType;->a(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "DrmType.getDisplayName(DrmType.MILK)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;->b(ILjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/TrackAdapter$AbsBuilder;

    .line 226
    :cond_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter$Builder;->b()Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    const v0, 0x10007

    return v0
.end method

.method public h()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 7

    .line 310
    new-instance v6, Lcom/samsung/android/app/music/menu/ListMenuGroup;

    move-object v1, p0

    check-cast v1, Landroid/support/v4/app/Fragment;

    const v2, 0x7f140006

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/music/menu/ListMenuGroup;-><init>(Landroid/support/v4/app/Fragment;IZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v6, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->contextMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    if-nez p1, :cond_0

    .line 311
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    const v0, 0x7f1305bb

    .line 312
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f1305bc

    .line 313
    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 314
    :cond_2
    invoke-super {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    new-instance v0, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;

    move-object v1, p0

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v2, :cond_0

    const-string v3, "navigationManager"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderMenuGroup;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Ljava/lang/String;)V

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    iput-object v0, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->musicMenu:Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 306
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    return-void
.end method

.method public synthetic onLoadFinished(Landroid/support/v4/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 72
    check-cast p2, Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Landroid/support/v4/content/Loader;Landroid/database/Cursor;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "outState"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->M()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->a(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    invoke-super {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 133
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getParentFragment()Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_c

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment;->a()Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    .line 134
    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez p1, :cond_0

    const-string v0, "navigationManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->a(Z)V

    .line 136
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getCommandExecutorManager()Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;

    move-result-object p1

    const/4 v0, 0x2

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 138
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v3, :cond_1

    const-string v3, "Music"

    goto :goto_0

    :cond_1
    const-string v3, "GlobalMusic"

    :goto_0
    new-array v4, v0, [Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    .line 139
    new-instance v5, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;

    move-object v6, p0

    check-cast v6, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;

    move-object v7, p0

    check-cast v7, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;

    invoke-direct {v5, v6, v7}, Lcom/samsung/android/app/music/bixby/v1/executor/local/FinishActionModeExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ActionModeController;Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewableList;)V

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v5, v4, v2

    .line 140
    new-instance v5, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_2
    const-string v7, "activity!!"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/samsung/android/app/music/bixby/v1/executor/local/PlayFolderExecutor;-><init>(Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;Landroid/content/Context;)V

    check-cast v5, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;

    aput-object v5, v4, v1

    .line 137
    invoke-interface {p1, v3, v4}, Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutorManager;->addCommandExecutor(Ljava/lang/String;[Lcom/samsung/android/app/musiclibrary/core/bixby/v1/CommandExecutor;)V

    :cond_3
    const/4 p1, 0x0

    .line 143
    invoke-static {p0, v2, v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;IILjava/lang/Object;)V

    .line 145
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->q:Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/OnItemClickListener;)V

    .line 147
    new-instance v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    if-nez v3, :cond_4

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_4
    const-string v4, "activity!!"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Landroid/app/Activity;

    const v4, 0x7f0b034b

    invoke-direct {v1, v3, v4}, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/SelectAllImpl;-><init>(Landroid/app/Activity;I)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/selectmode/ISelectAll;)V

    .line 148
    sget v1, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->e:I

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->b_(I)V

    .line 149
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$ActionModeOptionsMenu;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/menu/ActionModeMenu;)V

    .line 150
    new-instance v1, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;

    move-object v4, p0

    check-cast v4, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/music/list/analytics/ListAnalyticsImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$ListAnalytics;)V

    .line 152
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->e:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;

    .line 153
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->e:Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderTreeCheckableListImpl;

    if-nez v1, :cond_5

    const-string v3, "folderTreeCheckableListImpl"

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_5
    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;)V

    .line 154
    new-instance v1, Lcom/samsung/android/app/music/list/ListPlayableImpl;

    move-object v3, p0

    check-cast v3, Landroid/support/v4/app/Fragment;

    invoke-direct {v1, v3}, Lcom/samsung/android/app/music/list/ListPlayableImpl;-><init>(Landroid/support/v4/app/Fragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Playable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Playable;)V

    .line 155
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$FolderDeleteableImpl;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/Deleteable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Deleteable;)V

    .line 156
    new-instance v1, Lcom/samsung/android/app/music/list/ListShareableImpl;

    invoke-direct {v1, v3, v2, v0, p1}, Lcom/samsung/android/app/music/list/ListShareableImpl;-><init>(Landroid/support/v4/app/Fragment;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/Shareable;)V

    .line 157
    new-instance v1, Lcom/samsung/android/app/music/list/favorite/LocalCategory;

    const v6, 0x10007

    iget-object v5, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->d:Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;

    if-nez v5, :cond_6

    const-string v7, "navigationManager"

    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v5}, Lcom/samsung/android/app/music/list/local/folder/FolderContainerFragment$NavigationManager;->b()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v1

    invoke-direct/range {v5 .. v10}, Lcom/samsung/android/app/music/list/favorite/LocalCategory;-><init>(ILjava/lang/String;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 158
    new-instance v5, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    check-cast v1, Lcom/samsung/android/app/music/list/favorite/Category;

    invoke-direct {v5, v3, v1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;-><init>(Landroid/support/v4/app/Fragment;Lcom/samsung/android/app/music/list/favorite/Category;)V

    .line 159
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$apply$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-virtual {v5, v1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->a(Lkotlin/jvm/functions/Function1;)V

    .line 160
    iput-object v5, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    .line 158
    check-cast v5, Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/Favoriteable;)V

    .line 162
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;

    new-instance v5, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;

    const v6, 0x7f020220

    invoke-direct {v5, v6, p1, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/Divider;-><init>(ILcom/samsung/android/app/musiclibrary/ui/list/DividerChecker;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-direct {v3, v4, v5}, Lcom/samsung/android/app/musiclibrary/ui/list/ListItemDecoration;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;Lcom/samsung/android/app/musiclibrary/ui/list/Divider;)V

    check-cast v3, Landroid/support/v7/widget/RecyclerView$ItemDecoration;

    invoke-virtual {v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 165
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->l()Z

    move-result v1

    const/4 v3, -0x5

    if-eqz v1, :cond_8

    .line 166
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    .line 167
    new-instance v2, Lcom/samsung/android/app/music/list/local/folder/FolderFilterableImpl;

    invoke-direct {v2}, Lcom/samsung/android/app/music/list/local/folder/FolderFilterableImpl;-><init>()V

    check-cast v2, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 168
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 169
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v2, :cond_7

    const-string v5, "listHeaderManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->addHeaderView(ILandroid/view/View;)V

    goto/16 :goto_1

    .line 171
    :cond_8
    new-instance v1, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    invoke-direct {v1, v4}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;)V

    const v5, 0x7f0400d3

    .line 172
    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->b(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 173
    new-instance v5, Lcom/samsung/android/app/music/list/local/folder/FolderFilterableImpl;

    invoke-direct {v5}, Lcom/samsung/android/app/music/list/local/folder/FolderFilterableImpl;-><init>()V

    check-cast v5, Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;

    invoke-virtual {v1, v5}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(Lcom/samsung/android/app/music/list/common/FilterOptionManager$Filterable;)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 174
    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->a(I)Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;

    .line 175
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager$Builder;->i()Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    .line 176
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v2, :cond_9

    const-string v5, "listHeaderManager"

    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_9
    invoke-virtual {v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->addHeaderView(ILandroid/view/View;)V

    .line 178
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v1, :cond_a

    const-string v2, "listHeaderManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_a
    invoke-virtual {v1}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f130302

    .line 179
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->i:Landroid/widget/ImageView;

    const v2, 0x7f130303

    .line 180
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 181
    new-instance v2, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$1;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$1;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    check-cast v2, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iput-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->j:Landroid/view/View;

    .line 186
    new-instance v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$$inlined$let$lambda$2;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;)V

    .line 192
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->c:Lcom/samsung/android/app/music/list/common/ListHeaderManager;

    if-nez v1, :cond_b

    const-string v2, "listHeaderManager"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_b
    new-instance v2, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment$onViewCreated$5;-><init>(Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;)V

    check-cast v2, Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/music/list/common/ListHeaderManager;->a(Lkotlin/jvm/functions/Function0;)V

    .line 201
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->n()V

    .line 202
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->m()V

    .line 205
    :goto_1
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;

    invoke-virtual {v1, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeAdapter;->b(Landroid/os/Bundle;)V

    .line 207
    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;

    const v5, 0x7f0b02b4

    const v1, 0x7f0b02b9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    move-object v3, p2

    invoke-direct/range {v3 .. v9}, Lcom/samsung/android/app/musiclibrary/ui/list/emptyview/DefaultEmptyViewCreator;-><init>(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILjava/lang/Integer;Ljava/lang/Integer;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment$EmptyViewCreator;)V

    .line 209
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->j()I

    move-result p2

    invoke-static {p0, p2, p1, v0, p1}, Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;->a(Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerViewFragment;ILandroid/os/Bundle;ILjava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->k()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f(I)V

    return-void

    .line 133
    :cond_c
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.music.list.local.folder.FolderContainerFragment"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setUserVisibleHint(Z)V
    .locals 1

    .line 126
    invoke-super {p0, p1}, Lcom/samsung/android/app/music/list/local/PlayableUiFragment;->setUserVisibleHint(Z)V

    if-eqz p1, :cond_1

    .line 127
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;

    iget-object p1, p1, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->f:Lcom/samsung/android/app/music/list/ListFavoriteableImpl;

    if-nez p1, :cond_0

    const-string v0, "favoriteable"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/ListFavoriteableImpl;->c()V

    :cond_1
    return-void
.end method

.method protected u()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 3

    .line 230
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicLinearLayoutManager;

    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/folder/FolderTreeFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

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
