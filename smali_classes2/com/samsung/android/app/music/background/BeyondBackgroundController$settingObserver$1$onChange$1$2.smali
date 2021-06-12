.class final Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1$2;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 771
    iget-object v0, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1$2;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {v0}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->e(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1$2;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1$onChange$1;->this$0:Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;

    iget-object v1, v1, Lcom/samsung/android/app/music/background/BeyondBackgroundController$settingObserver$1;->a:Lcom/samsung/android/app/music/background/BeyondBackgroundController;

    invoke-static {v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundController;->c(Lcom/samsung/android/app/music/background/BeyondBackgroundController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/music/background/BeyondBackgroundAnimationHelper;->a(Z)V

    return-void
.end method
