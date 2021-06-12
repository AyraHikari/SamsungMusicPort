.class Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewTreeObserver$OnDrawListener;

.field final synthetic b:Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1$1;->b:Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;

    iput-object p2, p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1$1;->a:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1$1;->b:Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;

    iget-object v0, v0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/util/rx/RxConfigurations$3$1$1;->a:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 66
    invoke-static {}, Lcom/samsung/android/app/music/util/rx/MusicSchedulers;->d()V

    return-void
.end method
