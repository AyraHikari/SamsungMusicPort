.class public Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;
.super Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SmallScreenGridItemDecorator"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Integer;
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f100365

    .line 27
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Ljava/lang/Integer;
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;->a:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f100364

    .line 36
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$SmallScreenGridItemDecorator;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Integer;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->c()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Ljava/lang/Integer;
    .locals 1

    .line 15
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->d()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
