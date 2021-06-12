.class Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FlingRunnable"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

.field private final b:Landroid/support/design/widget/CoordinatorLayout;

.field private final c:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/design/widget/CoordinatorLayout;",
            "TV;)V"
        }
    .end annotation

    .line 327
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 328
    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    .line 329
    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 334
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->c:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b:Landroid/support/v4/widget/ScrollerCompat;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v0, v0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v0}, Landroid/support/v4/widget/ScrollerCompat;->computeScrollOffset()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->c:Landroid/view/View;

    iget-object v3, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v3, v3, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b:Landroid/support/v4/widget/ScrollerCompat;

    invoke-virtual {v3}, Landroid/support/v4/widget/ScrollerCompat;->getCurrY()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->b(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;I)I

    .line 342
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->c:Landroid/view/View;

    invoke-static {v0, p0}, Landroid/support/v4/view/ViewCompat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 344
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->a:Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->b:Landroid/support/design/widget/CoordinatorLayout;

    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior$FlingRunnable;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/music/milk/store/widget/behavior/HeaderBehavior;->a(Landroid/support/design/widget/CoordinatorLayout;Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method
