.class public final Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;,
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;,
        Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;


# instance fields
.field private final b:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

.field private final c:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

.field private final d:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

.field private final e:Landroid/app/Activity;

.field private final f:Landroid/view/View;

.field private final g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V
    .locals 3

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "rootView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->e:Landroid/app/Activity;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->f:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->e:Landroid/app/Activity;

    instance-of p2, p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    const/4 p3, 0x0

    if-nez p2, :cond_0

    move-object p1, p3

    :cond_0
    check-cast p1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->b:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    .line 31
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->f:Landroid/view/View;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->c:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    .line 33
    new-instance p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->e:Landroid/app/Activity;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->f:Landroid/view/View;

    invoke-direct {p1, p2, v0}, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    .line 35
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->g:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-object v0, p1

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p2, v0, v1, v2, p3}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    .line 34
    iput-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->d:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    .line 39
    sget-object p1, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->a:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$Companion;

    .line 341
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "SMUSIC-MiniPlayerLayoutBuilder"

    const-string p2, "MiniPlayerLayoutBuilder()"

    .line 39
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->b:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    if-eqz p1, :cond_2

    .line 42
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->c:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 43
    iget-object p2, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->d:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    check-cast p2, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {p1, p2}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->addOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->b:Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;

    if-eqz v0, :cond_0

    .line 49
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->c:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$MultiWindowLayoutBuilder;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    .line 50
    iget-object v1, p0, Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder;->d:Lcom/samsung/android/app/music/player/miniplayer/MiniPlayerLayoutBuilder$LandscapeLayoutBuilder;

    check-cast v1, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager;->removeOnMultiWindowModeListener(Lcom/samsung/android/app/musiclibrary/ui/MultiWindowManager$OnMultiWindowModeChangedListener;)V

    :cond_0
    return-void
.end method
