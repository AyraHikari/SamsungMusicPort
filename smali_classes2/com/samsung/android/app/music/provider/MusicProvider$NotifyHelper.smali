.class final Lcom/samsung/android/app/music/provider/MusicProvider$NotifyHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/music/provider/MusicProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NotifyHelper"
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Landroid/net/Uri;)V
    .locals 2

    .line 2875
    invoke-static {p1}, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents;->b(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2876
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicProvider;->a()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyOnUpdate - disabled Uri "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/ui/debug/iLog;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2880
    :cond_0
    invoke-static {}, Lcom/samsung/android/app/music/provider/MusicProvider;->b()Landroid/content/UriMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 2884
    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/musiclibrary/ui/provider/MediaContents$Playlists$Meta;->a:Landroid/net/Uri;

    .line 2885
    invoke-static {p0, p1}, Lcom/samsung/android/app/musiclibrary/kotlin/extension/content/ContextExtensionKt;->a(Landroid/content/Context;Landroid/net/Uri;)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2775
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
