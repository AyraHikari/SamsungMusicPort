.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/menu/ListMenuGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PrivateModeMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/ListMenuGroup;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 497
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a([JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;
    .locals 5

    .line 609
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->g()I

    move-result v0

    const v1, 0x100004

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    .line 611
    new-instance v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;

    .line 612
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    if-nez p2, :cond_0

    .line 613
    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->a()V

    :cond_0
    const/4 v3, -0x1

    .line 611
    invoke-direct {v0, v1, p2, v2, v3}, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;-><init>(Landroid/content/Context;Ljava/lang/String;II)V

    .line 617
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cp_attrs!=524296 AND "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a(J)Ljava/lang/String;

    move-result-object v3

    .line 619
    invoke-static {v3, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_music"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=1"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_secretbox"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->selection:Ljava/lang/String;

    .line 626
    new-array p1, v2, [Ljava/lang/String;

    const/4 v1, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count (distinct "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p2, 0x29

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v1

    iput-object p1, v0, Lcom/samsung/android/app/music/list/local/query/PlaylistTrackQueryArgs;->projection:[Ljava/lang/String;

    .line 616
    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    goto :goto_0

    .line 629
    :cond_1
    new-instance v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    invoke-direct {v0}, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;-><init>()V

    .line 630
    sget-object p2, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    iput-object p2, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->uri:Landroid/net/Uri;

    .line 631
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id"

    .line 632
    invoke-static {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/util/DefaultUiUtils;->a(Ljava/lang/String;[J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_music"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "=1"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " AND "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "is_secretbox"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->selection:Ljava/lang/String;

    const-string p1, "count (distinct _id)"

    .line 635
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;->projection:[Ljava/lang/String;

    :goto_0
    return-object v0

    .line 609
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.ListInfoGetter"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(J)Ljava/lang/String;
    .locals 2

    const-wide/16 v0, -0xb

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    const-wide/16 v0, -0xc

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xe

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    const-wide/16 v0, -0xd

    cmp-long p1, p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "_id"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "audio_id"

    :goto_1
    return-object p1
.end method

.method private final a(Landroid/view/Menu;IZ)V
    .locals 1

    .line 547
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 548
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 549
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 551
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_2
    return-void
.end method

.method private final a([JZZ)V
    .locals 1

    if-eqz p1, :cond_2

    .line 575
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    .line 577
    invoke-static {v0, p1, p2, p3}, Lcom/samsung/android/app/music/privatemode/PrivateUtils;->a(Landroid/support/v4/app/FragmentActivity;[JZZ)V

    .line 583
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private final b(Landroid/view/Menu;IZ)V
    .locals 1

    .line 560
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 561
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a(Landroid/content/Context;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 562
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 564
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 502
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->j(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z

    move-result v0

    const v1, 0x7f1305b7

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a(Landroid/view/Menu;IZ)V

    .line 503
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->j(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z

    move-result v0

    const v1, 0x7f1305bb

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a(Landroid/view/Menu;IZ)V

    .line 504
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->j(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z

    move-result v0

    const v1, 0x7f1305b8

    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->b(Landroid/view/Menu;IZ)V

    .line 508
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->j(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z

    move-result v0

    const v1, 0x7f1305bc

    .line 505
    invoke-direct {p0, p1, v1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->b(Landroid/view/Menu;IZ)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "inflater"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 653
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 654
    invoke-static {p1}, Lcom/samsung/android/app/music/library/framework/security/PrivateModeUtils;->a(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 515
    check-cast v0, Ljava/lang/String;

    .line 516
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    const/4 v2, 0x0

    goto/16 :goto_0

    .line 535
    :pswitch_1
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object p1

    .line 536
    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a([JZZ)V

    .line 538
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    goto :goto_0

    .line 535
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 525
    :pswitch_2
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object p1

    .line 526
    invoke-direct {p0, p1, v2, v2}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a([JZZ)V

    const-string v0, "MVTP"

    goto :goto_0

    .line 525
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 531
    :pswitch_3
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_2

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object p1

    .line 532
    invoke-direct {p0, p1, v1, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a([JZZ)V

    goto :goto_0

    .line 531
    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 518
    :pswitch_4
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object p1

    if-eqz p1, :cond_3

    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object p1

    .line 519
    invoke-direct {p0, p1, v2, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a([JZZ)V

    const-string v0, "MVTP"

    .line 522
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    goto :goto_0

    .line 518
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :goto_0
    if-eqz v0, :cond_4

    .line 542
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    return v2

    :pswitch_data_0
    .packed-switch 0x7f1305b7
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public final a([J)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 589
    array-length v1, p1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_2

    .line 592
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/list/ListInfoGetter;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a([JLjava/lang/String;)Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;

    move-result-object v1

    .line 595
    invoke-static {p1}, Lkotlin/collections/ArraysKt;->c([J)Ljava/util/Set;

    move-result-object p1

    .line 596
    iget-object v3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$PrivateModeMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "context"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Lcom/samsung/android/app/musiclibrary/ui/list/query/QueryArgs;)Landroid/database/Cursor;

    move-result-object v1

    check-cast v1, Ljava/io/Closeable;

    const/4 v3, 0x0

    check-cast v3, Ljava/lang/Throwable;

    :try_start_0
    move-object v4, v1

    check-cast v4, Landroid/database/Cursor;

    if-eqz v4, :cond_2

    .line 597
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-ne v4, p1, :cond_2

    const/4 v0, 0x1

    .line 600
    :cond_2
    sget-object p1, Lkotlin/Unit;->a:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 596
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    return v0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    move-object v3, p1

    :try_start_1
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-static {v1, v3}, Lkotlin/io/CloseableKt;->a(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    .line 592
    :cond_3
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.ListInfoGetter"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_2
    return v0
.end method

.method public final b(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305b7

    .line 658
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f1305bb

    .line 659
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f1305b8

    .line 660
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f1305bc

    .line 661
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
