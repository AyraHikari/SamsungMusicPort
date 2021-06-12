.class Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/RxConfigurations$3;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/samsung/android/app/music/util/rx/RxConfigurations$3;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/RxConfigurations$3;Landroid/app/Activity;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;->b:Lcom/samsung/android/app/music/util/rx/RxConfigurations$3;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;->a:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    const-string v0, "RxConfigurations"

    const-string v1, "onActivityCreated.onDraw"

    .line 58
    invoke-static {v0, v1}, Lcom/samsung/android/app/music/milk/util/MLog;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1$1;

    invoke-direct {v1, p0, p0}, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1$1;-><init>(Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;Landroid/view/ViewTreeObserver$OnDrawListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
