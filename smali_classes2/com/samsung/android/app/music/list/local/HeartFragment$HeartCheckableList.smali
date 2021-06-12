.class final Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;
.super Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/HeartFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HeartCheckableList"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;,
        Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$Companion;


# instance fields
.field private final c:Lcom/samsung/android/app/music/list/local/HeartFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;->a:Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/music/list/local/HeartFragment;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 410
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/HeartFragment;->getRecyclerView()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableListImpl;-><init>(Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;->c:Lcom/samsung/android/app/music/list/local/HeartFragment;

    return-void
.end method


# virtual methods
.method protected a(Landroid/util/SparseBooleanArray;I)[J
    .locals 9

    const-string p2, "checkedItemPositions"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;->c()Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 417
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 418
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1754
    invoke-virtual {p1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    const/4 v7, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1755
    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v2}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 422
    :cond_0
    iget-object v4, p0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;->c:Lcom/samsung/android/app/music/list/local/HeartFragment;

    invoke-virtual {v4}, Lcom/samsung/android/app/music/list/local/HeartFragment;->D()Lcom/samsung/android/app/musiclibrary/ui/list/RecyclerCursorAdapter;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/music/list/local/HeartAdapter;

    .line 423
    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getText1(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 424
    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->getItemKeyword(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_2

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    .line 425
    :cond_2
    invoke-virtual {v4, v3}, Lcom/samsung/android/app/music/list/local/HeartAdapter;->b(I)I

    move-result v3

    .line 426
    new-instance v4, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;

    invoke-direct {v4, v5, v8, v3}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 430
    :cond_3
    move-object p1, p0

    check-cast p1, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList;

    .line 431
    check-cast v0, Ljava/lang/Iterable;

    .line 1758
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v8, 0x0

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/16 v1, 0x3e8

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;

    if-le v8, v1, :cond_5

    goto/16 :goto_4

    .line 434
    :cond_5
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->a()I

    move-result v1

    const/16 v2, 0x66

    if-eq v1, v2, :cond_6

    packed-switch v1, :pswitch_data_0

    const-string v1, "context"

    .line 458
    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 459
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->a()I

    move-result v1

    .line 460
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b()Ljava/lang/String;

    move-result-object v2

    .line 461
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->c()I

    move-result v0

    .line 457
    invoke-static {p2, v1, v2, v0}, Lcom/samsung/android/app/music/list/favorite/Favorite;->getTrackQueryArgs(Landroid/content/Context;ILjava/lang/String;I)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 463
    iget-object v1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    const-string v2, "uri"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    iget-object v3, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    iget-object v4, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selectionArgs:[Ljava/lang/String;

    iget-object v5, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->orderBy:Ljava/lang/String;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    check-cast v0, Ljava/io/Closeable;

    const/4 v1, 0x0

    .line 464
    check-cast v1, Ljava/lang/Throwable;

    :try_start_0
    move-object v2, v0

    check-cast v2, Landroid/database/Cursor;

    .line 465
    invoke-static {v2}, Lcom/samsung/android/app/music/util/MediaDbUtils;->a(Landroid/database/Cursor;)[J

    move-result-object v2

    .line 466
    array-length v3, v2

    add-int/2addr v8, v3

    .line 467
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    move-object v1, p1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    invoke-static {v0, v1}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 436
    :pswitch_0
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->b(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object v0

    const-string v1, "OnlineContentPlayUtils.g\u2026ks(context, data.keyword)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v0

    if-eqz v0, :cond_4

    .line 438
    array-length v1, v0

    add-int/2addr v8, v1

    .line 439
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 443
    :pswitch_1
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object v0

    const-string v1, "OnlineContentPlayUtils.g\u2026ks(context, data.keyword)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v0

    if-eqz v0, :cond_4

    .line 445
    array-length v1, v0

    add-int/2addr v8, v1

    .line 446
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 450
    :cond_6
    invoke-virtual {v0}, Lcom/samsung/android/app/music/list/local/HeartFragment$HeartCheckableList$CheckedItem;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils;->d(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;

    move-result-object v0

    const-string v1, "OnlineContentPlayUtils.g\u2026ks(context, data.keyword)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/music/util/player/OnlineContentPlayUtils$TrackListInfo;->b()[J

    move-result-object v0

    if-eqz v0, :cond_4

    .line 452
    array-length v1, v0

    add-int/2addr v8, v1

    .line 453
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 475
    :cond_7
    :goto_4
    sget-boolean p1, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz p1, :cond_8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 476
    :cond_8
    new-array p1, v8, [J

    .line 479
    check-cast v6, Ljava/lang/Iterable;

    .line 1760
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [J

    .line 480
    sget-boolean v3, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    if-eqz v3, :cond_a

    .line 481
    array-length v3, v2

    add-int/2addr v3, v0

    if-le v3, v1, :cond_9

    rsub-int v3, v0, 0x3e8

    goto :goto_6

    :cond_9
    array-length v3, v2

    goto :goto_6

    .line 483
    :cond_a
    array-length v3, v2

    :goto_6
    if-gtz v3, :cond_b

    goto :goto_7

    .line 487
    :cond_b
    invoke-static {v2, v7, p1, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    goto :goto_5

    :cond_c
    :goto_7
    return-object p1

    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
