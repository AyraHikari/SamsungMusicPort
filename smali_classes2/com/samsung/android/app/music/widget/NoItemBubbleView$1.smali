.class Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/widget/NoItemBubbleView;-><init>(Landroid/app/Activity;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/samsung/android/app/music/widget/NoItemBubbleView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/widget/NoItemBubbleView;Landroid/app/Activity;II)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->d:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    iput-object p2, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->a:Landroid/app/Activity;

    iput p3, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->b:I

    iput p4, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->a:Landroid/app/Activity;

    iget v1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->b:I

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 40
    iget-object v1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->a:Landroid/app/Activity;

    iget v2, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->c:I

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 43
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->d:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    invoke-static {v2, v0, v1}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a(Lcom/samsung/android/app/music/widget/NoItemBubbleView;Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 45
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->d:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a(Lcom/samsung/android/app/music/widget/NoItemBubbleView;Z)Z

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 47
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 48
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->d:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a(Lcom/samsung/android/app/music/widget/NoItemBubbleView;)Lcom/samsung/android/app/music/widget/NoItemBubbleView$OnLazyInitCompleteListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;->d:Lcom/samsung/android/app/music/widget/NoItemBubbleView;

    invoke-static {v0}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a(Lcom/samsung/android/app/music/widget/NoItemBubbleView;)Lcom/samsung/android/app/music/widget/NoItemBubbleView$OnLazyInitCompleteListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/music/widget/NoItemBubbleView$OnLazyInitCompleteListener;->a()V

    :cond_0
    return-void
.end method
