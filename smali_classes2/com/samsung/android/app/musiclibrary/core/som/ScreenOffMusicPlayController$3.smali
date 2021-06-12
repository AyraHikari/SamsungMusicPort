.class Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->updatePlayState(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController$3;->this$0:Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;

    invoke-static {v0}, Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;->access$500(Lcom/samsung/android/app/musiclibrary/core/som/ScreenOffMusicPlayController;)Lcom/airbnb/lottie/LottieAnimationView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->b()V

    return-void
.end method
