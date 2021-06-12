.class public abstract Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryAdapter;


# instance fields
.field protected final mCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-void
.end method


# virtual methods
.method public bindView(Landroid/content/Context;ILandroid/view/View;)V
    .locals 0

    .line 90
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->checkUpdateCursor(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 91
    iget-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->bindView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method protected bindView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method protected checkUpdateCursor(I)Z
    .locals 2

    .line 99
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    return v1

    :cond_0
    return v1
.end method

.method public getCount()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public updateMarkerViews(Landroid/content/Context;I[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V
    .locals 7

    .line 73
    invoke-virtual {p0, p2}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->checkUpdateCursor(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->mCursor:Landroid/database/Cursor;

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryCursorAdapter;->updateMarkerViews(Landroid/content/Context;Landroid/database/Cursor;[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V

    :cond_0
    return-void
.end method

.method protected abstract updateMarkerViews(Landroid/content/Context;Landroid/database/Cursor;[Lcom/samsung/android/app/musiclibrary/core/glwidget/GLGalleryView$MarkerViewInfo;IFF)V
.end method
