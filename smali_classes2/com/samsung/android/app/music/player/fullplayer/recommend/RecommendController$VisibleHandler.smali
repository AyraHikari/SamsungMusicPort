.class Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VisibleHandler"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;)V
    .locals 1

    .line 207
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 208
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public dispatchMessage(Landroid/os/Message;)V
    .locals 0

    .line 213
    iget-object p1, p0, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController$VisibleHandler;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;

    if-eqz p1, :cond_0

    .line 215
    invoke-virtual {p1}, Lcom/samsung/android/app/music/player/fullplayer/recommend/RecommendController;->a()V

    :cond_0
    return-void
.end method
