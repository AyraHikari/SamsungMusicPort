.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;
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
    name = "KnoxMenu"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 665
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(I)V
    .locals 4

    .line 778
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "KNOX"

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;)V

    .line 780
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->b(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    sget-object v1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Tracks;->a:Landroid/net/Uri;

    .line 781
    iget-object v2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_0

    check-cast v2, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/list/CheckableList;->a(I)[J

    move-result-object v2

    const v3, 0x7f0b0197

    .line 779
    invoke-static {v0, v1, v2, p1, v3}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->startMoveFiles(Landroid/app/Activity;Landroid/net/Uri;[JII)V

    .line 784
    iget-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    return-void

    .line 781
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.musiclibrary.ui.list.CheckableList"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 0

    .line 788
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 789
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isEnalbeMoveToPersonal(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_1
    return-void
.end method

.method private final a(Landroid/view/Menu;Ljava/lang/String;I)V
    .locals 4

    .line 793
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 795
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01a4

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 797
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isEnalbeMoveToPersonal(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    return-void
.end method

.method private final b(Landroid/view/Menu;Ljava/lang/String;I)V
    .locals 4

    .line 801
    invoke-interface {p1, p3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 803
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b01a5

    new-array v3, v0, [Ljava/lang/Object;

    aput-object p2, v3, p3

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 805
    :cond_0
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isEnableMoveToKnox(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p3, 0x1

    :cond_1
    invoke-interface {p1, p3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_2
    return-void
.end method

.method private final c(Landroid/view/Menu;)V
    .locals 8

    .line 715
    new-instance v0, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;

    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;-><init>(Landroid/content/Context;)V

    .line 716
    iget-object v1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->getMoveToKnoxMenuList(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 717
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 722
    move-object v2, v0

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_9

    .line 723
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    const-string v4, "com.sec.knox.moveto.containerType"

    .line 724
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    const-string v5, "com.sec.knox.moveto.containerId"

    .line 725
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    .line 726
    sget v6, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_SECURE_FOLDER:I

    const v7, 0x7f0b0343

    if-ne v4, v6, :cond_2

    .line 727
    iput v5, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->e:I

    const-string v4, "com.sec.knox.moveto.name"

    .line 728
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 729
    iget-object v3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_1
    const v4, 0x7f1305b4

    .line 730
    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->b(Landroid/view/Menu;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 731
    :cond_2
    sget v6, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_CONTAINER_TYPE_ECCONTAINER:I

    if-ne v4, v6, :cond_3

    .line 732
    iput v5, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->f:I

    const-string v4, "com.sec.knox.moveto.name"

    .line 735
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1305b5

    .line 733
    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->b(Landroid/view/Menu;Ljava/lang/String;I)V

    goto :goto_1

    .line 738
    :cond_3
    sget v6, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_PERSONAL_TYPE_SECURE_FOLDER:I

    if-ne v4, v6, :cond_5

    .line 739
    iput v5, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->g:I

    const-string v4, "com.sec.knox.moveto.name"

    .line 740
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 741
    iget-object v3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_4
    const v4, 0x7f1305b6

    .line 742
    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(Landroid/view/Menu;Ljava/lang/String;I)V

    goto :goto_1

    .line 747
    :cond_5
    sget v6, Lcom/samsung/android/app/music/support/android/os/PersonaManagerCompat;->MOVE_TO_PERSONAL_TYPE_KNOX:I

    if-ne v4, v6, :cond_6

    .line 748
    iput v5, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->d:I

    const v3, 0x7f1305b2

    .line 749
    invoke-direct {p0, p1, v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(Landroid/view/Menu;I)V

    goto :goto_1

    :cond_6
    const-string v4, "Knox"

    const-string v6, "com.sec.knox.moveto.name"

    .line 751
    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 752
    iput v5, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->b:I

    const-string v4, "com.sec.knox.moveto.name"

    .line 755
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f1305b1

    .line 753
    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->b(Landroid/view/Menu;Ljava/lang/String;I)V

    goto :goto_1

    .line 759
    :cond_7
    iput v5, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->c:I

    const-string v4, "com.sec.knox.moveto.name"

    .line 760
    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_8

    .line 761
    iget-object v3, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v3}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_8
    const v4, 0x7f1305b3

    .line 762
    invoke-direct {p0, p1, v3, v4}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->b(Landroid/view/Menu;Ljava/lang/String;I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    return-void

    :cond_a
    :goto_2
    const-string p1, "KnoxMenu"

    .line 718
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not exist knox container"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final d(Landroid/view/Menu;)V
    .locals 2

    const v0, 0x7f1305b1

    .line 769
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_0
    const v0, 0x7f1305b2

    .line 770
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1
    const v0, 0x7f1305b4

    .line 771
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_2
    const v0, 0x7f1305b5

    .line 772
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_3
    const v0, 0x7f1305b6

    .line 773
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_4
    const v0, 0x7f1305b3

    .line 774
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 682
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->d(Landroid/view/Menu;)V

    .line 684
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->k(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "KnoxMenu"

    .line 686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " onPrepareOptionsMenu() hasDrmIds is true. Knox and Secure folder option does not show "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 684
    invoke-static {p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 688
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/library/framework/security/KnoxUtils;->isSupportSecureFolder(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->c(Landroid/view/Menu;)V

    goto :goto_0

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0b04b1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f1305b1

    .line 690
    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->b(Landroid/view/Menu;Ljava/lang/String;I)V

    const v0, 0x7f1305b2

    .line 695
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(Landroid/view/Menu;I)V

    :goto_0
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

.method public a(Landroid/view/MenuItem;)Z
    .locals 1

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 702
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    goto :goto_1

    .line 708
    :pswitch_0
    iget p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->g:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(I)V

    goto :goto_0

    .line 707
    :pswitch_1
    iget p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->f:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(I)V

    goto :goto_0

    .line 706
    :pswitch_2
    iget p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->e:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(I)V

    goto :goto_0

    .line 704
    :pswitch_3
    iget p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->c:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(I)V

    goto :goto_0

    .line 705
    :pswitch_4
    iget p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->d:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(I)V

    goto :goto_0

    .line 703
    :pswitch_5
    iget p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->b:I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/menu/ListMenuGroup$KnoxMenu;->a(I)V

    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x7f1305b1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305b1

    .line 809
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f1305b2

    .line 810
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f1305b4

    .line 811
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f1305b5

    .line 812
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f1305b6

    .line 813
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_1

    const v0, 0x7f1305b3

    .line 814
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
