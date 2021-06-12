.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ControlViewType"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

.field private final b:[I


# direct methods
.method public varargs constructor <init>(Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;[I)V
    .locals 1

    const-string v0, "controller"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewTypes"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;->a:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;->b:[I

    return-void
.end method


# virtual methods
.method public final a()Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;->a:Lcom/samsung/android/app/musiclibrary/ui/player/PlayerUiManager$PlayerUi;

    return-object v0
.end method

.method public final b()[I
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController$ControlViewType;->b:[I

    return-object v0
.end method
