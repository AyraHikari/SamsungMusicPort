.class public final Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;
.super Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/BrowseLauncher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FragmentRequester"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester<",
        "Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;",
        ">;"
    }
.end annotation


# instance fields
.field private g:Landroid/support/v4/app/Fragment;

.field private h:Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;


# direct methods
.method constructor <init>(I)V
    .locals 0

    .line 277
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/BrowseLauncher$LaunchRequester;-><init>(I)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)Landroid/support/v4/app/Fragment;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->g:Landroid/support/v4/app/Fragment;

    return-object p0
.end method

.method static synthetic b(Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->h:Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/support/v4/app/Fragment;
    .locals 2

    .line 281
    iget v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->f:I

    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/browse/list/details/BrowseFragmentFactory;->a(ILandroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/support/v4/app/Fragment;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->g:Landroid/support/v4/app/Fragment;

    .line 325
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c()Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;)Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;
    .locals 0

    .line 329
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->h:Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;

    .line 330
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c()Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object p1

    return-object p1
.end method

.method public a(Landroid/support/v4/app/FragmentManager;)V
    .locals 7

    if-nez p1, :cond_0

    .line 286
    sget-object p1, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string v0, "goTo. fragment manager is null"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 290
    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a()Landroid/support/v4/app/Fragment;

    move-result-object v0

    .line 291
    sget-object v1, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "goTo. from - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->g:Landroid/support/v4/app/Fragment;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", to - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->g:Landroid/support/v4/app/Fragment;

    if-eqz v1, :cond_2

    .line 294
    iget-object p1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->g:Landroid/support/v4/app/Fragment;

    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->e(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentManager;

    move-result-object p1

    .line 295
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->h:Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$Transaction;

    if-eqz v1, :cond_1

    .line 296
    new-instance v1, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;

    invoke-direct {v1, p0, v0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester$1;-><init>(Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;Landroid/support/v4/app/Fragment;)V

    .line 297
    invoke-static {p1, v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Lkotlin/jvm/functions/Function1;)V

    .line 304
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z

    goto :goto_0

    .line 306
    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->g:Landroid/support/v4/app/Fragment;

    const/4 v2, 0x0

    invoke-static {p1, v1, v0, v2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentManagerExtensionKt;->a(Landroid/support/v4/app/FragmentManager;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_2
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 310
    invoke-virtual {p1}, Landroid/support/v4/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    .line 311
    instance-of v0, p1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    if-eqz v0, :cond_3

    .line 312
    iget v0, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->f:I

    invoke-static {v0}, Lcom/samsung/android/app/music/browse/BrowseUiType$ListTypeConverter;->b(I)I

    move-result v2

    .line 313
    move-object v1, p1

    check-cast v1, Lcom/samsung/android/app/music/navigate/NavigationManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->a:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->d()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/app/music/navigate/NavigationManager;->navigate(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Z)V

    .line 315
    sget-object p1, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string v0, "goTo. from is null. so use to navigate"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 319
    :cond_3
    sget-object p1, Lcom/samsung/android/app/music/browse/BrowseLauncher;->a:Ljava/lang/String;

    const-string v0, "goTo. from is null. so can\'t move"

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method synthetic b()Ljava/lang/Object;
    .locals 1

    .line 271
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;->c()Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;

    move-result-object v0

    return-object v0
.end method

.method c()Lcom/samsung/android/app/music/browse/BrowseLauncher$FragmentRequester;
    .locals 0

    return-object p0
.end method
