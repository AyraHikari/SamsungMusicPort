.class Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;->updatePlayState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

.field final synthetic val$isPlaying:Z

.field final synthetic val$lt:Lcom/airbnb/lottie/LottieAnimationView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;Lcom/airbnb/lottie/LottieAnimationView;Z)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController;

    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;->val$lt:Lcom/airbnb/lottie/LottieAnimationView;

    iput-boolean p3, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;->val$isPlaying:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 171
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;->val$lt:Lcom/airbnb/lottie/LottieAnimationView;

    iget-boolean v0, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;->val$isPlaying:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 172
    iget-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/player/common/PlayController$3;->val$lt:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/LottieAnimationView;->b(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
