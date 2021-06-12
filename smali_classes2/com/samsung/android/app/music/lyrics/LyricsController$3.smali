.class Lcom/samsung/android/app/music/lyrics/LyricsController$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/app/musiclibrary/core/meta/lyric/view/binder/LyricsTextSizeBinder$OnTextMagnificationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/lyrics/LyricsController;->initializeTextSizeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/music/lyrics/LyricsController;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/music/lyrics/LyricsController;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$3;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTextMagnificationChanged(ZII)V
    .locals 1

    if-eqz p1, :cond_0

    packed-switch p3, :pswitch_data_0

    return-void

    :pswitch_0
    const-string p1, "fullplayer_lyrics_3x"

    goto :goto_0

    :pswitch_1
    const-string p1, "fullplayer_lyrics_2x"

    goto :goto_0

    :pswitch_2
    const-string p1, "fullplayer_lyrics_1x"

    .line 212
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 213
    iget-object p2, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$3;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController;

    .line 214
    invoke-static {p2}, Lcom/samsung/android/app/music/lyrics/LyricsController;->access$200(Lcom/samsung/android/app/music/lyrics/LyricsController;)Landroid/content/Context;

    move-result-object p2

    const-string p3, "general_click_event"

    const-string v0, "click_event"

    invoke-static {p2, p3, v0, p1}, Lcom/samsung/android/app/music/player/logger/googlefirebase/PlayerFireBase;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
