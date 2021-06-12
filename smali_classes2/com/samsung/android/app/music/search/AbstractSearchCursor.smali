.class public abstract Lcom/samsung/android/app/music/search/AbstractSearchCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;,
        Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;
    }
.end annotation


# instance fields
.field protected a:Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

.field protected b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

.field protected c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->c:Z

    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 53
    instance-of v0, p1, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    if-eqz v0, :cond_0

    .line 54
    check-cast p1, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 55
    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    if-eqz v0, :cond_1

    .line 56
    check-cast p1, Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->a:Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    return-void
.end method

.method public a(Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;)V
    .locals 0

    .line 22
    iput-object p1, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 26
    iput-boolean p1, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->c:Z

    return-void
.end method

.method protected c(I)I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->a:Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    if-eqz v0, :cond_0

    add-int/lit8 p1, p1, -0x1

    :cond_0
    return p1
.end method

.method protected abstract c()Ljava/lang/Object;
.end method

.method protected e()Z
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->b:Lcom/samsung/android/app/music/search/AbstractSearchCursor$ViewMoreItem;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->c:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected f()I
    .locals 2

    .line 35
    iget-object v0, p0, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->a:Lcom/samsung/android/app/music/search/AbstractSearchCursor$TitleItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 38
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/music/search/AbstractSearchCursor;->e()Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    return v0
.end method
