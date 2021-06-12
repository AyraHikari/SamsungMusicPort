.class public final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/OnBackPressedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 5

    .line 86
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->a(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$LockViewTypeController;->a(I)V

    return v2

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;->a:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-string v1, "window"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2$onBackPressed$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2$onBackPressed$2;-><init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity$onCreate$2;)V

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v1, v3, v4}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2
.end method
