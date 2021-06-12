.class Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$OnPlayRadioResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;

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

    const-string p1, "DeepLink-DeprecatedTask"

    const-string p2, "onFailure"

    .line 182
    invoke-static {p1, p2}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;)V
    .locals 1
    .param p1    # Lcom/samsung/android/app/music/util/player/OnlineRadioPlayUtils$PlayRadioInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const-string p1, "DeepLink-DeprecatedTask"

    const-string v0, "onSuccess"

    .line 176
    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask$2;->a:Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/deeplink/task/DeprecatedTask;->a:Landroid/support/v4/app/FragmentActivity;

    invoke-static {p1}, Lcom/samsung/android/app/music/util/LaunchUtils;->b(Landroid/app/Activity;)V

    return-void
.end method
