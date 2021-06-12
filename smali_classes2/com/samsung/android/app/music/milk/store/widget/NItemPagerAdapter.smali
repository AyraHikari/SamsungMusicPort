.class public abstract Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;
    }
.end annotation


# instance fields
.field private a:I

.field private b:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;


# virtual methods
.method public a(Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;)V
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->b:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    if-eqz v0, :cond_1

    .line 27
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->b:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    .line 28
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->b:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    instance-of p1, p1, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    if-eqz p1, :cond_0

    .line 29
    iget-object p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->b:Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter$ILayoutManager;

    check-cast p1, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;

    invoke-virtual {p1}, Lcom/samsung/android/app/music/milk/store/widget/BaseLayoutManager;->a()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->a:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 31
    iput p1, p0, Lcom/samsung/android/app/music/milk/store/widget/NItemPagerAdapter;->a:I

    :goto_0
    return-void

    .line 24
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Wrong constructor usage !!"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
