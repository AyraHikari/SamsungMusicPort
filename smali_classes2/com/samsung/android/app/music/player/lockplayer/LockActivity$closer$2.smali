.class final Lcom/samsung/android/app/music/player/lockplayer/LockActivity$closer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/samsung/android/app/music/player/lockplayer/LockCloser;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$closer$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/samsung/android/app/music/player/lockplayer/LockCloser;
    .locals 3

    .line 66
    new-instance v0, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$closer$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    iget-object v2, p0, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$closer$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockActivity;

    invoke-static {v2}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity;->c(Lcom/samsung/android/app/music/player/lockplayer/LockActivity;)Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/music/player/lockplayer/LockCloser;-><init>(Landroid/support/v4/app/FragmentActivity;Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockActivity$closer$2;->invoke()Lcom/samsung/android/app/music/player/lockplayer/LockCloser;

    move-result-object v0

    return-object v0
.end method
