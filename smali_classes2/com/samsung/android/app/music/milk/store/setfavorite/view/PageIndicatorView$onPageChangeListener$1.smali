.class public final Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 5

    const-string v0, "Ui"

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetFavorite_PageIndicatorView | onPageSelected() - position: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v0}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 125
    iget-object v2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "indicators[i]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;

    const/4 v3, 0x1

    if-ne v1, p1, :cond_0

    .line 127
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v4, v2, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->a(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V

    goto :goto_1

    .line 128
    :cond_0
    invoke-virtual {v2}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$onPageChangeListener$1;->a:Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;

    invoke-static {v4, v2, v3}, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;->b(Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;Z)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
