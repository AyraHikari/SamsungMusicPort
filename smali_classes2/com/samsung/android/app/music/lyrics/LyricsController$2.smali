.class Lcom/samsung/android/app/music/lyrics/LyricsController$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/app/music/lyrics/LyricsController;->setMediaChangeObservable(Lcom/samsung/android/app/musiclibrary/core/service/mediacenter/MediaChangeObservable;)V
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

    .line 160
    iput-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$2;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 163
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$2;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsController;->access$100(Lcom/samsung/android/app/music/lyrics/LyricsController;)Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 164
    iget-object p1, p0, Lcom/samsung/android/app/music/lyrics/LyricsController$2;->this$0:Lcom/samsung/android/app/music/lyrics/LyricsController;

    invoke-static {p1}, Lcom/samsung/android/app/music/lyrics/LyricsController;->access$100(Lcom/samsung/android/app/music/lyrics/LyricsController;)Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/samsung/android/app/music/lyrics/LyricsController$LyricConditionChangeListener;->onLyricConditionChanged(Z)V

    goto :goto_0

    :cond_0
    const-string p1, "LyricsController"

    const-string v0, "LyricConditionChangeListener is null"

    .line 166
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
