.class Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->a(Landroid/support/v4/view/ViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->a(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->b()V

    .line 28
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;->a:Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->a(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
