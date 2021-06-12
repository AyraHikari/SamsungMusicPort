.class Lcom/mapps/android/view/AdView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mapps/android/view/AdView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mapps/android/view/AdView;


# direct methods
.method constructor <init>(Lcom/mapps/android/view/AdView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    .line 2360
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 2363
    iget-object p1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$31(Lcom/mapps/android/view/AdView;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2364
    iget-object p1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$20(Lcom/mapps/android/view/AdView;)Landroid/widget/RelativeLayout;

    move-result-object p1

    iget-object v0, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {v0}, Lcom/mapps/android/view/AdView;->access$32(Lcom/mapps/android/view/AdView;)Ljava/lang/Runnable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 2366
    :cond_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    invoke-static {p1}, Lcom/mapps/android/view/AdView;->access$33(Lcom/mapps/android/view/AdView;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2367
    iget-object p1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$34(Lcom/mapps/android/view/AdView;Z)V

    goto :goto_0

    .line 2369
    :cond_1
    iget-object p1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/mapps/android/view/AdView;->access$34(Lcom/mapps/android/view/AdView;Z)V

    .line 2372
    :goto_0
    iget-object p1, p0, Lcom/mapps/android/view/AdView$9;->this$0:Lcom/mapps/android/view/AdView;

    invoke-virtual {p1}, Lcom/mapps/android/view/AdView;->SetRotateTimer()V

    :goto_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
