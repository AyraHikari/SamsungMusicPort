.class final Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Indicator"
.end annotation


# instance fields
.field private a:Z

.field private final b:Landroid/view/View;

.field private final c:Landroid/view/View;


# direct methods
.method public constructor <init>(ZLandroid/view/View;Landroid/view/View;)V
    .locals 1

    const-string v0, "selectedView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "unselectedView"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a:Z

    iput-object p2, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b:Landroid/view/View;

    iput-object p3, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 0

    .line 152
    iput-boolean p1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a:Z

    return-void
.end method

.method public final a()Z
    .locals 1

    .line 152
    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a:Z

    return v0
.end method

.method public final b()Landroid/view/View;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b:Landroid/view/View;

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c:Landroid/view/View;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_2

    instance-of v1, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a:Z

    iget-boolean v3, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a:Z

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b:Landroid/view/View;

    iget-object v3, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b:Landroid/view/View;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c:Landroid/view/View;

    iget-object p1, p1, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c:Landroid/view/View;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b:Landroid/view/View;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c:Landroid/view/View;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Indicator(isSelected="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", selectedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", unselectedView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/samsung/android/app/music/milk/store/setfavorite/view/PageIndicatorView$Indicator;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
