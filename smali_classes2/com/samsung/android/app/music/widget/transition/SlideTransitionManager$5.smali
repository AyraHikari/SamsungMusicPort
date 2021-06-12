.class Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Landroid/view/ViewGroup;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$SceneFactory$Scene;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Landroid/view/ViewGroup;

.field final synthetic c:Landroid/view/ViewGroup;

.field final synthetic d:J

.field final synthetic e:Ljava/lang/Runnable;

.field final synthetic f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/view/ViewGroup;JLjava/lang/Runnable;)V
    .locals 0

    .line 1041
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->a:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->b:Landroid/view/ViewGroup;

    iput-object p4, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->c:Landroid/view/ViewGroup;

    iput-wide p5, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->d:J

    iput-object p7, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->e:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1044
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->b(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)V

    .line 1045
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1047
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->a()Ljava/util/List;

    move-result-object v0

    .line 1048
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v1}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->b()Ljava/util/List;

    move-result-object v1

    .line 1050
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Transition view Ids : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    iget-object v5, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->a:Landroid/view/ViewGroup;

    .line 1051
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Landroid/content/res/Resources;Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", names : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1050
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1055
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->b:Landroid/view/ViewGroup;

    invoke-static {v2, v0, v1, v3, v4}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 1057
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v3}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->c(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x4

    invoke-static {v2, v3, v4}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Ljava/util/List;I)V

    .line 1059
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1060
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    iget-object v4, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->a:Landroid/view/ViewGroup;

    invoke-static {v3, v0, v1, v2, v4}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->a(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;Ljava/util/List;Ljava/util/List;Ljava/util/List;Landroid/view/ViewGroup;)V

    .line 1062
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")Actual transition views : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->a:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->a(Landroid/view/ViewGroup;Z)V

    .line 1067
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->d(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->c:Landroid/view/ViewGroup;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/widget/transition/IFractionTransition;->a(Landroid/view/ViewGroup;)V

    .line 1069
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Build transition takes "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1070
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->d:J

    sub-long/2addr v3, v5

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "ms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1074
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->e:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 1075
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->e(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Lcom/samsung/android/app/music/widget/transition/SlideGestureController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/music/widget/transition/SlideGestureController;->a()V

    .line 1077
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1078
    invoke-static {}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->f()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Background animation size : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager$5;->f:Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;

    invoke-static {v2}, Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;->f(Lcom/samsung/android/app/music/widget/transition/SlideTransitionManager;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
