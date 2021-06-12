.class final Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$horizontalHelper$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;-><init>(Landroid/content/Context;Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/support/v7/widget/OrientationHelper;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$horizontalHelper$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/support/v7/widget/OrientationHelper;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$horizontalHelper$2;->this$0:Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;

    invoke-static {v0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;->a(Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper;)Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/widget/OrientationHelper;->createHorizontalHelper(Landroid/support/v7/widget/RecyclerView$LayoutManager;)Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lcom/samsung/android/app/music/player/fullplayer/albumview/layoutmanager/CyclePagerSnapHelper$horizontalHelper$2;->invoke()Landroid/support/v7/widget/OrientationHelper;

    move-result-object v0

    return-object v0
.end method
