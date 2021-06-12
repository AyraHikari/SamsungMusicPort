.class public abstract Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;


# instance fields
.field private final a:I

.field private b:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p2, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->a:I

    return-void
.end method

.method static synthetic a(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)Landroid/support/v4/view/ViewPager;
    .locals 0

    .line 7
    iget-object p0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->b:Landroid/support/v4/view/ViewPager;

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->a:I

    return v0
.end method

.method public a(Landroid/support/v4/view/ViewPager;)V
    .locals 1

    .line 21
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->b:Landroid/support/v4/view/ViewPager;

    .line 23
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager$1;-><init>(Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
