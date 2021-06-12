.class final Lcom/samsung/android/app/music/player/SlidePlayer$createFullPlayerSceneFactory$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/player/SlidePlayer;->b(Landroid/support/v7/app/AppCompatActivity;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/player/SlidePlayer;

.field final synthetic b:Landroid/support/v7/app/AppCompatActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/player/SlidePlayer;Landroid/support/v7/app/AppCompatActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createFullPlayerSceneFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    iput-object p2, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createFullPlayerSceneFactory$1;->b:Landroid/support/v7/app/AppCompatActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;
    .locals 0

    .line 101
    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/player/SlidePlayer$createFullPlayerSceneFactory$1;->b(Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;

    return-object p1
.end method

.method public final b(Landroid/view/ViewGroup;)Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;
    .locals 2

    .line 399
    new-instance p1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;

    iget-object v0, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createFullPlayerSceneFactory$1;->b:Landroid/support/v7/app/AppCompatActivity;

    iget-object v1, p0, Lcom/samsung/android/app/music/player/SlidePlayer$createFullPlayerSceneFactory$1;->a:Lcom/samsung/android/app/music/player/SlidePlayer;

    invoke-static {v1}, Lcom/samsung/android/app/music/player/SlidePlayer;->d(Lcom/samsung/android/app/music/player/SlidePlayer;)Lcom/samsung/android/app/music/player/SlidePlayer$fullPlayerFactory$1;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerFactory;

    invoke-direct {p1, v0, v1}, Lcom/samsung/android/app/music/player/fullplayer/FullPlayerViScene;-><init>(Landroid/support/v7/app/AppCompatActivity;Lcom/samsung/android/app/music/player/fullplayer/FullPlayerFactory;)V

    return-object p1
.end method
