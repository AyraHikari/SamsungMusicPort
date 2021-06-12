.class Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)V
    .locals 2
    .param p1    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    sget-object p1, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->FULL_PLAYER:Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/deeplink/DeepLinkConstant$TargetType;->getString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 120
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.sec.android.app.music.intent.action.LAUNCH_MUSIC"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.sec.android.app.music"

    .line 121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "launchMusicPlayer"

    const/4 v1, 0x1

    .line 122
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 123
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask$1;->a:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedServiceTask;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
