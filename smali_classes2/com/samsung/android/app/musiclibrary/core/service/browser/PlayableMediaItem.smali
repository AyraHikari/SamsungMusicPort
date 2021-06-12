.class public Lcom/samsung/android/app/musiclibrary/core/service/browser/PlayableMediaItem;
.super Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/musiclibrary/core/service/browser/AbsMediaItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method getMediaId(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "audio_id"

    .line 17
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "_id"

    .line 19
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    :goto_0
    if-ltz v0, :cond_0

    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method
