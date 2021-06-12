.class public Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;
.source "SourceFile"


# static fields
.field private static final PATH_DIVIDER:Ljava/lang/String; = "/"


# instance fields
.field private final mKeyColumnName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;->mKeyColumnName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getMediaId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 2

    .line 20
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;->mKeyColumnName:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "_id"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;->mKeyColumnName:Ljava/lang/String;

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 22
    :goto_0
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 23
    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;->getParentId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/musiclibrary/core/service/browser/BrowsableMediaItem;->getParentId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_1
    return-object p1
.end method
