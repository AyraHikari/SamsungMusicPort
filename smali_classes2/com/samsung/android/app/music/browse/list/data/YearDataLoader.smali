.class public Lcom/samsung/android/app/music/browse/list/data/YearDataLoader;
.super Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$YearDataSource;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader<",
        "Lcom/samsung/android/app/music/model/base/YearBaseModel;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .line 19
    new-instance v0, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$1;

    invoke-direct {v0}, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$1;-><init>()V

    new-instance v1, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$YearDataSource;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$YearDataSource;-><init>(Lcom/samsung/android/app/music/browse/list/data/YearDataLoader$1;)V

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/music/browse/list/data/BrowseDataLoader;-><init>(Landroid/content/Context;Lcom/samsung/android/app/music/browse/list/data/BrowseCursorFactory;Lcom/samsung/android/app/music/browse/list/data/PageDataSource;)V

    .line 25
    invoke-virtual {p0}, Lcom/samsung/android/app/music/browse/list/data/YearDataLoader;->a()Ljava/lang/String;

    move-result-object p1

    const-string v0, "YearDataLoader. loader created."

    invoke-static {p1, v0}, Lcom/samsung/android/app/music/milk/util/MLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
