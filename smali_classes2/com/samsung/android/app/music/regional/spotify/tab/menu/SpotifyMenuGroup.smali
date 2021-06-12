.class public final Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup$Companion;


# instance fields
.field private final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/support/v4/app/Fragment;

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->a:Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/support/v4/app/Fragment;I)V
    .locals 4

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->c:Landroid/support/v4/app/Fragment;

    iput p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->d:I

    .line 22
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->b:Ljava/util/ArrayList;

    .line 25
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->b:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->c:Landroid/support/v4/app/Fragment;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {p2, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/menu/LaunchSearchMenu;-><init>(Landroid/support/v4/app/Fragment;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object p1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->b:Ljava/util/ArrayList;

    new-instance p2, Lcom/samsung/android/app/music/menu/LaunchMenu;

    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->c:Landroid/support/v4/app/Fragment;

    invoke-direct {p2, v0, v1}, Lcom/samsung/android/app/music/menu/LaunchMenu;-><init>(Landroid/support/v4/app/FragmentActivity;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private final a()V
    .locals 14

    .line 69
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "fragment.activity ?: return"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    .line 70
    move-object v3, v0

    check-cast v3, Landroid/app/Activity;

    invoke-static {v3}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 71
    sget-object v2, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity;->a:Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;->a(Lcom/samsung/android/app/music/milk/event/EventPromotionActivity$Companion;Landroid/app/Activity;Ljava/lang/String;ZILjava/lang/Object;)V

    .line 74
    :cond_0
    sget-object v8, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a:Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;

    const/4 v9, 0x0

    const-string v10, "0004"

    const/4 v11, 0x0

    const/4 v12, 0x4

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;->a(Lcom/samsung/android/app/musiclibrary/kotlin/extension/SamsungAnalytics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void

    :cond_1
    return-void
.end method

.method private final a(Landroid/view/Menu;I)V
    .locals 0

    .line 63
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 65
    iget-object p2, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->c:Landroid/support/v4/app/Fragment;

    invoke-static {p2}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/FragmentExtensionKt;->a(Landroid/support/v4/app/Fragment;)Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/music/help/ContactUsHelper;->a(Landroid/content/Context;)Z

    move-result p2

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return-void

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Landroid/view/Menu;)V
    .locals 2

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 84
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 40
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    const v0, 0x7f1305dd

    .line 41
    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->a(Landroid/view/Menu;I)V

    return-void
.end method

.method public a(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    const-string v0, "menu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inflater"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->c:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->getUserVisibleHint()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 32
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->b:Ljava/util/ArrayList;

    check-cast v0, Ljava/lang/Iterable;

    .line 82
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 33
    instance-of v2, v1, Lcom/samsung/android/app/music/menu/AddableMenu;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/samsung/android/app/music/menu/AddableMenu;

    invoke-interface {v1, p1, p2}, Lcom/samsung/android/app/music/menu/AddableMenu;->b(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    goto :goto_0

    .line 36
    :cond_2
    iget v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->d:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public a(Landroid/view/MenuItem;)Z
    .locals 3

    const-string v0, "item"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "SpotifyMenuGroup"

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOptionsItemSelected() - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;

    .line 48
    invoke-interface {v1, p1}, Lcom/samsung/android/app/musiclibrary/ui/menu/IMusicMenu;->a(Landroid/view/MenuItem;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 53
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const v0, 0x7f1305dd

    if-eq p1, v0, :cond_2

    goto :goto_0

    .line 55
    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/music/regional/spotify/tab/menu/SpotifyMenuGroup;->a()V

    const/4 v1, 0x1

    :goto_0
    return v1
.end method
