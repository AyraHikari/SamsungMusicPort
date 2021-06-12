.class public Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;
.super Landroid/support/v4/content/CursorLoader;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;
    }
.end annotation


# instance fields
.field private a:Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1}, Landroid/support/v4/content/CursorLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->a:Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .annotation build Landroid/support/annotation/MainThread;
    .end annotation

    .line 51
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->a:Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;

    if-eqz v0, :cond_0

    .line 52
    iget-object v0, p0, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->a:Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader$OnLoadErrorListener;->a(Landroid/support/v4/content/Loader;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public deliverResult(Landroid/database/Cursor;)V
    .locals 0

    .line 30
    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v4/content/CursorLoader;->deliverResult(Landroid/database/Cursor;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 32
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public bridge synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .line 10
    check-cast p1, Landroid/database/Cursor;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/music/browse/list/data/BrowseCursorLoader;->deliverResult(Landroid/database/Cursor;)V

    return-void
.end method
