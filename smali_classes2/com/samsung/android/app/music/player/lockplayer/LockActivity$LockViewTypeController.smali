.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/Releasable;
.implements Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "LockViewTypeController"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;,
        Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$Companion;
    }
.end annotation


# static fields
.field public static final a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$Companion;


# instance fields
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;",
            ">;"
        }
    .end annotation
.end field

.field private d:I

.field private final e:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;)V
    .locals 4

    const-string v0, "uiManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 419
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    .line 421
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->b:Ljava/util/List;

    .line 422
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->c:Ljava/util/List;

    .line 429
    iget-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    return-void
.end method

.method private final b(I)V
    .locals 0

    .line 425
    iput p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    .line 423
    iget v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 4

    .line 451
    iget v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->d:I

    if-ne v0, p1, :cond_1

    .line 452
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$Companion;

    .line 561
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-LockViewTypeController"

    .line 452
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "changeToViewType is  already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 455
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$Companion;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->c:Ljava/util/List;

    check-cast v0, Ljava/lang/Iterable;

    .line 592
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;

    .line 456
    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;->b()[I

    move-result-object v2

    invoke-static {v2, p1}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 457
    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;->a()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    goto :goto_1

    .line 459
    :cond_2
    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;->a()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->b(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    goto :goto_1

    .line 462
    :cond_3
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->b(I)V

    return-void
.end method

.method public final varargs a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V
    .locals 3

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 438
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 439
    sget-object p2, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$Companion;

    .line 546
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string p2, "SMUSIC-LockViewTypeController"

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already registered"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    .line 442
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->c:Ljava/util/List;

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;

    array-length v2, p2

    invoke-static {p2, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;-><init>(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->d:I

    invoke-static {p2, v0}, Lkotlin/collections/ArraysKt;->a([II)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 444
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p2, p1, v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;ZILjava/lang/Object;)V

    goto :goto_1

    .line 446
    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->e:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;

    invoke-virtual {p2, p1, v0}, Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager;->a(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;Z)V

    :goto_1
    return-void
.end method

.method public release()V
    .locals 1

    .line 433
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 434
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
