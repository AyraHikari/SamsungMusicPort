.class public Lcom/samsung/android/app/musiclibrary/core/service/browser/UriPlayableMediaItem;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;
.source "SourceFile"


# instance fields
.field private final mBaseUri:Landroid/net/Uri;

.field private final mKeyColumnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 0
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 15
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/UriPlayableMediaItem;->mKeyColumnName:Ljava/lang/String;

    .line 17
    iput-object p5, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/UriPlayableMediaItem;->mBaseUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method getMediaId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 22
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/UriPlayableMediaItem;->mKeyColumnName:Ljava/lang/String;

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 23
    iget-object v1, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/UriPlayableMediaItem;->mBaseUri:Landroid/net/Uri;

    if-ltz v0, :cond_0

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-static {v1, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
