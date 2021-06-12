.class Lcom/samsung/android/app/music/util/UiUtils$2$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/util/UiUtils$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/util/UiUtils$2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/util/UiUtils$2;)V
    .locals 0

    .line 527
    iput-object p1, p0, Lcom/samsung/android/app/music/util/UiUtils$2$1;->a:Lcom/samsung/android/app/music/util/UiUtils$2;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 537
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UiUtils$2$1;->a:Lcom/samsung/android/app/music/util/UiUtils$2;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/util/UiUtils$2;->b:Z

    if-nez p1, :cond_0

    .line 538
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UiUtils$2$1;->a:Lcom/samsung/android/app/music/util/UiUtils$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/util/UiUtils$2;->a:Landroid/view/View;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 530
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UiUtils$2$1;->a:Lcom/samsung/android/app/music/util/UiUtils$2;

    iget-boolean p1, p1, Lcom/samsung/android/app/music/util/UiUtils$2;->b:Z

    if-eqz p1, :cond_0

    .line 531
    iget-object p1, p0, Lcom/samsung/android/app/music/util/UiUtils$2$1;->a:Lcom/samsung/android/app/music/util/UiUtils$2;

    iget-object p1, p1, Lcom/samsung/android/app/music/util/UiUtils$2;->a:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
