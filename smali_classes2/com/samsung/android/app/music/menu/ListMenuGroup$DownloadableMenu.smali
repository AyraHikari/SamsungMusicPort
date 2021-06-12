.class public final Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;
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
    name = "DownloadableMenu"
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

    .line 402
    iput-object p1, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 3

    .line 429
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/samsung/android/app/music/download/Downloadable;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->d(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/music/download/Downloadable;

    invoke-interface {v0}, Lcom/samsung/android/app/music/download/Downloadable;->v()V

    .line 431
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->g(Lcom/samsung/android/app/music/menu/ListMenuGroup;)V

    .line 432
    iget-object v0, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->c(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "MDL2"

    const-string v2, "List"

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/core/utils/logging/FeatureLogger;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 1

    .line 420
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 421
    sget-boolean p2, Lcom/samsung/android/app/music/info/features/AppFeatures;->j:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 422
    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->e(Lcom/samsung/android/app/music/menu/ListMenuGroup;)I

    move-result p2

    if-lez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a:Lcom/samsung/android/app/music/menu/ListMenuGroup;

    invoke-static {p2}, Lcom/samsung/android/app/music/menu/ListMenuGroup;->h(Lcom/samsung/android/app/music/menu/ListMenuGroup;)Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_0

    .line 424
    :cond_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :goto_0
    return-void

    :cond_2
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 1

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f1305ae

    .line 407
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a(Landroid/view/Menu;I)V

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

    .line 412
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305ae

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 413
    :cond_0
    invoke-direct {p0}, Lcom/samsung/android/app/music/menu/ListMenuGroup$DownloadableMenu;->a()V

    const/4 p1, 0x1

    :goto_0
    return p1
.end method
