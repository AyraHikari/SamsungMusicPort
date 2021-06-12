.class public Lcom/samsung/android/app/music/widget/NoItemBubbleView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/widget/NoItemBubbleView$OnLazyInitCompleteListener;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "NoItemBubbleView"


# instance fields
.field private b:Z

.field private c:Lcom/samsung/android/app/music/widget/NoItemBubbleView$OnLazyInitCompleteListener;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:Landroid/view/View;

.field private g:Landroid/view/ViewGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;II)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f0401ac

    .line 33
    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->d:Landroid/view/View;

    .line 34
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->d:Landroid/view/View;

    const v1, 0x7f130481

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->f:Landroid/view/View;

    .line 35
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/samsung/android/app/music/widget/NoItemBubbleView$1;-><init>(Lcom/samsung/android/app/music/widget/NoItemBubbleView;Landroid/app/Activity;II)V

    .line 36
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/NoItemBubbleView;)Lcom/samsung/android/app/music/widget/NoItemBubbleView$OnLazyInitCompleteListener;
    .locals 0

    .line 14
    iget-object p0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->c:Lcom/samsung/android/app/music/widget/NoItemBubbleView$OnLazyInitCompleteListener;

    return-object p0
.end method

.method private a(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->g:Landroid/view/ViewGroup;

    .line 67
    iput-object p2, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->e:Landroid/view/View;

    .line 69
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->e:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 70
    iget-object p1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->g:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->c()V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/NoItemBubbleView;Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a(Landroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/widget/NoItemBubbleView;Z)Z
    .locals 0

    .line 14
    iput-boolean p1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->b:Z

    return p1
.end method

.method private c()V
    .locals 9

    const/4 v0, 0x2

    .line 81
    new-array v1, v0, [I

    .line 82
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->e:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x1

    .line 84
    aget v2, v1, v2

    iget-object v3, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->e:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v2, v3

    .line 85
    iget-object v3, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->f:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v0

    const/4 v4, 0x0

    .line 86
    aget v5, v1, v4

    iget-object v6, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v5, v6

    sub-int/2addr v5, v3

    .line 87
    sget-object v6, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateBubbleView - location[0] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v1, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", mAnchorView.getWidth() / 2 = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->e:Landroid/view/View;

    .line 88
    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    div-int/2addr v8, v0

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", halfArrowWidth = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 87
    invoke-static {v6, v7}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v5, :cond_0

    .line 92
    aget v5, v1, v4

    iget-object v6, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->e:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/2addr v6, v0

    add-int/2addr v5, v6

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->g:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 96
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->f:Landroid/view/View;

    .line 97
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    aget v6, v1, v4

    sub-int v6, v5, v6

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 99
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 100
    iget-object v2, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->f:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 104
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->d:Landroid/view/View;

    const v2, 0x7f1301f7

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 105
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 106
    aget v1, v1, v4

    sub-int v2, v5, v3

    if-lt v1, v2, :cond_1

    .line 108
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    sub-int v4, v1, v5

    add-int/2addr v4, v2

    add-int/2addr v4, v3

    .line 109
    invoke-virtual {v0, v4}, Landroid/view/View;->setMinimumWidth(I)V

    .line 110
    sget-object v0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resize bubble minimum width : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    :cond_1
    sget-object v0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateBubbleView bubbleLeft: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " arrowLeft: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " halfArrowWidth: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 121
    iget-boolean v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->b:Z

    if-nez v0, :cond_0

    .line 122
    new-instance v0, Lcom/samsung/android/app/music/widget/NoItemBubbleView$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/widget/NoItemBubbleView$2;-><init>(Lcom/samsung/android/app/music/widget/NoItemBubbleView;)V

    iput-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->c:Lcom/samsung/android/app/music/widget/NoItemBubbleView$OnLazyInitCompleteListener;

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 131
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->g:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->g:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 59
    sget-object p6, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->a:Ljava/lang/String;

    new-instance p7, Ljava/lang/StringBuilder;

    invoke-direct {p7}, Ljava/lang/StringBuilder;-><init>()V

    const-string p8, "onLayoutChange v "

    invoke-virtual {p7, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " left: "

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " top: "

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " right: "

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " bottom:"

    invoke-virtual {p7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p7, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p6, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    invoke-direct {p0}, Lcom/samsung/android/app/music/widget/NoItemBubbleView;->c()V

    return-void
.end method
