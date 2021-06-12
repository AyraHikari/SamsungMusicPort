.class Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/list/local/SearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GlobalLayoutListener"
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/list/local/SearchFragment;

.field private b:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/list/local/SearchFragment;Landroid/view/View;)V
    .locals 0

    .line 1224
    iput-object p1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1225
    iput-object p2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 5

    .line 1230
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->b:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 1233
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1234
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->b:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1235
    iget-object v1, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->b:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v1

    .line 1236
    iget-object v2, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->b:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 1238
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/lit16 v4, v4, -0xc8

    if-ge v3, v4, :cond_1

    .line 1241
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    iget-object v3, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->a:Lcom/samsung/android/app/music/list/local/SearchFragment;

    .line 1242
    invoke-virtual {v3}, Lcom/samsung/android/app/music/list/local/SearchFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1005be

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v1, v3

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v1, v0

    .line 1244
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eq v0, v1, :cond_2

    .line 1245
    iput v1, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1246
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 1249
    :cond_1
    iget v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1250
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1251
    iget-object v0, p0, Lcom/samsung/android/app/music/list/local/SearchFragment$GlobalLayoutListener;->b:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    :goto_0
    return-void
.end method
