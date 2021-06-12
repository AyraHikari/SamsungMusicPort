.class final Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;
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
    name = "SlideToFullPlayerTransitionFactory"
.end annotation


# instance fields
.field private final a:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method public constructor <init>(Landroid/support/v7/app/AppCompatActivity;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;->a:Landroid/support/v7/app/AppCompatActivity;

    return-void
.end method


# virtual methods
.method public a()Landroid/transition/Transition;
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;->a:Landroid/support/v7/app/AppCompatActivity;

    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/music/util/TransitionUtils;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 407
    sget-object v0, Lcom/samsung/android/app/music/player/SlidePlayer;->b:Lcom/samsung/android/app/music/player/SlidePlayer$Companion;

    .line 698
    invoke-static {}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/util/LogExtensionKt;->a()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "SMUSIC-SlidePlayer"

    const-string v1, "Player transition enabled : false"

    .line 407
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 411
    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$SlideToFullPlayerTransitionFactory;->a:Landroid/support/v7/app/AppCompatActivity;

    invoke-virtual {v0}, Landroid/support/v7/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1005ae

    .line 412
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const v2, 0x7f100692

    .line 413
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const/4 v2, 0x1

    .line 415
    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/music/util/TransitionUtils;->a(IIZ)Landroid/transition/TransitionSet;

    move-result-object v0

    check-cast v0, Landroid/transition/Transition;

    return-object v0
.end method
