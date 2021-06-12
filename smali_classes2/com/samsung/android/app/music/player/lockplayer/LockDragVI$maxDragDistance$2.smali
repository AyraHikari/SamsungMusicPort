.class final Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$maxDragDistance$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;-><init>(Landroid/support/v4/app/FragmentActivity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$maxDragDistance$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()F
    .locals 2

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$maxDragDistance$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->b(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "rootView.resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$maxDragDistance$2;->this$0:Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;->c(Lcom/samsung/android/app/music/player/lockplayer/LockDragVI;)Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-static {v1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/app/ActivityExtensionKt;->b(Landroid/app/Activity;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    goto :goto_0

    :cond_0
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    :goto_0
    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, v1

    return v0
.end method

.method public synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/lockplayer/LockDragVI$maxDragDistance$2;->invoke()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method
