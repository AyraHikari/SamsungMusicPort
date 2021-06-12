.class final Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SpotifyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Adapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;",
        ">;",
        "Lcom/samsung/android/app/musiclibrary/ui/list/ViewEnabler;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

.field private b:Landroid/database/Cursor;

.field private c:Z

.field private final d:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/list/local/SpotifyManager;Landroid/app/Activity;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            ")V"
        }
    .end annotation

    const-string v0, "activity"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1405
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    .line 1406
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->d:Landroid/app/Activity;

    const/4 p1, 0x1

    .line 1409
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->c:Z

    .line 1412
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private final a(I)Landroid/database/Cursor;
    .locals 2

    .line 1490
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->b:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method private final a()V
    .locals 1

    .line 1463
    new-instance v0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$safeNotifyDataSetChanged$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$safeNotifyDataSetChanged$1;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final a(JI)V
    .locals 7

    .line 1472
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->b(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Analytics;->a(JI)V

    .line 1473
    invoke-direct {p0, p3}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1474
    iget-object p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->d:Landroid/app/Activity;

    const-string p3, "uri"

    .line 1757
    invoke-interface {p1, p3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p3

    invoke-interface {p1, p3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1476
    move-object v1, p2

    check-cast v1, Landroid/content/Context;

    invoke-static {v1, p3}, Lcom/samsung/android/app/music/regional/spotify/SpotifyUtils;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "album_id"

    .line 1758
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string p2, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v2, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri_type"

    .line 1759
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string p2, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v3, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "image_url"

    .line 1760
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string p2, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v4, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "album_name"

    .line 1761
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string p2, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v5, p2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "uri"

    .line 1762
    invoke-interface {p1, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string p1, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1477
    invoke-static/range {v1 .. v6}, Lcom/samsung/android/app/music/regional/spotify/tab/SpotifyDetailActivity$SpotifyListDetailActivityLauncher;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;JI)V
    .locals 0

    .line 1405
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(JI)V

    return-void
.end method

.method public static final synthetic a(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1405
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method private final a(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1450
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->isComputingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1451
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$doNotifyIfReady$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$doNotifyIfReady$1;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Lkotlin/jvm/functions/Function0;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    const-string v0, "UiList"

    const-string v1, "notify is ready without delay"

    .line 1456
    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a:Lcom/samsung/android/app/music/list/local/SpotifyManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/list/local/SpotifyManager;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/MusicRecyclerView;->getRecycledViewPool()Landroid/support/v7/widget/RecyclerView$RecycledViewPool;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$RecycledViewPool;->clear()V

    .line 1458
    :cond_1
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;
    .locals 3

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1416
    new-instance p2, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;

    .line 1418
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->d:Landroid/app/Activity;

    const v1, 0x7f040259

    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->a(Landroid/app/Activity;ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1416
    invoke-direct {p2, p0, p0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;-><init>(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;Landroid/view/View;)V

    return-object p2
.end method

.method public final a(Landroid/database/Cursor;)V
    .locals 0

    .line 1467
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->b:Landroid/database/Cursor;

    .line 1468
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a()V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;I)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1423
    invoke-direct {p0, p2}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(I)Landroid/database/Cursor;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1424
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "name"

    .line 1754
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f100086

    .line 1425
    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader;->a(I)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;

    move-result-object v0

    const-string v1, "image_url"

    .line 1755
    invoke-interface {p2, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p2, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    const-string v1, "getString(getColumnIndexOrThrow(columnName))"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v0, p2}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$KeyBuilder;->a(Ljava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;

    move-result-object p2

    .line 1427
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->a()Landroid/widget/ImageView;

    move-result-object v0

    sget v1, Lcom/samsung/android/app/music/martworkcache/MArtworkUtils;->c:I

    .line 1426
    invoke-virtual {p2, v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/martworkcache/AsyncArtworkLoader$DestPublisher;->a(Landroid/widget/ImageView;I)V

    .line 1429
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->a()Landroid/widget/ImageView;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1430
    invoke-virtual {p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;->a()Landroid/widget/ImageView;

    move-result-object p1

    iget-boolean p2, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->c:Z

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1435
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->b:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1439
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(I)Landroid/database/Cursor;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "_id"

    .line 1756
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 1405
    check-cast p1, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;I)V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 1405
    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a(Landroid/view/ViewGroup;I)Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter$SpotifyViewHolder;

    move-result-object p1

    check-cast p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;

    return-object p1
.end method

.method public setViewEnabled(Z)V
    .locals 1

    .line 1443
    iget-boolean v0, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->c:Z

    if-eq v0, p1, :cond_0

    .line 1444
    iput-boolean p1, p0, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->c:Z

    .line 1445
    invoke-direct {p0}, Lcom/samsung/android/app/music/list/local/SpotifyManager$Adapter;->a()V

    :cond_0
    return-void
.end method
