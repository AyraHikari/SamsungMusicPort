.class public Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;
.super Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;
.source "SourceFile"


# instance fields
.field private final b:Lcom/samsung/android/app/music/contents/OnDlnaTabListener;


# direct methods
.method public constructor <init>(Landroid/content/ContentResolver;Lcom/samsung/android/app/music/contents/OnDlnaTabListener;)V
    .locals 6

    .line 14
    sget-object v2, Lcom/samsung/android/app/musiclibrary/core/provider/DlnaStore$Server;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "count(*)"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/musiclibrary/ui/contents/ContentAsyncQueryHandler;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 15
    iput-object p2, p0, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;->b:Lcom/samsung/android/app/music/contents/OnDlnaTabListener;

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0

    .line 20
    iget-object p1, p0, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;->b:Lcom/samsung/android/app/music/contents/OnDlnaTabListener;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;->a:Z

    if-nez p1, :cond_0

    goto :goto_3

    :cond_0
    const/4 p1, 0x0

    if-eqz p3, :cond_1

    .line 30
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 31
    invoke-interface {p3, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    :goto_0
    if-lez p1, :cond_2

    .line 34
    iget-object p1, p0, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;->b:Lcom/samsung/android/app/music/contents/OnDlnaTabListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/contents/OnDlnaTabListener;->a()V

    goto :goto_1

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/music/contents/DlnaTabAsyncUpdater;->b:Lcom/samsung/android/app/music/contents/OnDlnaTabListener;

    invoke-interface {p1}, Lcom/samsung/android/app/music/contents/OnDlnaTabListener;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    if-eqz p3, :cond_3

    .line 40
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-void

    :goto_2
    if-eqz p3, :cond_4

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw p1

    :cond_5
    :goto_3
    if-eqz p3, :cond_6

    .line 23
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    :cond_6
    return-void
.end method
