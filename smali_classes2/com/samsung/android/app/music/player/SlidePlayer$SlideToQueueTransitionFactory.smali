.class final Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$TransitionFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SlideToQueueTransitionFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Landroid/transition/Transition;
    .locals 1

    .line 437
    new-instance v0, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToQueueTransitionFactory$create$1;-><init>()V

    check-cast v0, Landroid/transition/Transition;

    return-object v0
.end method
