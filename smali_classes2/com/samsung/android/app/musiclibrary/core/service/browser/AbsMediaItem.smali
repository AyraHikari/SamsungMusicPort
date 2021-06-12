.class public abstract Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final mParentId:Ljava/lang/String;

.field private final mSubTitleColumnName:Ljava/lang/String;

.field private final mTitleColumnName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->mParentId:Ljava/lang/String;

    .line 16
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->mTitleColumnName:Ljava/lang/String;

    .line 17
    iput-object p3, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->mSubTitleColumnName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method abstract getMediaId(Landroid/database/Cursor;)Ljava/lang/String;
.end method

.method public getParentId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method getSubTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->mSubTitleColumnName:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->mSubTitleColumnName:Ljava/lang/String;

    .line 27
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_1

    .line 28
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method getTitle(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;->mTitleColumnName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 22
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method
