.class Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;-><init>(Landroid/content/Context;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;->a:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    const-string v0, "MediaMetaWriter"

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScanCompleted path : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\nUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    iget-object v0, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;->a:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    iget-object v1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;->a:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-static {v1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Landroid/content/Context;Landroid/net/Uri;)V

    .line 113
    iget-object p2, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;->a:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-static {p2, p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->a(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;Ljava/lang/String;)V

    .line 114
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;->a:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 115
    iget-object p1, p0, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$1;->a:Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;

    invoke-static {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;->b(Lcom/samsung/android/app/music/metaedit/MediaMetaWriter;)Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/music/metaedit/MediaMetaWriter$OnCompletedEditingListener;->a()V

    :cond_0
    return-void
.end method
