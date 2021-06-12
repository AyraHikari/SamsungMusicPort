.class public Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$VideoGridItemDecorator;
.super Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoGridItemDecorator"
.end annotation


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Integer;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->a()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic b()Ljava/lang/Integer;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->b()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()Ljava/lang/Integer;
    .locals 1

    .line 40
    invoke-super {p0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$GridItemDecoratorAdapter;->c()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 1

    .line 49
    iget-boolean v0, p0, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$VideoGridItemDecorator;->a:Z

    if-eqz v0, :cond_0

    const v0, 0x7f10036d

    .line 50
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$VideoGridItemDecorator;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f100166

    .line 52
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/music/browse/list/common/GridItemDecoratorImpls$VideoGridItemDecorator;->a(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
