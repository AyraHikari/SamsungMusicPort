.class public Landroid/support/v7/widget/SeslCursorIndexer;
.super Landroid/support/v7/widget/SeslAbsIndexer;
.source "SourceFile"


# static fields
.field public static final EXTRA_INDEX_COUNTS:Ljava/lang/String; = "indexscroll_index_counts"

.field public static final EXTRA_INDEX_TITLES:Ljava/lang/String; = "indexscroll_index_titles"


# instance fields
.field private final DEBUG:Z

.field private final TAG:Ljava/lang/String;

.field protected mColumnIndex:I

.field protected mCursor:Landroid/database/Cursor;

.field protected mSavedCursorPos:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 2

    .line 71
    invoke-direct {p0, p3}, Landroid/support/v7/widget/SeslAbsIndexer;-><init>(Ljava/lang/CharSequence;)V

    const-string p3, "SeslCursorIndexer"

    .line 29
    iput-object p3, p0, Landroid/support/v7/widget/SeslCursorIndexer;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Landroid/support/v7/widget/SeslCursorIndexer;->DEBUG:Z

    .line 72
    iput-object p1, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 73
    iput p2, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mColumnIndex:I

    const-string p1, "SeslCursorIndexer"

    const-string p3, "SeslCursorIndexer constructor"

    .line 75
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    .line 78
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "here"

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string p3, "SeslCursorIndexer"

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeslCursorIndexer() called with "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;I[Ljava/lang/String;I)V
    .locals 1

    .line 96
    invoke-direct {p0, p3, p4}, Landroid/support/v7/widget/SeslAbsIndexer;-><init>([Ljava/lang/String;I)V

    const-string p3, "SeslCursorIndexer"

    .line 29
    iput-object p3, p0, Landroid/support/v7/widget/SeslCursorIndexer;->TAG:Ljava/lang/String;

    const/4 p3, 0x1

    .line 31
    iput-boolean p3, p0, Landroid/support/v7/widget/SeslCursorIndexer;->DEBUG:Z

    .line 97
    iput-object p1, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    .line 98
    iput p2, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mColumnIndex:I

    const-string p1, "SeslCursorIndexer"

    const-string p3, "SeslCursorIndexer constructor"

    .line 100
    invoke-static {p1, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez p2, :cond_0

    .line 103
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p3, "here"

    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    const-string p3, "SeslCursorIndexer"

    .line 105
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SeslCursorIndexer() called with "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method protected getBundle()Landroid/os/Bundle;
    .locals 2

    const-string v0, "SeslCursorIndexer"

    const-string v1, "SemCursorIndexer getBundle : Bundle was used by Indexer"

    .line 158
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getItemAt(I)Ljava/lang/String;
    .locals 4

    .line 123
    iget-object v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string p1, "SeslCursorIndexer"

    const-string v0, "SeslCursorIndexer getItemCount : mCursor is closed."

    .line 124
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 126
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mColumnIndex:I

    if-gez v0, :cond_1

    const-string v0, "SeslCursorIndexer"

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getItemAt() mColumnIndex : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mColumnIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 134
    :try_start_0
    iget-object p1, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mColumnIndex:I

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method protected getItemCount()I
    .locals 2

    .line 146
    iget-object v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SeslCursorIndexer"

    const-string v1, "SeslCursorIndexer getItemCount : mCursor is closed."

    .line 147
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    return v0
.end method

.method protected isDataToBeIndexedAvailable()Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslCursorIndexer;->getItemCount()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method onBeginTransaction()V
    .locals 3

    .line 167
    iget-object v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mSavedCursorPos:I

    const-string v0, "SeslCursorIndexer"

    .line 169
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslCursorIndexer.onBeginTransaction() : Current cursor pos to save is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method onEndTransaction()V
    .locals 3

    const-string v0, "SeslCursorIndexer"

    .line 180
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SeslCursorIndexer.onEndTransaction() : Saved cursor pos to restore  is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mSavedCursorPos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mCursor:Landroid/database/Cursor;

    iget v1, p0, Landroid/support/v7/widget/SeslCursorIndexer;->mSavedCursorPos:I

    invoke-interface {v0, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    return-void
.end method

.method public setFavoriteItemsCount(I)V
    .locals 0

    .line 200
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslCursorIndexer;->setFavoriteItem(I)V

    return-void
.end method

.method public setGroupItemsCount(I)V
    .locals 0

    .line 209
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslCursorIndexer;->setGroupItem(I)V

    return-void
.end method

.method public setMiscItemsCount(I)V
    .locals 0

    .line 218
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslCursorIndexer;->setDigitItem(I)V

    return-void
.end method

.method public setProfileItemsCount(I)V
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslCursorIndexer;->setProfileItem(I)V

    return-void
.end method
