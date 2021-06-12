.class Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;Lcom/samsung/android/app/music/widget/transition/SlideGestureController$SlideState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)V
    .locals 0

    .line 915
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$3;->a:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 918
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$3;->a:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;I)V

    return-void
.end method
